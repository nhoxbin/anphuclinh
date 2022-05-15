-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 15, 2022 at 02:43 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avitech_apl_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `device` varchar(191) NOT NULL,
  `browser` varchar(191) NOT NULL,
  `ip` varchar(191) NOT NULL,
  `extra` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `user_id`, `device`, `browser`, `ip`, `extra`, `created_at`, `updated_at`) VALUES
(1, 1, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.71', '116.102.45.98', NULL, '2021-10-10 00:33:35', '2021-10-10 00:33:35'),
(2, 2, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.71', '116.102.45.98', NULL, '2021-10-10 01:32:25', '2021-10-10 01:32:25'),
(3, 2, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.71', '116.102.45.98', NULL, '2021-10-10 02:09:29', '2021-10-10 02:09:29'),
(4, 1, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.71', '116.102.45.98', NULL, '2021-10-10 02:10:44', '2021-10-10 02:10:44'),
(5, 2, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.71', '116.102.45.98', NULL, '2021-10-10 02:25:47', '2021-10-10 02:25:47'),
(6, 1, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-18 04:08:53', '2021-10-18 04:08:53'),
(7, 2, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-18 04:15:32', '2021-10-18 04:15:32'),
(8, 1, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-18 04:31:00', '2021-10-18 04:31:00'),
(9, 2, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-18 04:32:44', '2021-10-18 04:32:44'),
(10, 2, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-18 04:49:35', '2021-10-18 04:49:35'),
(11, 1, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-18 04:50:15', '2021-10-18 04:50:15'),
(12, 1, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-19 02:52:54', '2021-10-19 02:52:54'),
(13, 2, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-19 02:53:15', '2021-10-19 02:53:15'),
(14, 1, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-20 02:47:46', '2021-10-20 02:47:46'),
(15, 3, 'WebKit/Windows-10.0', 'Chrome/94.0.4606.81', '115.77.244.182', NULL, '2021-10-20 04:13:22', '2021-10-20 04:13:22'),
(16, 2, 'WebKit/Windows-10.0', 'Chrome/99.0.4844.84', '125.235.238.114', NULL, '2022-04-03 08:22:36', '2022-04-03 08:22:36'),
(17, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '116.109.181.49', NULL, '2022-04-27 15:13:35', '2022-04-27 15:13:35'),
(18, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '116.109.181.49', NULL, '2022-04-27 17:14:54', '2022-04-27 17:14:54'),
(19, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '42.115.132.30', NULL, '2022-04-27 17:19:10', '2022-04-27 17:19:10'),
(20, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-28 03:27:18', '2022-04-28 03:27:18'),
(21, 2, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-28 03:29:12', '2022-04-28 03:29:12'),
(22, 5, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-28 09:42:35', '2022-04-28 09:42:35'),
(23, 5, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-28 09:44:53', '2022-04-28 09:44:53'),
(24, 6, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-28 11:07:12', '2022-04-28 11:07:12'),
(25, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-28 12:52:20', '2022-04-28 12:52:20'),
(26, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-28 12:53:08', '2022-04-28 12:53:08'),
(27, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-29 03:23:12', '2022-04-29 03:23:12'),
(28, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-29 04:18:30', '2022-04-29 04:18:30'),
(29, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-30 09:36:07', '2022-04-30 09:36:07'),
(30, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-04-30 10:00:24', '2022-04-30 10:00:24'),
(31, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-03 11:32:37', '2022-05-03 11:32:37'),
(32, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-03 11:32:59', '2022-05-03 11:32:59'),
(33, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-03 14:12:05', '2022-05-03 14:12:05'),
(34, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-04 16:25:16', '2022-05-04 16:25:16'),
(35, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-04 16:26:42', '2022-05-04 16:26:42'),
(36, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-04 18:30:17', '2022-05-04 18:30:17'),
(37, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-04 18:30:25', '2022-05-04 18:30:25'),
(38, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-05 05:41:00', '2022-05-05 05:41:00'),
(39, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-05 05:41:02', '2022-05-05 05:41:02'),
(40, 8, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-05 09:13:05', '2022-05-05 09:13:05'),
(41, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-05 09:13:18', '2022-05-05 09:13:18'),
(42, 1, 'WebKit/Windows-10.0', 'Chrome/100.0.4896.127', '127.0.0.1', NULL, '2022-05-06 03:10:06', '2022-05-06 03:10:06'),
(43, 8, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-07 01:57:09', '2022-05-07 01:57:09'),
(44, 1, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-07 03:21:24', '2022-05-07 03:21:24'),
(45, 8, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-12 03:56:39', '2022-05-12 03:56:39'),
(46, 8, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-14 01:34:45', '2022-05-14 01:34:45'),
(47, 8, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-14 02:00:52', '2022-05-14 02:00:52'),
(48, 1, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-14 02:02:04', '2022-05-14 02:02:04'),
(49, 8, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-14 02:21:11', '2022-05-14 02:21:11'),
(50, 1, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-14 05:29:03', '2022-05-14 05:29:03'),
(51, 1, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-15 14:42:17', '2022-05-15 14:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `subject` varchar(191) NOT NULL,
  `greeting` varchar(191) DEFAULT NULL,
  `message` text NOT NULL,
  `regards` varchar(191) DEFAULT NULL,
  `notify` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `slug`, `subject`, `greeting`, `message`, `regards`, `notify`, `created_at`, `updated_at`) VALUES
(1, 'Token Purchase - Order Placed by Online Gateway (USER)', 'order-submit-online-user', 'Order placed for Token Purchase #[[order_id]]', 'Thank you for your contribution! ', 'You have requested to purchase [[token_symbol]] token. Your order has been received and is now being waiting for payment. You order details are show below for your reference. \n\n[[order_details]]\n\nYour token balance will appear in your account as soon as we have confirmed your payment from [[payment_gateway]].\n\nFeel free to contact us if you have any questions. \n ', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(2, 'Token Purchase - Order Unpaid/Rejected by Gateway (USER)', 'order-canceled-user', 'Unpaid Order Canceled #[[order_id]]', 'Hello [[user_name]],', 'We noticed that you just tried to purchase [[token_symbol]] token, however we have not received your payment of [[payment_amount]] via [[payment_gateway]] for [[total_tokens]] Token.\n\nIt looks like your payment gateway ([[payment_gateway]]) has been rejected the transaction. \n\n[[order_details]]\n\nIf you want to pay manually, please feel free to contact us via [[support_email]]\n ', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(3, 'Token Purchase - Payment Approved by Gateway (ADMIN)', 'order-successful-admin', 'Payment Received - Order #[[order_id]]', 'Hello Admin,', 'You just received a payment of [[payment_amount]] for order (#[[order_id]]) via [[payment_gateway]]. \n\nThis order has now been approved automatically and token balance added to contributor ([[user_email]]) account. \n\n\nPS. Do not reply to this email.  \nThank you.\n ', 'false', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(4, 'Token Purchase - Payment Rejected/Canceled by Gateway (ADMIN)', 'order-rejected-admin', 'Payment Rejected - Order #[[order_id]]', 'Hello Admin,', 'The order (#[[order_id]]) has been canceled, however the payment was not successful and [[payment_gateway]] rejected or canceled the transaction. \n\n\n[[order_details]] \n\n\nPS. Do not reply to this email.  \nThank you.\n ', 'false', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(5, 'Welcome Email', 'welcome-email', 'Welcome to [[site_name]]', 'Hi [[user_name]],', 'Thanks for joining our platform! \n\nAs a member of our platform, you can mange your account, purchase token, referrals etc. \n\nFind out more about in - [[site_url]]', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(6, 'Send Email to User', 'send-user-email', 'New Message - [[site_name]]', 'Hi [[user_name]], ', '[[messages]]', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(7, 'Password Change Email', 'users-change-password-email', 'Password change request on [[site_name]]', 'Hello [[user_name]],', 'You are receiving this email because we received a password change request for your account.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(8, 'Unusual Login Email', 'users-unusual-login-email    ', 'Unusual Login Attempt on [[site_name]]!!!!', 'Hi [[user_name]], ', 'Someone tried to log in too many times in your [[site_name]] account.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(9, 'Confirm Your Email', 'users-confirm-password-email', 'Please verify your email address - [[site_name]]', 'Welcome!', 'Hello [[user_name]]! \n\nThank you for registering on our platform. You\'re almost ready to start.\n\nSimply click the button below to confirm your email address and active your account.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(10, 'Password Reset Email by Admin', 'users-reset-password-email', 'Your Password is reseted on [[site_name]]', 'Hello [[user_name]],', 'We are reset your login password as per your requested via support.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(11, '2FA Disable Confirmation by Admin', 'users-reset-2fa-email', 'Disable 2FA Authentication Request', 'Hello [[user_name]],', 'We are reset your 2FA authentication as per your requested via support.\n\n If you really want to reset 2FA authentication security in your account, then click the button below to confirm and reset 2FA security.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(12, 'KYC Approved Email', 'kyc-approved-email', 'KYC Verified: Contribute in [[site_name]] ICO', 'Hello [[user_name]],', 'Thank you for submitting your verification request. \n\nWe are pleased to let you know that your identity (KYC) has been verified and you are granted to participate in our token sale.\n\nWe invite you to get back to contributor account and purchase token before sales end.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(13, 'KYC Rejected Email', 'kyc-rejected-email', 'KYC Application has been rejected - [[site_name]]', 'Hello [[user_name]],', 'Thank you for submitting your verification request. We\'re having difficulties verifying your identity. \n\nThe information you had submitted was unfortunately rejected for following reason: \n[[message]]\n\nDon\'t be upset! Still you want to verity your identity, please get back to your account and fill form with proper information and upload correct documents to complete your identity verification process.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(14, 'KYC Missing Email', 'kyc-missing-email', 'Identity Verification: Action Required - [[site_name]]', 'Hello [[user_name]],', 'Thank you for submitting your verification request. We\'re having difficulties verifying your identity. \n\nThe information you had submitted was unfortunately rejected because of the following reason:\n[[message]]\n\nWe request to get back to your account in order to upload new documents and complete the identity verification.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(15, 'KYC Submitted Email', 'kyc-submit-email', 'Document submitted for Identity Verification - [[site_name]]', 'Hello [[user_name]],', 'Thank you for submitting your verification request. We\'ve received your submitted document and other information for identity verification.\n\nWe\'ll review your information and if all is in order will approve your identity. If the information is incorrect or something missing, we will request this as soon as possible.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(16, 'Token Purchase - Order Placed by Manual payment (USER)', 'order-submit-user', 'Order placed for Token Purchase #[[order_id]]', 'Thank you for your contribution!', 'You have requested to purchase [[token_symbol]] token. Your order has been received and is now being processed. You order details are show below for your reference. \n\n[[order_details]]\n\nIf you have not made the payment yet, please send your payments to the following address: [[payment_from]]\n\nYour order will be processed within 6 hours from the receipt of payment and token balance will appear in your account as soon as we have confirmed your payment. \n\nFeel free to contact us if you have any questions.', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(17, 'Token Purchase - Order Successful (USER)', 'order-successful-user', 'Token Purchase Successful - Order #[[order_id]]', 'Congratulation [[user_name]], you order has been processed successfully.', 'Thank you for your contribution and purchase our [[token_symbol]] Token! \n\n[[order_details]]\n\nYour token balances now appear in your account. Please login into your and check your balance. Please note that, we will send smart contract end of the token sales. \n\nFeel free to contact us if you have any questions.\n', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(18, 'Token Purchase - Order Rejected by Admin (USER)', 'order-rejected-user', 'Canceled Order #[[order_id]]', 'Hello [[user_name]],', 'The order (#[[order_id]]) has been canceled. \n\nWe noticed that you just tried to purchase [[token_symbol]] token, however we have not received your payment of [[payment_amount]] from your wallet ([[payment_from]]) for [[total_tokens]] Token.\n\nIf you still want to contribute please login into account and purchase the token again. \n[[site_login]]\n\nFeel free to contact us if you have any questions.\n', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(19, 'Token Purchase - Order Placed (ADMIN)', 'order-placed-admin', 'New Token Purchase Request #[[order_id]]', 'Hello Admin,', 'You have received a token purchased request form [[user_name]].\n\n[[order_details]]\n\nOrder By: [[user_name]]\nEmail Address: [[user_email]]\n\nPlease login into account and check details of transaction and take necessary steps.\n\n\nPS. Do not reply to this email. \nThank you.\n', 'false', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(20, 'Token Purchase - Canceled by User (ADMIN)', 'order-canceled-admin', 'Order #[[order_id]] Canceled by Contributor', 'Hello Admin,', 'The order (#[[order_id]]) has been canceled by [[user_name]] (contributor).\n\n\nPS. Do not reply to this email.\nThank you.\n', 'false', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(21, 'Token Refund - Refund By Admin (USER)', 'order-refund-token', 'Your order has been refunded', 'Hello [[user_name]],', 'Thank you for purchase [[token_symbol]] token from [[site_name]].\n\nWe found some problem in your payment so we have refunded your order and readjusted your token balance. Please find below your refund and original purchase order details.\n[[refund_details]]\n[[order_details]]\n\nNote: Your payment already refunded via same payment method that you used for payment.\n\nIf you have any questions about this refund, please feel free to contact us.\n', 'true', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `global_metas`
--

CREATE TABLE `global_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `pid` varchar(191) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `value` text,
  `extra` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `global_metas`
--

INSERT INTO `global_metas` (`id`, `pid`, `name`, `value`, `extra`, `created_at`, `updated_at`) VALUES
(1, '1', 'site_super_admin', '1', NULL, '2021-10-10 00:33:23', '2021-10-10 00:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kycs`
--

CREATE TABLE `kycs` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `firstName` varchar(191) NOT NULL,
  `lastName` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `dob` varchar(191) DEFAULT NULL,
  `gender` varchar(191) DEFAULT NULL,
  `address1` varchar(191) DEFAULT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `state` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `country` varchar(191) DEFAULT NULL,
  `telegram` varchar(191) DEFAULT '',
  `documentType` varchar(191) DEFAULT '',
  `documentId` json NOT NULL,
  `document` varchar(191) DEFAULT '',
  `document2` varchar(191) DEFAULT '',
  `document3` varchar(191) DEFAULT '',
  `walletName` varchar(191) DEFAULT '',
  `walletAddress` varchar(191) DEFAULT '',
  `notes` text,
  `reviewedBy` int(11) NOT NULL DEFAULT '0',
  `reviewedAt` datetime DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'pending',
  `meta` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `label` varchar(191) NOT NULL,
  `short` varchar(191) DEFAULT NULL,
  `code` varchar(191) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `label`, `short`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'English', 'EN', 'en', 1, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(2, 'Tiếng việt', 'Tiếng việt', 'VN', 'vi', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_01_043848_create_settings_table', 1),
(4, '2018_11_03_084440_create_activities_table', 1),
(5, '2018_11_03_091911_create_user_metas_table', 1),
(7, '2018_11_05_055256_create_kycs_table', 1),
(8, '2018_11_08_110810_create_ico_stages_table', 1),
(9, '2018_11_10_054817_create_ico_metas_table', 1),
(10, '2018_11_12_090411_create_payment_methods_table', 1),
(11, '2018_11_22_102451_create_pages_table', 1),
(12, '2018_11_27_123445_create_email_templates_table', 1),
(13, '2018_12_11_134112_create_global_metas_table', 1),
(17, '2019_08_28_130012_create_languages_table', 1),
(18, '2019_08_28_130334_create_translates_table', 1),
(23, '2022_04_30_152027_create_jobs_table', 2),
(25, '2022_05_05_223627_create_failed_jobs_table', 2),
(44, '2014_10_11_000000_create_provinces_table', 3),
(45, '2014_10_12_000000_create_users_table', 3),
(46, '2018_11_03_100212_create_transactions_table', 3),
(47, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(48, '2022_05_15_130907_create_referrals_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `menu_title` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `custom_slug` varchar(191) NOT NULL,
  `meta_keyword` varchar(191) DEFAULT NULL,
  `meta_description` text,
  `meta_index` int(11) NOT NULL DEFAULT '1',
  `description` longtext NOT NULL,
  `external_link` varchar(191) DEFAULT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `lang` varchar(191) NOT NULL DEFAULT 'en',
  `public` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `menu_title`, `slug`, `custom_slug`, `meta_keyword`, `meta_description`, `meta_index`, `description`, `external_link`, `status`, `lang`, `public`, `created_at`, `updated_at`) VALUES
(1, 'Thank you for your interest to our [[site_name]]', 'Welcome block', 'home_top', 'home-top-block', NULL, NULL, 1, 'You can contribute [[token_symbol]] token go through Buy Token page. \n\n You can get a quick response to any questions, and chat with the project in our Telegram: https://t.me/icocrypto \n\n<strong>Don’t hesitate to invite your friends!</strong> \n\n[[whitepaper_download_button]]', NULL, 'active', 'en', 0, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(2, 'How to buy?', 'How to buy?', 'how_buy', 'how-to-buy', NULL, NULL, 1, 'Login with your email and password then go to Buy Token!', NULL, 'active', 'en', 0, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(3, 'FAQ ', 'FAQ ', 'faq', 'faq', NULL, NULL, 1, 'Frequently Ask Questions...', NULL, 'active', 'en', 0, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(4, 'Privacy and Policy', 'Privacy and Policy', 'privacy', 'privacy-policy', NULL, NULL, 1, '[[site_name]] Privacy and Policies...', NULL, 'active', 'en', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(5, 'Terms and Condition', 'Terms and Condition', 'terms', 'terms-and-condition', NULL, NULL, 1, '[[site_name]] Terms and Condition...', NULL, 'active', 'en', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(6, 'ICO Distribution', 'ICO Distribution', 'distribution', 'ico-distribution', NULL, NULL, 1, 'Distribution page content', NULL, 'hide', 'en', 0, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(7, 'Referral', 'Referral', 'referral', 'referral', NULL, NULL, 1, 'Invite your friends and family and receive free tokens. \nThe referral link may be used during a token contribution, in the pre-sale and the ICO. \n\nImagine giving your unique referral link to your crypto-friend and he or she contributes tokens using your link, the bonus will be sent to your account automatically. The strategy is simple: the more links you send to your colleagues, family and friends - the more tokens you may earn!', NULL, 'hide', 'en', 0, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(8, 'Custom Page', 'Custom Page', 'custom_page', 'custom-page', NULL, NULL, 1, 'Details about the page!', NULL, 'hide', 'en', 0, '2021-10-10 00:32:24', '2021-10-10 00:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `description` varchar(191) DEFAULT NULL,
  `data` text NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `payment_method`, `title`, `description`, `data`, `status`, `created_at`, `updated_at`) VALUES
(1, 'manual', 'Pay via Crypto', 'You can send payment direct to our wallets. We will manually verify.', '{\"eth\":{\"status\":\"inactive\",\"address\":null,\"limit\":null,\"price\":null,\"num\":3,\"req\":\"no\"},\"btc\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"ltc\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"bch\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"bnb\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"trx\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"xlm\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"xrp\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"usdt\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"usdc\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"dash\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"waves\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"},\"xmr\":{\"status\":\"inactive\",\"address\":null,\"num\":3,\"req\":\"no\"}}', 'inactive', '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(2, 'bank', 'Thanh toán qua ngân hàng', NULL, '{\"bank_account_name\":\"Tr\\u1ea7n Xu\\u00e2n Thi\\u1ebft\",\"bank_account_number\":\"0291000319383\",\"bank_holder_address\":\"Gia Lai\",\"bank_name\":\"Ng\\u00e2n h\\u00e0ng th\\u01b0\\u01a1ng m\\u1ea1i c\\u1ed5 ph\\u1ea7n Vi\\u1ec7t Nam (VIETCOMBANK)\",\"bank_address\":\"Gia Lai\",\"routing_number\":null,\"iban\":null,\"swift_bic\":null}', 'active', '2021-10-10 00:32:24', '2021-10-10 01:04:14'),
(3, 'paypal', 'Pay with PayPal', 'You can send your payment using your PayPal account.', '{\"email\":null,\"sandbox\":0,\"clientId\":null,\"clientSecret\":null,\"is_active\":0}', 'inactive', '2021-10-10 00:32:24', '2021-10-10 00:32:24');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `division_type`, `codename`, `created_at`, `updated_at`) VALUES
(1, 'Thành phố Hà Nội', 'thành phố trung ương', 'thanh_pho_ha_noi', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(2, 'Tỉnh Hà Giang', 'tỉnh', 'tinh_ha_giang', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(3, 'Tỉnh Cao Bằng', 'tỉnh', 'tinh_cao_bang', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(4, 'Tỉnh Bắc Kạn', 'tỉnh', 'tinh_bac_kan', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(5, 'Tỉnh Tuyên Quang', 'tỉnh', 'tinh_tuyen_quang', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(6, 'Tỉnh Lào Cai', 'tỉnh', 'tinh_lao_cai', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(7, 'Tỉnh Điện Biên', 'tỉnh', 'tinh_dien_bien', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(8, 'Tỉnh Lai Châu', 'tỉnh', 'tinh_lai_chau', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(9, 'Tỉnh Sơn La', 'tỉnh', 'tinh_son_la', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(10, 'Tỉnh Yên Bái', 'tỉnh', 'tinh_yen_bai', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(11, 'Tỉnh Hoà Bình', 'tỉnh', 'tinh_hoa_binh', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(12, 'Tỉnh Thái Nguyên', 'tỉnh', 'tinh_thai_nguyen', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(13, 'Tỉnh Lạng Sơn', 'tỉnh', 'tinh_lang_son', '2022-05-15 05:40:18', '2022-05-15 05:40:18'),
(14, 'Tỉnh Quảng Ninh', 'tỉnh', 'tinh_quang_ninh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(15, 'Tỉnh Bắc Giang', 'tỉnh', 'tinh_bac_giang', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(16, 'Tỉnh Phú Thọ', 'tỉnh', 'tinh_phu_tho', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(17, 'Tỉnh Vĩnh Phúc', 'tỉnh', 'tinh_vinh_phuc', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(18, 'Tỉnh Bắc Ninh', 'tỉnh', 'tinh_bac_ninh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(19, 'Tỉnh Hải Dương', 'tỉnh', 'tinh_hai_duong', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(20, 'Thành phố Hải Phòng', 'thành phố trung ương', 'thanh_pho_hai_phong', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(21, 'Tỉnh Hưng Yên', 'tỉnh', 'tinh_hung_yen', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(22, 'Tỉnh Thái Bình', 'tỉnh', 'tinh_thai_binh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(23, 'Tỉnh Hà Nam', 'tỉnh', 'tinh_ha_nam', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(24, 'Tỉnh Nam Định', 'tỉnh', 'tinh_nam_dinh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(25, 'Tỉnh Ninh Bình', 'tỉnh', 'tinh_ninh_binh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(26, 'Tỉnh Thanh Hóa', 'tỉnh', 'tinh_thanh_hoa', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(27, 'Tỉnh Nghệ An', 'tỉnh', 'tinh_nghe_an', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(28, 'Tỉnh Hà Tĩnh', 'tỉnh', 'tinh_ha_tinh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(29, 'Tỉnh Quảng Bình', 'tỉnh', 'tinh_quang_binh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(30, 'Tỉnh Quảng Trị', 'tỉnh', 'tinh_quang_tri', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(31, 'Tỉnh Thừa Thiên Huế', 'tỉnh', 'tinh_thua_thien_hue', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(32, 'Thành phố Đà Nẵng', 'thành phố trung ương', 'thanh_pho_da_nang', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(33, 'Tỉnh Quảng Nam', 'tỉnh', 'tinh_quang_nam', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(34, 'Tỉnh Quảng Ngãi', 'tỉnh', 'tinh_quang_ngai', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(35, 'Tỉnh Bình Định', 'tỉnh', 'tinh_binh_dinh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(36, 'Tỉnh Phú Yên', 'tỉnh', 'tinh_phu_yen', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(37, 'Tỉnh Khánh Hòa', 'tỉnh', 'tinh_khanh_hoa', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(38, 'Tỉnh Ninh Thuận', 'tỉnh', 'tinh_ninh_thuan', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(39, 'Tỉnh Bình Thuận', 'tỉnh', 'tinh_binh_thuan', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(40, 'Tỉnh Kon Tum', 'tỉnh', 'tinh_kon_tum', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(41, 'Tỉnh Gia Lai', 'tỉnh', 'tinh_gia_lai', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(42, 'Tỉnh Đắk Lắk', 'tỉnh', 'tinh_dak_lak', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(43, 'Tỉnh Đắk Nông', 'tỉnh', 'tinh_dak_nong', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(44, 'Tỉnh Lâm Đồng', 'tỉnh', 'tinh_lam_dong', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(45, 'Tỉnh Bình Phước', 'tỉnh', 'tinh_binh_phuoc', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(46, 'Tỉnh Tây Ninh', 'tỉnh', 'tinh_tay_ninh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(47, 'Tỉnh Bình Dương', 'tỉnh', 'tinh_binh_duong', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(48, 'Tỉnh Đồng Nai', 'tỉnh', 'tinh_dong_nai', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(49, 'Tỉnh Bà Rịa - Vũng Tàu', 'tỉnh', 'tinh_ba_ria_vung_tau', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(50, 'Thành phố Hồ Chí Minh', 'thành phố trung ương', 'thanh_pho_ho_chi_minh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(51, 'Tỉnh Long An', 'tỉnh', 'tinh_long_an', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(52, 'Tỉnh Tiền Giang', 'tỉnh', 'tinh_tien_giang', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(53, 'Tỉnh Bến Tre', 'tỉnh', 'tinh_ben_tre', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(54, 'Tỉnh Trà Vinh', 'tỉnh', 'tinh_tra_vinh', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(55, 'Tỉnh Vĩnh Long', 'tỉnh', 'tinh_vinh_long', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(56, 'Tỉnh Đồng Tháp', 'tỉnh', 'tinh_dong_thap', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(57, 'Tỉnh An Giang', 'tỉnh', 'tinh_an_giang', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(58, 'Tỉnh Kiên Giang', 'tỉnh', 'tinh_kien_giang', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(59, 'Thành phố Cần Thơ', 'thành phố trung ương', 'thanh_pho_can_tho', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(60, 'Tỉnh Hậu Giang', 'tỉnh', 'tinh_hau_giang', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(61, 'Tỉnh Sóc Trăng', 'tỉnh', 'tinh_soc_trang', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(62, 'Tỉnh Bạc Liêu', 'tỉnh', 'tinh_bac_lieu', '2022-05-15 05:40:19', '2022-05-15 05:40:19'),
(63, 'Tỉnh Cà Mau', 'tỉnh', 'tinh_ca_mau', '2022-05-15 05:40:19', '2022-05-15 05:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `refer_by_id` bigint(20) UNSIGNED NOT NULL,
  `bonus` double UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) NOT NULL,
  `value` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `field`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'ANT NETWORK INVESTMENT', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(2, 'site_email', 'info@sgialai.com', '2021-10-10 00:32:22', '2021-10-10 01:35:42'),
(3, 'site_base_currency', 'USD', '2021-10-10 00:32:22', '2021-10-18 04:32:19'),
(4, 'site_copyright', 'All Right Reserved.', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(5, 'site_support_address', 'info@sgialai.com', '2021-10-10 00:32:22', '2021-10-10 01:35:42'),
(6, 'site_support_phone', '0368537229', '2021-10-10 00:32:22', '2021-10-10 01:35:42'),
(7, 'site_support_email', 'hotro@sgialai.com', '2021-10-10 00:32:22', '2021-10-10 01:35:42'),
(8, 'token_default_in_userpanel', 'VND', '2021-10-10 00:32:22', '2021-10-18 05:52:39'),
(9, 'token_sales_raised', 'token', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(10, 'token_sales_total', 'token', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(11, 'token_sales_cap', 'token', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(12, 'tokenlite_credible', 'b9979b02', '2021-10-10 00:32:22', '2022-05-06 03:17:09'),
(13, 'main_website_url', 'https://antnetwork.vn', '2021-10-10 00:32:22', '2021-10-10 01:35:42'),
(14, 'pm_automatic_rate_time', '30', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(15, 'theme_admin', 'style', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(16, 'theme_user', 'style', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(17, 'theme_custom', '0', '2021-10-10 00:32:22', '2021-10-10 01:36:18'),
(18, 'theme_auth_layout', 'default', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(19, 'site_date_format', 'd-m-Y', '2021-10-10 00:32:22', '2021-10-10 01:36:18'),
(20, 'site_time_format', 'h:i A', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(21, 'site_timezone', 'Asia/Bangkok', '2021-10-10 00:32:22', '2021-10-10 01:36:18'),
(22, 'tokenlite_ukey', '5hcPWdxQ', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(23, 'site_social_links', '{\"onsite\":\"on\",\"onlogin\":\"on\",\"facebook\":null,\"twitter\":null,\"linkedin\":null,\"github\":null,\"medium\":null,\"youtube\":null,\"telegram\":null}', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(24, 'tokenlite_install', '2021-10-10 07:32:22', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(25, 'referral_system', '1', '2021-10-10 00:32:22', '2021-10-10 01:21:31'),
(26, 'referral_allow', 'all_time', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(27, 'referral_calc', 'percent', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(28, 'referral_bonus', '1', '2021-10-10 00:32:22', '2021-10-18 04:54:36'),
(29, 'referral_bonus_join', '0', '2021-10-10 00:32:22', '2021-10-18 04:54:36'),
(30, 'referral_info_show', '1', '2021-10-10 00:32:22', '2021-10-10 01:21:31'),
(31, 'referral_allow_join', 'all_time', '2021-10-10 00:32:22', '2021-10-10 01:49:30'),
(32, 'referral_calc_join', 'fixed', '2021-10-10 00:32:22', '2021-10-10 01:21:31'),
(33, 'token_wallet_opt', '{\"wallet_opt\":null}', '2021-10-10 00:32:22', '2021-10-10 02:11:57'),
(34, 'token_wallet_note', 'Address should be ERC20-compliant.', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(35, 'token_wallet_custom', '{\"cw_name\":null,\"cw_text\":null}', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(36, 'token_wallet_req', '1', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(37, 'token_number_format', '0', '2021-10-10 00:32:22', '2021-10-18 05:57:08'),
(38, 'user_in_cur1', 'eth', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(39, 'user_in_cur2', 'btc', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(40, 'user_mytoken_page', '1', '2021-10-10 00:32:22', '2021-10-10 00:32:22'),
(41, 'user_mytoken_stage', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(42, 'user_sales_progress', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(43, 'welcome_img_hide', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(44, 'opt_count_hide', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(45, 'languages_show_as', 'label', '2021-10-10 00:32:23', '2021-10-10 01:13:23'),
(46, 'languages_switcher', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(47, 'languages_default', 'vi', '2021-10-10 00:32:23', '2021-10-10 01:13:23'),
(48, 'site_mail_driver', 'smtp', '2021-10-10 00:32:23', '2021-10-10 01:11:45'),
(49, 'site_mail_host', 'smtp.gmail.com', '2021-10-10 00:32:23', '2021-10-10 01:11:45'),
(50, 'site_mail_port', '587', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(51, 'site_mail_encryption', 'tls', '2021-10-10 00:32:23', '2022-05-05 06:56:58'),
(52, 'site_mail_from_address', 'binm8.4356@gmail.com', '2021-10-10 00:32:23', '2022-05-05 06:54:32'),
(53, 'site_mail_from_name', 'ANT NETWORK INVESTMENT - BIN', '2021-10-10 00:32:23', '2022-05-05 06:54:33'),
(54, 'site_mail_username', 'binm8.4356@gmail.com', '2021-10-10 00:32:23', '2022-05-05 06:54:33'),
(55, 'site_mail_password', 'eiwwaczmgilwwbvg', '2021-10-10 00:32:23', '2022-05-05 06:54:33'),
(56, 'site_mail_footer', 'Trân trọng\n[[site_name]]', '2021-10-10 00:32:23', '2021-10-10 01:11:45'),
(57, 'tokenlite_pkey', '23604094', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(58, 'site_admin_management', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(59, 'manage_access_default', '{\"level\":[\"none\"]}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(60, 'kyc_opt_hide', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(61, 'kyc_public', '1', '2021-10-10 00:32:23', '2022-04-29 03:51:41'),
(62, 'kyc_before_email', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(63, 'kyc_firstname', '{\"show\":1,\"req\":1}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(64, 'kyc_lastname', '{\"show\":0,\"req\":1}', '2021-10-10 00:32:23', '2022-04-29 03:24:17'),
(65, 'kyc_email', '{\"show\":1,\"req\":1}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(66, 'kyc_phone', '{\"show\":1,\"req\":0}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(67, 'kyc_dob', '{\"show\":1,\"req\":0}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(68, 'kyc_gender', '{\"show\":1,\"req\":1}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(69, 'kyc_country', '{\"show\":0,\"req\":1}', '2021-10-10 00:32:23', '2022-04-29 03:50:19'),
(70, 'kyc_state', '{\"show\":0,\"req\":1}', '2021-10-10 00:32:23', '2022-04-29 03:50:19'),
(71, 'kyc_city', '{\"show\":1,\"req\":1}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(72, 'kyc_zip', '{\"show\":0,\"req\":1}', '2021-10-10 00:32:23', '2022-04-29 03:51:40'),
(73, 'kyc_address1', '{\"show\":1,\"req\":1}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(74, 'kyc_address2', '{\"show\":0,\"req\":0}', '2021-10-10 00:32:23', '2022-04-29 03:50:19'),
(75, 'kyc_telegram', '{\"show\":0,\"req\":0}', '2021-10-10 00:32:23', '2022-04-29 03:24:17'),
(76, 'kyc_document_passport', '0', '2021-10-10 00:32:23', '2022-04-29 03:24:18'),
(77, 'kyc_document_nidcard', '1', '2021-10-10 00:32:23', '2022-04-29 03:51:41'),
(78, 'kyc_document_driving', '0', '2021-10-10 00:32:23', '2022-04-29 03:24:18'),
(79, 'kyc_wallet', '{\"show\":0,\"req\":1}', '2021-10-10 00:32:23', '2022-04-29 03:24:18'),
(80, 'kyc_wallet_custom', '{\"cw_name\":null,\"cw_text\":null}', '2021-10-10 00:32:23', '2022-04-29 03:51:41'),
(81, 'kyc_wallet_note', 'Address should be ERC20-compliant.', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(82, 'kyc_wallet_opt', '{\"wallet_opt\":[\"ethereum\",\"bitcoin\",\"litecoin\"]}', '2021-10-10 00:32:23', '2022-04-29 03:51:41'),
(83, 'token_purchase_usd', '1', '2021-10-10 00:32:23', '2021-10-18 05:57:37'),
(84, 'pmc_active_usd', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(85, 'token_purchase_eur', '0', '2021-10-10 00:32:23', '2021-10-18 05:49:20'),
(86, 'pmc_active_eur', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(87, 'token_purchase_gbp', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(88, 'pmc_active_gbp', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(89, 'token_purchase_cad', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(90, 'pmc_active_cad', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(91, 'token_purchase_aud', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(92, 'pmc_active_aud', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(93, 'token_purchase_try', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(94, 'pmc_active_try', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(95, 'token_purchase_rub', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(96, 'pmc_active_rub', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(97, 'token_purchase_inr', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(98, 'pmc_active_inr', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(99, 'token_purchase_brl', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(100, 'pmc_active_brl', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(101, 'token_purchase_nzd', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(102, 'pmc_active_nzd', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(103, 'token_purchase_pln', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(104, 'pmc_active_pln', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(105, 'token_purchase_jpy', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(106, 'pmc_active_jpy', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(107, 'token_purchase_myr', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(108, 'pmc_active_myr', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(109, 'token_purchase_idr', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(110, 'pmc_active_idr', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(111, 'token_purchase_ngn', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(112, 'pmc_active_ngn', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(113, 'token_purchase_mxn', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(114, 'pmc_active_mxn', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(115, 'token_purchase_php', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(116, 'pmc_active_php', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(117, 'token_purchase_chf', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(118, 'pmc_active_chf', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(119, 'token_purchase_thb', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(120, 'pmc_active_thb', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(121, 'token_purchase_sgd', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(122, 'pmc_active_sgd', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(123, 'token_purchase_czk', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(124, 'pmc_active_czk', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(125, 'token_purchase_nok', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(126, 'pmc_active_nok', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(127, 'token_purchase_zar', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(128, 'pmc_active_zar', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(129, 'token_purchase_sek', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(130, 'pmc_active_sek', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(131, 'token_purchase_kes', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(132, 'pmc_active_kes', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(133, 'token_purchase_nad', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(134, 'pmc_active_nad', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(135, 'token_purchase_dkk', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(136, 'pmc_active_dkk', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(137, 'token_purchase_hkd', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(138, 'pmc_active_hkd', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(139, 'token_purchase_huf', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(140, 'pmc_active_huf', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(141, 'token_purchase_pkr', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(142, 'pmc_active_pkr', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(143, 'token_purchase_egp', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(144, 'pmc_active_egp', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(145, 'token_purchase_clp', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(146, 'pmc_active_clp', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(147, 'token_purchase_cop', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(148, 'pmc_active_cop', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(149, 'token_purchase_jmd', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(150, 'pmc_active_jmd', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(151, 'token_purchase_eth', '0', '2021-10-10 00:32:23', '2021-10-10 01:34:40'),
(152, 'pmc_active_eth', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(153, 'token_purchase_btc', '0', '2021-10-10 00:32:23', '2021-10-10 01:34:40'),
(154, 'pmc_active_btc', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(155, 'token_purchase_ltc', '0', '2021-10-10 00:32:23', '2021-10-10 01:34:40'),
(156, 'pmc_active_ltc', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(157, 'token_purchase_xrp', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(158, 'pmc_active_xrp', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(159, 'token_purchase_xlm', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(160, 'pmc_active_xlm', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(161, 'token_purchase_bch', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(162, 'pmc_active_bch', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(163, 'token_purchase_bnb', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(164, 'pmc_active_bnb', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(165, 'token_purchase_usdt', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(166, 'pmc_active_usdt', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(167, 'token_purchase_trx', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(168, 'pmc_active_trx', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(169, 'token_purchase_usdc', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(170, 'pmc_active_usdc', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(171, 'token_purchase_dash', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(172, 'pmc_active_dash', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(173, 'token_purchase_waves', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(174, 'pmc_active_waves', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(175, 'token_purchase_xmr', '0', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(176, 'pmc_active_xmr', '1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(177, 'pm_exchange_method', 'automatic', '2021-10-10 00:32:23', '2021-10-18 04:32:19'),
(178, 'pm_exchange_auto_lastcheck', '2022-05-14 10:01:23', '2021-10-10 00:32:23', '2022-05-14 03:01:23'),
(179, 'token_calculate', 'normal', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(180, 'token_calculate_note', 'normal', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(181, 'token_default_method', 'USD', '2021-10-10 00:32:23', '2021-10-18 04:31:42'),
(182, 'active_payment_modules', '{\"Manual\":{\"type\":\"core\",\"version\":\"1.0\"},\"Bank\":{\"type\":\"core\",\"version\":\"1.0\"},\"Paypal\":{\"type\":\"core\",\"version\":\"1.0\"}}', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(183, 'site_api_key', 'mxMwmuxhKFVkbl1SjPTLcJm1', '2021-10-10 00:32:23', '2021-10-10 00:32:23'),
(184, 'site_api_secret', 'l0Q6b9979b02o0ks', '2021-10-10 00:32:23', '2022-05-15 14:42:17'),
(185, 'nio_lkey', 'a12245678999ca31eeb35046b9979b02', '2021-10-10 00:32:23', '2022-05-06 03:17:09'),
(186, 'pmc_rate_usd', '1', '2021-10-10 00:32:23', '2021-10-18 04:32:20'),
(187, 'pmc_rate_eur', '1', '2021-10-10 00:32:23', '2021-10-18 04:32:20'),
(188, 'pmc_rate_gbp', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(189, 'pmc_rate_cad', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(190, 'pmc_rate_aud', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(191, 'pmc_rate_try', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(192, 'pmc_rate_rub', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(193, 'pmc_rate_inr', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(194, 'pmc_rate_brl', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(195, 'pmc_rate_nzd', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(196, 'pmc_rate_pln', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(197, 'pmc_rate_jpy', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(198, 'pmc_rate_myr', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(199, 'pmc_rate_idr', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(200, 'pmc_rate_ngn', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(201, 'pmc_rate_mxn', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(202, 'pmc_rate_php', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(203, 'pmc_rate_chf', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(204, 'pmc_rate_thb', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(205, 'pmc_rate_sgd', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(206, 'pmc_rate_czk', '1', '2021-10-10 00:32:23', '2021-10-10 02:36:39'),
(207, 'pmc_rate_nok', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(208, 'pmc_rate_zar', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(209, 'pmc_rate_sek', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(210, 'pmc_rate_kes', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(211, 'pmc_rate_nad', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(212, 'pmc_rate_dkk', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(213, 'pmc_rate_hkd', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(214, 'pmc_rate_huf', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(215, 'pmc_rate_pkr', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(216, 'pmc_rate_egp', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(217, 'pmc_rate_clp', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(218, 'pmc_rate_cop', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(219, 'pmc_rate_jmd', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(220, 'pmc_rate_eth', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(221, 'pmc_rate_btc', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(222, 'pmc_rate_ltc', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(223, 'pmc_rate_xrp', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(224, 'pmc_rate_xlm', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(225, 'pmc_rate_bch', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(226, 'pmc_rate_bnb', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(227, 'pmc_rate_usdt', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(228, 'pmc_rate_trx', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(229, 'pmc_rate_usdc', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(230, 'pmc_rate_dash', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(231, 'pmc_rate_waves', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(232, 'pmc_rate_xmr', '1', '2021-10-10 00:32:24', '2021-10-10 02:36:39'),
(233, 'actived_stage', '1', '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(234, 'token_name', 'ANT NETWORK INVEST', '2021-10-10 00:32:24', '2021-10-10 01:33:57'),
(235, 'token_symbol', 'ANT', '2021-10-10 00:32:24', '2021-10-10 01:33:57'),
(236, 'token_decimal_min', '2', '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(237, 'token_decimal_max', '2', '2021-10-10 00:32:24', '2021-10-18 05:56:38'),
(238, 'token_decimal_show', '0', '2021-10-10 00:32:24', '2021-10-18 05:55:19'),
(239, 'token_price_show', '1', '2021-10-10 00:32:24', '2021-10-18 05:57:37'),
(240, 'token_before_kyc', '0', '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(241, 'site_db_version', '217132', '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(242, 'lang_last_update_en', '1633829546', '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(243, 'lang_last_generate_en', '1633829546', '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(244, 'lang_db_version', '213525', '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(245, 'installed_update', '1633829546', '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(246, 'env_ptype', '24567', '2021-10-10 00:33:36', '2021-10-10 00:45:07'),
(247, 'tokenlite_update', '2537354402', '2021-10-10 00:45:07', '2021-10-10 00:45:07'),
(248, 'env_pcode', '10101010-10ab-0102-02cb-a1b1c101a201', '2021-10-10 00:45:07', '2021-10-10 00:45:07'),
(249, 'env_uname', 'thiettran', '2021-10-10 00:45:07', '2021-10-10 00:45:07'),
(250, 'nio_email', 'xuanthiet1993@gmail.com', '2021-10-10 00:45:07', '2021-10-10 00:45:07'),
(251, 'reg_fall_queue', '0', '2021-10-10 00:45:07', '2021-10-10 00:45:07'),
(252, 'pmc_auto_rate_usd', '1', '2021-10-10 00:45:19', '2021-10-18 04:32:20'),
(253, 'pmc_auto_rate_eur', '0.9615', '2021-10-10 00:45:19', '2022-05-14 04:33:56'),
(254, 'pmc_auto_rate_gbp', '0.8157', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(255, 'pmc_auto_rate_cad', '1.287', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(256, 'pmc_auto_rate_aud', '1.446', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(257, 'pmc_auto_rate_try', '16.04', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(258, 'pmc_auto_rate_rub', '65.48', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(259, 'pmc_auto_rate_inr', '85.68', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(260, 'pmc_auto_rate_brl', '5.111', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(261, 'pmc_auto_rate_nzd', '1.591', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(262, 'pmc_auto_rate_pln', '4.72', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(263, 'pmc_auto_rate_jpy', '129.41', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(264, 'pmc_auto_rate_myr', '4.383', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(265, 'pmc_auto_rate_idr', '14719.66', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(266, 'pmc_auto_rate_ngn', '596.69', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(267, 'pmc_auto_rate_mxn', '20.23', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(268, 'pmc_auto_rate_php', '59.24', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(269, 'pmc_auto_rate_chf', '1.005', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(270, 'pmc_auto_rate_thb', '34.74', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(271, 'pmc_auto_rate_sgd', '1.395', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(272, 'pmc_auto_rate_czk', '23.8', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(273, 'pmc_auto_rate_nok', '0.2179', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(274, 'pmc_auto_rate_zar', '16.62', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(275, 'pmc_auto_rate_sek', '11.49', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(276, 'pmc_auto_rate_kes', '116.33', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(277, 'pmc_auto_rate_nad', '17.78', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(278, 'pmc_auto_rate_dkk', '7.143', '2021-10-10 00:45:19', '2022-05-14 01:55:25'),
(279, 'pmc_auto_rate_hkd', '7.828', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(280, 'pmc_auto_rate_huf', '434.28', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(281, 'pmc_auto_rate_pkr', '223.99', '2021-10-10 00:45:19', '2022-05-15 03:53:41'),
(282, 'pmc_auto_rate_egp', '19.66', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(283, 'pmc_auto_rate_clp', '867.98', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(284, 'pmc_auto_rate_cop', '4020.84', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(285, 'pmc_auto_rate_jmd', '186.35', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(286, 'pmc_auto_rate_eth', '0.0004879', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(287, 'pmc_auto_rate_btc', '3.352E-5', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(288, 'pmc_auto_rate_ltc', '0.01455', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(289, 'pmc_auto_rate_xrp', '2.369', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(290, 'pmc_auto_rate_xlm', '7.252', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(291, 'pmc_auto_rate_bch', '0.004791', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(292, 'pmc_auto_rate_bnb', '0.003387', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(293, 'pmc_auto_rate_usdt', '1.001', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(294, 'pmc_auto_rate_trx', '14.52', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(295, 'pmc_auto_rate_usdc', '1', '2021-10-10 00:45:19', '2021-10-18 04:32:20'),
(296, 'pmc_auto_rate_dash', '0.01637', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(297, 'pmc_auto_rate_waves', '0.1467', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(298, 'pmc_auto_rate_xmr', '0.006197', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(299, 'pmc_current_rate', '{\"usd\":1,\"vnd\":23618.72,\"eur\":0.9615,\"gbp\":0.8157,\"cad\":1.287,\"aud\":1.446,\"try\":16.04,\"rub\":65.48,\"inr\":85.68,\"brl\":5.111,\"nzd\":1.591,\"pln\":4.72,\"jpy\":129.41,\"myr\":4.383,\"idr\":14719.66,\"ngn\":596.69,\"mxn\":20.23,\"php\":59.24,\"chf\":1.005,\"thb\":34.74,\"sgd\":1.395,\"czk\":23.8,\"nok\":0.2179,\"zar\":16.62,\"sek\":11.49,\"kes\":116.33,\"nad\":17.78,\"dkk\":7.143,\"hkd\":7.828,\"huf\":434.28,\"pkr\":223.99,\"egp\":19.66,\"clp\":867.98,\"cop\":4020.84,\"jmd\":186.35,\"eth\":0.0004879,\"btc\":3.352e-5,\"ltc\":0.01455,\"xrp\":2.369,\"xlm\":7.252,\"bch\":0.004791,\"bnb\":0.003387,\"usdt\":1.001,\"trx\":14.52,\"usdc\":1,\"dash\":0.01637,\"waves\":0.1467,\"xmr\":0.006197}', '2021-10-10 00:45:19', '2022-05-15 03:53:42'),
(300, 'token_all_price', '{\"base\":0.03,\"usd\":0.03,\"vnd\":708.56,\"eur\":0.03,\"gbp\":0.02,\"cad\":0.04,\"aud\":0.04,\"try\":0.48,\"rub\":1.95,\"inr\":2.67,\"brl\":0.15,\"nzd\":0.05,\"pln\":0.14,\"jpy\":3.89,\"myr\":0.13,\"idr\":441.43,\"ngn\":17.91,\"mxn\":0.61,\"php\":1.93,\"chf\":0.03,\"thb\":1.04,\"sgd\":0.04,\"czk\":0.71,\"nok\":0.01,\"zar\":0.5,\"sek\":0.29,\"kes\":3.62,\"nad\":0.54,\"dkk\":0.21,\"hkd\":0.24,\"huf\":13.45,\"pkr\":7.98,\"egp\":0.71,\"clp\":26.15,\"cop\":125.01,\"jmd\":5.75,\"eth\":0,\"btc\":0,\"ltc\":0,\"xrp\":0.07,\"xlm\":0.22,\"bch\":0,\"bnb\":0,\"usdt\":0.03,\"trx\":0.4,\"usdc\":0.03,\"dash\":0,\"waves\":0,\"xmr\":0}', '2021-10-10 00:45:19', '2022-05-14 03:01:23'),
(301, 'send_notification_to', 'all', '2021-10-10 01:11:45', '2021-10-10 01:11:45'),
(302, 'send_notification_mails', 'xuanthiet1996@gmail.com', '2021-10-10 01:11:45', '2021-10-10 01:12:04'),
(303, 'site_maintenance', '0', '2021-10-10 01:36:18', '2021-10-10 01:36:18'),
(304, 'site_maintenance_text', NULL, '2021-10-10 01:36:18', '2021-10-10 01:36:18'),
(305, 'pmc_active_vnd', '1', '2021-10-10 02:51:13', '2021-10-10 02:51:13'),
(306, 'pmc_rate_vnd', '1', '2021-10-10 02:51:13', '2021-10-10 02:51:13'),
(307, 'token_purchase_vnd', '0', '2021-10-10 02:51:30', '2021-10-10 02:51:30'),
(308, 'pmc_auto_rate_vnd', '23618.72', '2021-10-10 02:51:52', '2022-04-27 15:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `tnx_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tnx_type` enum('purchase','withdraw','point','bonus') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double DEFAULT NULL,
  `wallet_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extra` text COLLATE utf8mb4_unicode_ci,
  `status` enum('approved','canceled','pending','onhold') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translates`
--

CREATE TABLE `translates` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `name` varchar(191) NOT NULL,
  `text` text,
  `pages` varchar(191) NOT NULL DEFAULT 'global',
  `group` varchar(191) NOT NULL DEFAULT 'system',
  `panel` varchar(191) NOT NULL DEFAULT 'any',
  `load` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translates`
--

INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(1, 'messages.email_exist', 'base', 'Email is already exist!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(2, 'messages.email.unique', 'base', 'Email address should be unique!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(3, 'messages.email.reset', 'base', 'Somthing is wrong! We are unable to send reset link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(4, 'messages.email.verify', 'base', 'Somthing is wrong! We are unable to send the verification link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(5, 'messages.email.password_change', 'base', 'Somthing is wrong! We are unable to send the confirmation link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(6, 'messages.email.failed', 'base', 'But email was not send to user. Please check your mail setting credential.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(7, 'messages.form.invalid', 'base', 'Invalid form data!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(8, 'messages.form.wrong', 'base', 'Something wrong in form submission!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(9, 'messages.wrong', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(10, 'messages.nothing', 'base', 'Nothing to do!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(11, 'messages.agree', 'base', 'You should agree our terms and policy.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(12, 'messages.errors', 'base', 'An error occurred. Please try again.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(13, 'messages.login.email_verify', 'base', 'Please login to verify you email address.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(14, 'messages.login.inactive', 'base', 'Your account may inactive or suspended. Please contact us if something wrong.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(15, 'messages.register.success.heading', 'base', 'Thank you!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(16, 'messages.register.success.subhead', 'base', 'Your sign-up process is almost done.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(17, 'messages.register.success.msg', 'base', 'Please check your email and verify your account.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(18, 'messages.verify.verified', 'base', 'Email address is already verified.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(19, 'messages.verify.not_found', 'base', 'User Account is not found!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(20, 'messages.verify.expired', 'base', 'Your verification link is expired!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(21, 'messages.verify.invalid', 'base', 'Your verification link is invalid!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(22, 'messages.verify.confirmed', 'base', 'Your email is verified now!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(23, 'messages.verify.success.heading', 'base', 'Congratulations!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(24, 'messages.verify.success.subhead', 'base', 'You\'ve successfully verified your email address and your account is now active.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(25, 'messages.verify.success.msg', 'base', 'Please sign-in to start token purchase.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(26, 'messages.trnx.created', 'base', 'Transaction successful, You will redirect to payment page.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(27, 'messages.trnx.wrong', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(28, 'messages.trnx.required', 'base', 'Transaction id is required!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(29, 'messages.trnx.canceled', 'base', 'Transaction failed! Try again.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(30, 'messages.trnx.notfound', 'base', 'Transaction id is not found', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(31, 'messages.trnx.reviewing', 'base', 'We are reviewing your payment!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(32, 'messages.trnx.canceled_own', 'base', 'You had canceled your order', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(33, 'messages.trnx.require_currency', 'base', 'Currency is required!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(34, 'messages.trnx.require_token', 'base', 'Token amount is required!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(35, 'messages.trnx.select_method', 'base', 'Select payment method!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(36, 'messages.trnx.minimum_token', 'base', 'You have to purchase more than 1 token.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(37, 'messages.trnx.purchase_token', 'base', 'Tokens Purchase', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(38, 'messages.trnx.referral_bonus', 'base', 'Referral Bonus', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(39, 'messages.trnx.payments.not_available', 'base', 'Sorry! Currently payment method not available in your selected currency!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(40, 'messages.trnx.manual.success', 'base', 'Transaction successful!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(41, 'messages.trnx.manual.failed', 'base', 'Transaction Failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(42, 'messages.trnx.admin.approved', 'base', 'Transaction approved and token added to user.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(43, 'messages.trnx.admin.canceled', 'base', 'Transaction canceled.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(44, 'messages.trnx.admin.deleted', 'base', 'Transaction Deleted.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(45, 'messages.trnx.admin.already_deleted', 'base', 'This transaction is already deleted.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(46, 'messages.trnx.admin.already_approved', 'base', 'This transaction is already approved.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(47, 'messages.trnx.admin.already_canceled', 'base', 'This transaction is already canceled.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(48, 'messages.trnx.admin.already_updated', 'base', 'This transaction is already updated to :status.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(49, 'messages.token.success', 'base', 'Token added to the user account!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(50, 'messages.token.failed', 'base', 'Failed to add token!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(51, 'messages.insert.success', 'base', ':what insert successful!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(52, 'messages.insert.warning', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(53, 'messages.insert.failed', 'base', ':what insert failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(54, 'messages.stage.expired', 'base', 'Sorry, this stage is expired!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(55, 'messages.stage.inactive', 'base', 'Currently no active stage found!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(56, 'messages.stage.notice', 'base', 'Please create a new stage or update stage date, because this stage is expired!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(57, 'messages.stage.upcoming', 'base', 'Stage will start at :time', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(58, 'messages.stage.delete_failed', 'base', 'You can not remove the last stage.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(59, 'messages.stage.not_started', 'base', 'Our sell have not started yet. Please check after some times.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(60, 'messages.stage.completed', 'base', 'Our token sales has been finished. Thank you very much for your contribution.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(61, 'messages.update.success', 'base', ':what has been updated!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(62, 'messages.update.warning', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:24', '2021-10-10 00:32:24'),
(63, 'messages.update.failed', 'base', ':what updating failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(64, 'messages.password.old_err', 'base', 'Your old password is incorrect.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(65, 'messages.password.success', 'base', 'Password successfully changed!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(66, 'messages.password.changed', 'base', 'We have sent a verification code to your email please confirm and change.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(67, 'messages.password.failed', 'base', 'Varification link has expired!!! try again', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(68, 'messages.password.token', 'base', 'Invalid link/token!!! try again', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(69, 'messages.delete.delete', 'base', ':what is deleted!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(70, 'messages.delete.delete_failed', 'base', ':what is deletion failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(71, 'messages.kyc.approved', 'base', 'KYC application approved successfully!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(72, 'messages.kyc.missing', 'base', 'KYC application is missing!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(73, 'messages.kyc.rejected', 'base', 'KYC application is rejected!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(74, 'messages.kyc.wait', 'base', 'Your KYC Application is placed, please wait for our review.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(75, 'messages.kyc.mandatory', 'base', 'Identity verification (KYC/AML) is mandatory to participate in our token sale.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(76, 'messages.kyc.forms.submitted', 'base', 'You have successfully submitted your application for identity verification.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(77, 'messages.kyc.forms.failed', 'base', 'We weren\'t able to process the application submission for identity verification. Please reload this page and fill the form again and submit. ', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(78, 'messages.kyc.forms.document', 'base', ':NAME is required, Please upload your document.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(79, 'messages.upload.success', 'base', ':what has been uploaded!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(80, 'messages.upload.warning', 'base', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(81, 'messages.upload.invalid', 'base', 'This type of file is not supported!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(82, 'messages.upload.failed', 'base', ':what uploading failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(83, 'messages.invalid.address', 'base', 'Enter a valid wallet address.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(84, 'messages.invalid.address_is', 'base', 'Enter a valid :is wallet address.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(85, 'messages.invalid.social', 'base', 'Sorry, Social login is not available now.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(86, 'messages.mail.send', 'base', 'Email has been send successfully.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(87, 'messages.mail.failed', 'base', 'Failed to send email.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(88, 'messages.mail.issues', 'base', 'Unable to send email! Please check your mail setting credential.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(89, 'messages.wallet.change', 'base', 'Wallet address change request submitted.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(90, 'messages.wallet.cancel', 'base', 'Wallet address change request is canceled.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(91, 'messages.wallet.approved', 'base', 'Wallet address change request is approved.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(92, 'messages.wallet.failed', 'base', 'Wallet address change request is failed.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(93, 'messages.ico_not_setup', 'base', 'ICO Sales opening soon, Please check after sometimes.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(94, 'messages.demo_payment_note', 'base', 'All the <span class=\"badge badge-xs badge-purple ucap\">Add-ons</span> type payment modules is NOT part of main product. You\'ve to purchase separately from CodeCanyon to get those. <strong><a href=\"https://codecanyon.net/user/softnio/portfolio\" target=\"_blank\">Check out here</a></strong>.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(95, 'messages.demo_user', 'base', 'Your action can\'t perform as you login with a Demo Account. For full-access, please send an email at info@softnio.com.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(96, 'messages.demo_preview', 'base', 'You can\'t perform this action as this is preview purpose.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(97, 'messages.stage_update', 'base', 'Successfully :status the stage!!', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(98, 'messages.payment_method_update', 'base', 'Payment method :status', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(99, 'messages.required_app', 'base', 'The :what payment module required minimum :version version of application. Please update your core application to latest version.', 'messages, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(100, 'messages.permission', 'base', 'You do not have enough permissions to perform requested operation.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(101, 'messages.unable_proceed', 'base', 'Unable to proceed request!', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(102, 'messages.transfer.wrong', 'base', 'Something is wrong, please try again later!', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(103, 'messages.transfer.request_submitted', 'base', 'Your request successfully submitted and waiting for our team approval.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(104, 'messages.transfer.balance_insufficient', 'base', 'You balance is insufficient for send token.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(105, 'messages.transfer.can_not_send_token', 'base', 'You can not send your token to your own account.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(106, 'messages.transfer.invalid_email_address', 'base', 'Sorry! your provided email address is invalid or not associated with our platform.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(107, 'messages.transfer.send_maximum_amount', 'base', 'You can send maximum :amount :symbol at once.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(108, 'messages.transfer.minimum_amount_required', 'base', 'Minimum :amount :symbol required to send.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(109, 'messages.transfer.invalid_transaction', 'base', 'Invalid transaction or not found!', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(110, 'messages.transfer.transaction_approved', 'base', 'Transaction approved successfully.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(111, 'messages.transfer.account_not_found', 'base', 'The receiver account not found.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(112, 'messages.transfer.transaction_rejected', 'base', 'Transaction has been rejected.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(113, 'messages.transfer.transaction_already', 'base', 'Transaction already :status.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(114, 'messages.withdraw.approved', 'base', 'Withdraw transaction has been approved successfully.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(115, 'messages.withdraw.rejected', 'base', 'Withdraw transaction has been rejected.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(116, 'messages.withdraw.deleted', 'base', 'Withdraw transaction has been deleted.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(117, 'messages.withdraw.already_approved', 'base', 'Withdraw transaction has been already approved.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(118, 'messages.withdraw.canceled', 'base', 'Withdraw transaction has been canceled.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(119, 'messages.withdraw.unable_delete', 'base', 'Unable delete the withdraw transaction.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(120, 'messages.withdraw.successfully_placed_progress', 'base', 'Your withdrawal has been successfully placed. You can see its progress on this withdrawal page.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(121, 'messages.withdraw.wrong', 'base', 'Something is wrong! Unable to process your request.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(122, 'messages.withdraw.insufficient_balance', 'base', 'You balance is insufficient for a withdrawal.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(123, 'messages.withdraw.withdraw_maximum', 'base', 'You can withdraw maximum :amount :symbol at once.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(124, 'messages.withdraw.minimum_required', 'base', 'Minimum :amount :symbol required to withdraw.', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(125, 'messages.cancel_order', 'base', 'Do you really cancel your order?', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(126, 'messages.unable_process', 'base', 'Unable process request!', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(127, 'messages.sure', 'base', 'Are you sure?', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(128, 'messages.unable_perform', 'base', 'Unable to perform!', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(129, 'messages.use_modern_browser', 'base', 'Please use a modern browser to properly view this template!', 'messages, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(130, 'pagination.previous', 'base', '&laquo; Previous', 'pagination, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(131, 'pagination.next', 'base', 'Next &raquo;', 'pagination, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(132, 'passwords.password', 'base', 'Passwords must be at least six characters and match the confirmation.', 'passwords, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(133, 'passwords.reset', 'base', 'Your password has been reset!', 'passwords, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(134, 'passwords.sent', 'base', 'We have e-mailed your password reset link!', 'passwords, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(135, 'passwords.token', 'base', 'This password reset token is invalid.', 'passwords, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(136, 'passwords.user', 'base', 'We can\'t find a user with that e-mail address.', 'passwords, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(137, 'auth.failed', 'base', 'These credentials do not match our records.', 'auth, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(138, 'auth.throttle', 'base', 'Too many login attempts. Please try again in :seconds', 'auth, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(139, 'auth.recaptcha', 'base', 'Your request failed to complete as bot detected.', 'auth, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(140, 'auth.health.save_action', 'base', 'Please register and activate the application to perform the action.', 'auth, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(141, 'auth.health.fail', 'base', 'Invalidated-the-license-due-to-wrong-key', 'auth, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(142, 'validation.accepted', 'base', 'The :attribute must be accepted.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(143, 'validation.active_url', 'base', 'The :attribute is not a valid URL.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(144, 'validation.after', 'base', 'The :attribute must be a date after :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(145, 'validation.after_or_equal', 'base', 'The :attribute must be a date after or equal to :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(146, 'validation.alpha', 'base', 'The :attribute may only contain letters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(147, 'validation.alpha_dash', 'base', 'The :attribute may only contain letters, numbers, dashes and underscores.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(148, 'validation.alpha_num', 'base', 'The :attribute may only contain letters and numbers.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(149, 'validation.array', 'base', 'The :attribute must be an array.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(150, 'validation.before', 'base', 'The :attribute must be a date before :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(151, 'validation.before_or_equal', 'base', 'The :attribute must be a date before or equal to :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(152, 'validation.between.numeric', 'base', 'The :attribute must be between :min and :max.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(153, 'validation.between.file', 'base', 'The :attribute must be between :min and :max kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(154, 'validation.between.string', 'base', 'The :attribute must be between :min and :max characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(155, 'validation.between.array', 'base', 'The :attribute must have between :min and :max items.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(156, 'validation.boolean', 'base', 'The :attribute field must be true or false.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(157, 'validation.confirmed', 'base', 'The :attribute confirmation does not match.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(158, 'validation.date', 'base', 'The :attribute is not a valid date.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(159, 'validation.date_equals', 'base', 'The :attribute must be a date equal to :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(160, 'validation.date_format', 'base', 'The :attribute does not match the format :format.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(161, 'validation.different', 'base', 'The :attribute and :other must be different.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(162, 'validation.digits', 'base', 'The :attribute must be :digits digits.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(163, 'validation.digits_between', 'base', 'The :attribute must be between :min and :max digits.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(164, 'validation.dimensions', 'base', 'The :attribute has invalid image dimensions.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(165, 'validation.distinct', 'base', 'The :attribute field has a duplicate value.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(166, 'validation.email', 'base', 'The :attribute must be a valid email address.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(167, 'validation.exists', 'base', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(168, 'validation.file', 'base', 'The :attribute must be a file.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(169, 'validation.filled', 'base', 'The :attribute field must have a value.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(170, 'validation.gt.numeric', 'base', 'The :attribute must be greater than :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(171, 'validation.gt.file', 'base', 'The :attribute must be greater than :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(172, 'validation.gt.string', 'base', 'The :attribute must be greater than :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(173, 'validation.gt.array', 'base', 'The :attribute must have more than :value items.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(174, 'validation.gte.numeric', 'base', 'The :attribute must be greater than or equal :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(175, 'validation.gte.file', 'base', 'The :attribute must be greater than or equal :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(176, 'validation.gte.string', 'base', 'The :attribute must be greater than or equal :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(177, 'validation.gte.array', 'base', 'The :attribute must have :value items or more.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(178, 'validation.image', 'base', 'The :attribute must be an image.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(179, 'validation.in', 'base', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(180, 'validation.in_array', 'base', 'The :attribute field does not exist in :other.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(181, 'validation.integer', 'base', 'The :attribute must be an integer.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(182, 'validation.ip', 'base', 'The :attribute must be a valid IP address.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(183, 'validation.ipv4', 'base', 'The :attribute must be a valid IPv4 address.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(184, 'validation.ipv6', 'base', 'The :attribute must be a valid IPv6 address.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(185, 'validation.json', 'base', 'The :attribute must be a valid JSON string.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(186, 'validation.lt.numeric', 'base', 'The :attribute must be less than :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(187, 'validation.lt.file', 'base', 'The :attribute must be less than :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(188, 'validation.lt.string', 'base', 'The :attribute must be less than :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(189, 'validation.lt.array', 'base', 'The :attribute must have less than :value items.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(190, 'validation.lte.numeric', 'base', 'The :attribute must be less than or equal :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(191, 'validation.lte.file', 'base', 'The :attribute must be less than or equal :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(192, 'validation.lte.string', 'base', 'The :attribute must be less than or equal :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(193, 'validation.lte.array', 'base', 'The :attribute must not have more than :value items.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(194, 'validation.max.numeric', 'base', 'The :attribute may not be greater than :max.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(195, 'validation.max.file', 'base', 'The :attribute may not be greater than :max kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(196, 'validation.max.string', 'base', 'The :attribute may not be greater than :max characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(197, 'validation.max.array', 'base', 'The :attribute may not have more than :max items.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(198, 'validation.mimes', 'base', 'The :attribute must be a file of type: :values.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(199, 'validation.mimetypes', 'base', 'The :attribute must be a file of type: :values.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(200, 'validation.min.numeric', 'base', 'The :attribute must be at least :min.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(201, 'validation.min.file', 'base', 'The :attribute must be at least :min kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(202, 'validation.min.string', 'base', 'The :attribute must be at least :min characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(203, 'validation.min.array', 'base', 'The :attribute must have at least :min items.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(204, 'validation.not_in', 'base', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(205, 'validation.not_regex', 'base', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(206, 'validation.numeric', 'base', 'The :attribute must be a number.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(207, 'validation.present', 'base', 'The :attribute field must be present.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(208, 'validation.regex', 'base', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(209, 'validation.required', 'base', 'The :attribute field is required.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(210, 'validation.required_if', 'base', 'The :attribute field is required when :other is :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(211, 'validation.required_unless', 'base', 'The :attribute field is required unless :other is in :values.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(212, 'validation.required_with', 'base', 'The :attribute field is required when :values is present.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(213, 'validation.required_with_all', 'base', 'The :attribute field is required when :values are present.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(214, 'validation.required_without', 'base', 'The :attribute field is required when :values is not present.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(215, 'validation.required_without_all', 'base', 'The :attribute field is required when none of :values are present.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(216, 'validation.same', 'base', 'The :attribute and :other must match.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(217, 'validation.size.numeric', 'base', 'The :attribute must be :size.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(218, 'validation.size.file', 'base', 'The :attribute must be :size kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(219, 'validation.size.string', 'base', 'The :attribute must be :size characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(220, 'validation.size.array', 'base', 'The :attribute must contain :size items.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(221, 'validation.starts_with', 'base', 'The :attribute must start with one of the following: :values', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(222, 'validation.string', 'base', 'The :attribute must be a string.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(223, 'validation.timezone', 'base', 'The :attribute must be a valid zone.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(224, 'validation.unique', 'base', 'The :attribute has already been taken.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(225, 'validation.uploaded', 'base', 'The :attribute failed to upload.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(226, 'validation.url', 'base', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(227, 'validation.uuid', 'base', 'The :attribute must be a valid UUID.', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(228, 'validation.custom.attribute-name.rule-name', 'base', 'custom-message', 'validation, global', 'system', 'any', 1, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(229, 'validation.only.required', 'base', 'Required.', 'validation, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(230, 'validation.min.char', 'base', 'At least :num chars.', 'validation, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(231, 'validation.max.char', 'base', 'Maximum :num chars.', 'validation, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(232, 'validation.same.value', 'base', 'Enter the same value.', 'validation, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(233, 'validation.email.valid', 'base', 'Enter valid email.', 'validation, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(234, 'validation.issue', 'base', 'Currently we are facing some technical issue, please try again after sometime.', 'validation, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(235, 'auth.signin', 'base', 'Sign-in', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(236, 'auth.sign_in_btn', 'base', 'Sign In', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(237, 'auth.sign_in', 'base', 'Sign in', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(238, 'auth.with_your', 'base', 'with your', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(239, 'auth.account', 'base', 'Account', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(240, 'auth.your_email', 'base', 'Your Email', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(241, 'auth.password', 'base', 'Password', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(242, 'auth.remember_me', 'base', 'Remember Me', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(243, 'auth.forgot_password', 'base', 'Forgot password?', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(244, 'auth.no_account', 'base', 'Don’t have an account?', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(245, 'auth.sign_with', 'base', 'Or Sign in with', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(246, 'auth.facebook', 'base', 'Facebook', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(247, 'auth.google', 'base', 'Google', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(248, 'auth.sign_here', 'base', 'Sign up here', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(249, 'auth.welcome', 'base', 'Welcome!', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(250, 'auth.logout', 'base', 'Logout', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(251, 'auth.sign_up', 'base', 'Sign up', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(252, 'auth.create_new', 'base', 'Create New', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(253, 'auth.email_verified', 'base', 'Email Verified', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(254, 'auth.resend_email', 'base', 'Resend Email', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(255, 'auth.set_admin_account', 'base', 'Please setup admin account.', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(256, 'auth.repeat_password', 'base', 'Repeat Password', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(257, 'auth.reset_password', 'base', 'Reset password', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(258, 'auth.forgot_password_note', 'base', 'If you forgot your password, well, then we\'ll email you instructions to reset your password.', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(259, 'auth.your_email_address', 'base', 'Your Email Address', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(260, 'auth.your_name', 'base', 'Your Name', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(261, 'auth.your_full_name', 'base', 'Your Full Name', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(262, 'auth.your_mobile', 'base', 'Your Mobile Number', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(263, 'auth.enter_full_name', 'base', 'Enter Full Name', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(264, 'auth.enter_email_address', 'base', 'Enter Email Address', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(265, 'auth.enter_mobile', 'base', 'Enter Mobile Number', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(266, 'auth.enter_password', 'base', 'Enter Password', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(267, 'auth.reset_link', 'base', 'Send Reset Link', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(268, 'auth.return_login', 'base', 'Return to login', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(269, 'auth.agree', 'base', 'I agree to the', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(270, 'auth.agree_and', 'base', 'and', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(271, 'auth.agree_terms', 'base', 'By registering you agree to the terms and conditions.', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(272, 'auth.agree_confirm', 'base', 'You should accept our terms and policy.', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(273, 'auth.create_account', 'base', 'Create Account', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(274, 'auth.already_account', 'base', 'Already have an account ?', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(275, 'auth.sign_instead', 'base', 'Sign in instead', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(276, 'auth.verify_email', 'base', 'Please verify your email address.', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(277, 'auth.cancel_signup', 'base', 'Cancel Signup', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(278, 'auth.sign_out', 'base', 'Sign Out', 'auth, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(279, 'dashboard.main_site', 'base', 'Main Site', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(280, 'dashboard.title_user_dashboard', 'base', 'User Dashboard', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(281, 'dashboard.title_user_transactions', 'base', 'User Transactions', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(282, 'dashboard.title_user_account', 'base', 'User Account', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(283, 'dashboard.title_user_token', 'base', ':symbol Token Balance', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(284, 'dashboard.title_token', 'base', 'My Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(285, 'dashboard.title_kyc', 'base', 'KYC Application', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(286, 'dashboard.title_dashboard', 'base', 'Dashboard', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(287, 'dashboard.title_transactions', 'base', 'Transactions', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(288, 'dashboard.title_profile', 'base', 'Profile', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(289, 'dashboard.kyc_details', 'base', 'User KYC Details', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(290, 'dashboard.id_verification', 'base', 'Begin ID-Verification', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(291, 'dashboard.buy_token', 'base', 'Buy Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(292, 'dashboard.current_price', 'base', 'Current Price', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(293, 'dashboard.buy_token_now', 'base', 'Buy Token Now', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(294, 'dashboard.kyc_approved', 'base', 'KYC Approved', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(295, 'dashboard.kyc_application', 'base', 'KYC Application', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(296, 'dashboard.kyc_pending', 'base', 'KYC Pending', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(297, 'dashboard.submit_kyc', 'base', 'Submit KYC', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(298, 'dashboard.your_contribution_in', 'base', 'Your Contribution in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(299, 'dashboard.token_balance', 'base', 'Token Balance', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(300, 'dashboard.token_name', 'base', 'Token Name', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25');
INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(301, 'dashboard.token_symbol', 'base', 'Token Symbol', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(302, 'dashboard.white_paper', 'base', 'White Paper', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(303, 'dashboard.contact_support', 'base', 'Contact Support', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(304, 'dashboard.my_profile', 'base', 'My Profile', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(305, 'dashboard.referral', 'base', 'Referral', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(306, 'dashboard.referral_url', 'base', 'Referral URL', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(307, 'dashboard.referral_lists', 'base', 'Referral Lists', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(308, 'dashboard.activity', 'base', 'Activity', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(309, 'dashboard.download_whitepaper', 'base', 'Download Whitepaper', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(310, 'dashboard.add_wallet_befor', 'base', 'Add your wallet address before buy', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(311, 'dashboard.account_status', 'base', 'Your Account Status', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(312, 'dashboard.receiving_wallet', 'base', 'Receiving Wallet', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(313, 'dashboard.new_address', 'base', 'New address under review for approve.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(314, 'dashboard.your_wallet', 'base', 'Add Your Wallet Address', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(315, 'dashboard.earn_with_referral', 'base', 'Earn with Referral', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(316, 'dashboard.invite_friends', 'base', 'Invite your friends & family.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(317, 'dashboard.refer_link', 'base', 'Use above link to refer your friend and get referral bonus.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(318, 'dashboard.contact_support_team', 'base', 'Contact our support team via email', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(319, 'dashboard.current_bonus', 'base', 'Current Bonus', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(320, 'dashboard.start_date', 'base', 'Start Date', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(321, 'dashboard.end_date', 'base', 'End Date', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(322, 'dashboard.bonus_start_in', 'base', 'The Bonus Start in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(323, 'dashboard.bonus_end_in', 'base', 'The Bonus End in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(324, 'dashboard.token_sales_progress', 'base', 'Token Sales Progress', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(325, 'dashboard.raised', 'base', 'Raised', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(326, 'dashboard.total', 'base', 'Total', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(327, 'dashboard.sales_end_in', 'base', 'Sales End in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(328, 'dashboard.sales_end_at', 'base', 'Sales End at', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(329, 'dashboard.sales_start_in', 'base', 'Sales Start in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(330, 'dashboard.sales_start_at', 'base', 'Sales Start at', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(331, 'dashboard.raised_amount', 'base', 'Raised Amount', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(332, 'dashboard.total_token', 'base', 'Total Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(333, 'dashboard.hard_cap', 'base', 'Hard Cap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(334, 'dashboard.hardcap', 'base', 'Hardcap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(335, 'dashboard.soft_cap', 'base', 'Soft Cap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(336, 'dashboard.softcap', 'base', 'Softcap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(337, 'dashboard.token_sales_finished', 'base', 'Our token sales has been finished. Thank you very much for your contribution.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(338, 'dashboard.view_transaction', 'base', 'View Transaction', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(339, 'dashboard.tranx_types', 'base', 'Types', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(340, 'dashboard.tranx_type', 'base', 'Type', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(341, 'dashboard.purchased_title', 'base', 'Purchased', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(342, 'dashboard.user_name', 'base', 'User Name', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(343, 'dashboard.title_note', 'base', 'Note:', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(344, 'dashboard.title_details', 'base', 'Details', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(345, 'dashboard.oops', 'base', 'Oops!!!', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(346, 'dashboard.token_title', 'base', 'My :symbol Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(347, 'dashboard.buy_more', 'base', 'Buy More Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(348, 'dashboard.equivalent_to', 'base', 'Equivalent to', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(349, 'dashboard.total_token_amount', 'base', 'Total Token Amount', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(350, 'dashboard.purchased_token', 'base', 'Purchased Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(351, 'dashboard.referral_token', 'base', 'Referral Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(352, 'dashboard.bonuses_token', 'base', 'Bonuses Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(353, 'dashboard.total_contributed', 'base', 'Total Contributed', 'dashboard, global', 'system', 'any', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(354, 'profile.profile_details', 'base', 'Profile Details', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(355, 'profile.email_confirm', 'base', 'Your password will only change after your confirmation by email.', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(356, 'profile.personal_data', 'base', 'Personal Data', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(357, 'profile.settings', 'base', 'Settings', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(358, 'profile.full_name', 'base', 'Full Name', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(359, 'profile.email_address', 'base', 'Email Address', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(360, 'profile.mobile_number', 'base', 'Mobile Number', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(361, 'profile.date_of_birth', 'base', 'Date of Birth', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(362, 'profile.nationality', 'base', 'Nationality', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(363, 'profile.select_country', 'base', 'Select Country', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(364, 'profile.update_profile', 'base', 'Update Profile', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(365, 'profile.security_settings', 'base', 'Security Settings', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(366, 'profile.save_activities_log', 'base', 'Save my activities log', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(367, 'profile.confirm_email', 'base', 'Confirm me through email before password change', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(368, 'profile.manage_notification', 'base', 'Manage Notification', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(369, 'profile.resumption_notify', 'base', 'Notify me by email about resumption of sales', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(370, 'profile.sales_notify', 'base', 'Notify me by email about sales and latest news', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(371, 'profile.unusual_activity', 'base', 'Alert me by email in case of unusual activity in my account', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(372, 'profile.update', 'base', 'Update', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(373, 'profile.old_password', 'base', 'Old Password', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(374, 'profile.new_password', 'base', 'New Password', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(375, 'profile.confirm_password', 'base', 'Confirm New Password', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(376, 'profile.min_6_digit', 'base', 'Password should be a minimum of 6 digits and include lower and uppercase letter.', 'user_profile, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(377, 'profile.activitiy_log', 'base', 'Account Activities Log', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(378, 'profile.activitiy_clear', 'base', 'Clear All', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(379, 'profile.activitiy_note', 'base', 'Here is your recent activities. You can clear this log as well as disable the feature from profile settings tabs.', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(380, 'profile.activitiy_date', 'base', 'Date', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(381, 'profile.activitiy_device', 'base', 'Device', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(382, 'profile.activitiy_browser', 'base', 'Browser', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(383, 'profile.activitiy_ip', 'base', 'IP', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(384, 'profile.activitiy_delete_log', 'base', 'Once Delete, You will not get back this log in future!', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(385, 'profile.tranx_list', 'base', 'Transactions list', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(386, 'profile.tranx_amount', 'base', 'Amount', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(387, 'profile.tranx_from', 'base', 'From', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(388, 'profile.tranx_to', 'base', 'To', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(389, 'profile.tranx_pay', 'base', 'Pay', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(390, 'profile.token_types', 'base', 'Token Types', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(391, 'profile.tokens', 'base', 'Tokens', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(392, 'profile.tranx_no', 'base', 'Tranx NO', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(393, 'profile.no_data', 'base', 'No data available in table', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(394, 'profile.no_records', 'base', 'No records', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(395, 'profile.search_placeholder', 'base', 'Type in to Search', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(396, 'profile.cap_types', 'base', 'TYPES', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(397, 'profile.any_type', 'base', 'Any Type', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(398, 'profile.purchase', 'base', 'Purchase', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(399, 'profile.cap_status', 'base', 'STATUS', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(400, 'profile.cap_show_all', 'base', 'Show All', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(401, 'profile.approved', 'base', 'Approved', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(402, 'profile.pending', 'base', 'Pending', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(403, 'profile.canceled', 'base', 'Canceled', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(404, 'kyc.verify_title', 'base', 'KYC Verification', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(405, 'kyc.verify_title_sub', 'base', 'To comply with regulations each participant is required to go through identity verification (KYC/AML) to prevent fraud, money laundering operations, transactions banned under the sanctions regime or those which fund terrorism. Please, complete our fast and secure verification process to participate in token offerings.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(406, 'kyc.identity_title', 'base', 'Identity Verification - KYC', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(407, 'kyc.identity_desc', 'base', 'To comply with regulation, participant will have to go through identity verification.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(408, 'kyc.form_not_submitted', 'base', 'You have not submitted your necessary documents to verify your identity.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(409, 'kyc.form_submit', 'base', 'It would great if you please submit the form. If you have any question, please feel free to contact our support team.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(410, 'kyc.complete_kyc', 'base', 'Click here to complete your KYC', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(411, 'kyc.completed_kyc', 'base', 'You have completed the process of KYC', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(412, 'kyc.waiting_id_verify', 'base', 'We are still waiting for your identity verification. Once our team verified your identity, you will be notified by email. You can also check your KYC compliance status from your profile page.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(413, 'kyc.back_to_profile', 'base', 'Back to Profile', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(414, 'kyc.under_process', 'base', 'Your application verification under process.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(415, 'kyc.still_working', 'base', 'We are still working on your identity verification. Once our team verified your identity, you will be notified by email.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(416, 'kyc.resubmit_form', 'base', 'In our verification process, we found information that is incorrect or missing. Please resubmit the form. In case of any issues with the submission please contact our support team.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(417, 'kyc.submit_again', 'base', 'Submit Again', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(418, 'kyc.verified_title', 'base', 'Your identity verified successfully.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(419, 'kyc.verified_desc', 'base', 'One of our team members verified your identity. Now you can participate in our token sale. Thank you.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(420, 'kyc.info_missing', 'base', 'We found some information to be missing.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(421, 'kyc.form_rejected', 'base', 'Sorry! Your application was rejected.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(422, 'kyc.verify_head', 'base', 'Begin your ID-Verification', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(423, 'kyc.verify_text', 'base', 'In order to purchase our tokens, please verify your identity.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(424, 'kyc.verify_text_token', 'base', 'Verify your identity to participate in token sale.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(425, 'kyc.not_submitted', 'base', 'You have not submitted your documents to verify your identity (KYC).', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(426, 'kyc.click_proceed', 'base', 'Click to Proceed', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(427, 'kyc.document_received', 'base', 'We have received your document.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(428, 'kyc.review_information', 'base', 'We will review your information and if all is in order will approve your identity. You will be notified by email once we verified your identity (KYC).', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(429, 'kyc.kyc_rejected', 'base', 'KYC Application has been rejected!', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(430, 'kyc.resubmit_application', 'base', 'We were having difficulties verifying your identity. In our verification process, we found information are incorrect or missing. Please re-submit the application again and verify your identity.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(431, 'kyc.resubmit', 'base', 'Resubmit', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(432, 'kyc.kyc_verified', 'base', 'Identity (KYC) has been verified.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(433, 'kyc.token_sale', 'base', 'One for our team verified your identity. You are eligible to participate in our token sale.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(434, 'kyc.purchase_token', 'base', 'Purchase Token', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(435, 'kyc.kyc_verification_required', 'base', 'KYC verification required for purchase token', 'dashboard, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(436, 'kyc.form.personal_details', 'base', 'Personal Details', 'kyc, kyc_form, global', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(437, 'kyc.form.personal_details_sub', 'base', 'Your basic personal information is required for identification purposes.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(438, 'kyc.form.personal_details_note', 'base', 'Please type carefully and fill out the form with your personal details. You are not allowed to edit the details once you have submitted the application.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(439, 'kyc.form.first_name', 'base', 'First Name', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(440, 'kyc.form.last_name', 'base', 'Last Name', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(441, 'kyc.form.phone_number', 'base', 'Phone Number', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(442, 'kyc.form.gender', 'base', 'Gender', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(443, 'kyc.form.select_gender', 'base', 'Select Gender', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(444, 'kyc.form.male', 'base', 'Male', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(445, 'kyc.form.female', 'base', 'Female', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(446, 'kyc.form.other', 'base', 'Other', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(447, 'kyc.form.telegram_username', 'base', 'Telegram Username', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(448, 'kyc.form.your_address', 'base', 'Your Address', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(449, 'kyc.form.country', 'base', 'Country', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(450, 'kyc.form.state', 'base', 'State', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(451, 'kyc.form.city', 'base', 'City', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(452, 'kyc.form.postal_code', 'base', 'Zip / Postal Code', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(453, 'kyc.form.address_line_1', 'base', 'Address Line 1', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(454, 'kyc.form.address_line_2', 'base', 'Address Line 2', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(455, 'kyc.form.document_upload', 'base', 'Document Upload', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(456, 'kyc.form.scan_documents', 'base', 'To verify your identity, we ask you to upload high-quality scans or photos of your official identification documents issued by the government.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(457, 'kyc.form.upload_documents', 'base', 'In order to complete, please upload any of the following personal documents.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(458, 'kyc.form.passport', 'base', 'Passport', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(459, 'kyc.form.national_id_card', 'base', 'National ID Card', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(460, 'kyc.form.driver_license', 'base', 'Driver’s License', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(461, 'kyc.form.check_requirements', 'base', 'To avoid delays with verification process, please double-check to ensure the below requirements are fully met:', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(462, 'kyc.form.visible_documents', 'base', 'Document should be in good condition and clearly visible.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(463, 'kyc.form.no_glare', 'base', 'There is no light glare or reflections on the card.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(464, 'kyc.form.not_expire_credentials', 'base', 'Chosen credential must not be expired.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(465, 'kyc.form.file_limitation', 'base', 'File is at least 1 MB in size and has at least 300 dpi resolution.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(466, 'kyc.form.drag_and_drop_file', 'base', 'Drag and drop file', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(467, 'kyc.form.select', 'base', 'Select', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(468, 'kyc.form.or', 'base', 'or', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(469, 'kyc.form.upload_doc_copy', 'base', 'Upload Here Your :doctype Copy', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(470, 'kyc.form.nid_back_side', 'base', 'Upload Here Your National ID Back Side', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(471, 'kyc.form.photo_selfie', 'base', 'Upload a selfie as a Photo Proof while holding document in your hand', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(472, 'kyc.form.paying_wallet', 'base', 'Your Paying Wallet', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(473, 'kyc.form.paying_wallet_submit', 'base', 'Submit your wallet address that you are going to send funds', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(474, 'kyc.form.paying_wallet_note', 'base', 'DO NOT USE your exchange wallet address such as Kraken, Bitfinex, Bithumb, Binance etc.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(475, 'kyc.form.select_wallet', 'base', 'Select Wallet', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(476, 'kyc.form.enter_your_wallet', 'base', 'Enter your wallet address', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(477, 'kyc.form.your_wallet_address', 'base', 'Your personal wallet address', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(478, 'kyc.form.agree_terms', 'base', 'I have read the', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(479, 'kyc.form.agree_info', 'base', 'All the personal information I have entered is correct.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(480, 'kyc.form.agree_individual', 'base', 'I certify that, I am registering to participate in the token distribution event(s) in the capacity of an individual (and beneficial owner) and not as an agent or representative of a third party corporate entity.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(481, 'kyc.form.agree_final', 'base', 'I understand that, I can participate in the token distribution event(s) only with the wallet address that was entered in the application form.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(482, 'kyc.form.proceed', 'base', 'Proceed to Verify', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(483, 'kyc.form.confirm_terms', 'base', 'You should read our terms and policy.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(484, 'kyc.form.confirm_info', 'base', 'Confirm that all information is correct.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(485, 'kyc.form.confirm_individual', 'base', 'Certify that you are individual.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(486, 'kyc.form.confirm_final', 'base', 'Confirm that you understand.', 'kyc', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(487, 'buy_token.sale_start_soon', 'base', 'Our sale will start soon. Please check back at a later date/time or feel free to contact us.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:25', '2021-10-10 00:32:25'),
(488, 'buy_token.calculate', 'base', 'Choose currency and calculate :SYMBOL token price', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(489, 'buy_token.choose_currency', 'base', 'You can buy our :SYMBOL token using the below currency choices to become part of our project.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(490, 'buy_token.amount_of_contribute', 'base', 'Amount of contribute', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(491, 'buy_token.contribute_amout', 'base', 'Enter the amount you would like to contribute in order to calculate the amount of tokens you will receive. The calculator below helps to convert the required quantity of tokens into the amount of your selected currency.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(492, 'buy_token.minimum_amount', 'base', 'Minimum contribution amount is required.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(493, 'buy_token.bonus', 'base', 'Bonus', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(494, 'buy_token.on_sale', 'base', 'On Sale', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(495, 'buy_token.sale_bonus', 'base', 'Sale Bonus', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(496, 'buy_token.amount_bonus', 'base', 'Amount Bonus', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(497, 'buy_token.exchange_note', 'base', 'Your contribution will be calculated based on exchange rate at the moment when your transaction is confirmed.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(498, 'buy_token.payment_button', 'base', 'Make Payment', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(499, 'buy_token.token_note', 'base', 'Tokens will appear in your account after payment successfully made and approved by our team. Please note that, :SYMBOL token will be distributed after the token sales end-date.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(500, 'buy_token.token_sales', 'base', 'Token Sales', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(501, 'buy_token.token_price', 'base', 'Token Price', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(502, 'buy_token.exchange_rate', 'base', 'Exchange Rate', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(503, 'buy_token.end_at', 'base', 'End at', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(504, 'buy_token.choose_method', 'base', 'You can choose any of following payment method to make your payment. The token balance will appear in your account after successful payment.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(505, 'buy_token.select_method', 'base', 'Select payment method:', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(506, 'buy_token.appear_address', 'base', 'Our payment address will appear or redirect you for payment after your order placed.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(507, 'buy_token.charge_fee', 'base', 'Payment gateway may charge you a processing fees.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(508, 'buy_token.maximum_amount_reached', 'base', 'Maximum amount reached, You can purchase maximum :amount :symbol per transaction.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(509, 'buy_token.purchase_minimum_amount', 'base', 'You must purchase minimum :amount :symbol.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(510, 'buy_token.sales_finished', 'base', 'Our sales has been finished. Thank you very much for your interest.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(511, 'buy_token.token_not_available', 'base', ':amount :symbol Token is not available.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(512, 'buy_token.available_amount', 'base', 'Available :amount :symbol only, You can purchase less than :amount :symbol Token.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(513, 'buy_token.transaction_may_deleted', 'base', 'Sorry, we\'re unable to proceed the transaction. This transaction may deleted. Please contact with administrator.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(514, 'buy_token.transaction_already_status', 'base', 'Your transaction is already :status. Sorry, we\'re unable to proceed the transaction.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(515, 'buy_token.transaction_status_check_account', 'base', 'Your transaction is already :status. Please check your account balance.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(516, 'buy_token.transaction_not_found', 'base', 'Transaction is not found!!', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(517, 'buy_token.transaction_not_valid', 'base', 'Transaction id or key is not valid!', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(518, 'buy_token.maximum_purchase', 'base', 'Maximum you can purchase :maximum_token token per contribution.', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(519, 'buy_token.minimum_token', 'base', 'Enter minimum :minimum_token token and select currency!', 'buy_token', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(520, 'payment.order.title', 'base', 'Confirmation Your Payment', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(521, 'payment.order.cancel_title', 'base', 'Oops! Payment Canceled!', 'payment, cancel', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(522, 'payment.order.cancel_desc', 'base', 'You have canceled your payment. If you continue to have issues, please contact us with order no. :orderid.', 'payment, cancel', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(523, 'payment.order.close', 'base', 'Close', 'payment, cancel', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(524, 'payment.order.placed', 'base', 'Your Order no. :orderid has been placed successfully.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(525, 'payment.order.pending', 'base', 'Your Order no. :orderid has been placed & waiting for payment.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(526, 'payment.order.onhold', 'base', 'Your Order no. :orderid has been placed & waiting for team approval.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(527, 'payment.info.crypto_amount', 'base', 'Please send :amount :currency to the address below. The token balance will appear in your account only after transaction gets :num confirmation and approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(528, 'payment.info.crypto_receive', 'base', 'To receiving :token :symbol token, please send :amount :currency to the address below. The token balance will appear in your account only after transaction gets :num confirmation and approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(529, 'payment.info.bank_amount', 'base', 'Please make your payment of :amount :currency through bank to the below bank address. The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(530, 'payment.info.bank_receive', 'base', 'To receiving :token :symbol token, please make your payment of :amount :currency through bank to the below bank address. The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(531, 'payment.info.gateway_amount', 'base', 'The token balance will appear in your account only after you transaction gets :num confirmations and approved by :gateway.', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(532, 'payment.info.gateway_receive', 'base', 'To receiving :token :symbol token, please make your payment of :amount :currency through :gateway. The token balance will appear in your account after we received your payment.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(533, 'payment.info.wallet_verify', 'base', 'To speed up verification process please enter your wallet address from where you\'ll transferring your amount to our address.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(534, 'payment.info.hash_verify', 'base', 'To speed up verification process, please enter your transaction hash or payment id.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(535, 'payment.wallet_address', 'base', 'Enter Your Wallet Address', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(536, 'payment.payment_address', 'base', 'Insert your payment address', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(537, 'payment.cancel_order', 'base', 'Cancel Order', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(538, 'payment.select_method', 'base', 'Select your payment method.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(539, 'payment.note_hint', 'base', 'Do not make payment through exchange (Kraken, Bitfinex). You can use MyEtherWallet, MetaMask, Mist wallets etc.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(540, 'payment.note_alert', 'base', 'In case you send a different amount, number of :SYMBOL token will update accordingly.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(541, 'payment.note_redirect', 'base', 'Our payment address will appear or redirect you for payment after the order is placed.', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(542, 'payment.payment_process', 'base', 'Payment Process', 'payment, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(543, 'payment.payment_confirm', 'base', 'Confirm Payment', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(544, 'payment.skip_address', 'base', 'I\'ll provide wallet address later', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(545, 'payment.gas_limit', 'base', 'SET GAS LIMIT:', 'payment, offline', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(546, 'payment.gas_price', 'base', 'SET GAS PRICE:', 'payment, offline', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(547, 'payment.send_amount_to', 'base', 'Send Amount:', 'payment, order', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(548, 'payment.amount_with_bonus', 'base', 'Please make payment of :amount to receive :token_amount token including bonus :token_bonus token.', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(549, 'payment.amount_no_bonus', 'base', 'Please make payment of :amount to receive :token_amount token.', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(550, 'payment.deposit_title', 'base', 'Payment Address for Deposit', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(551, 'payment.deposit_address', 'base', 'Payment to the following :Name Wallet Address', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(552, 'payment.deposit_address_or_scan', 'base', 'Payment to the following :Name Wallet Address Or scan the QR code', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(553, 'payment.scan_code', 'base', 'Scan QR code to payment.', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(554, 'payment.agree_terms', 'base', 'I hereby agree to the token purchase agreement and token sale term.', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(555, 'payment.no_method', 'base', 'Sorry! There is no payment method available for this currency. Please choose another currency or contact our support team.', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(556, 'payment.review_title', 'base', 'We\'re reviewing your payment.', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(557, 'payment.review_desc', 'base', 'We\'ll review your transaction and get back to your within 6 hours. You\'ll receive an email with the details of your contribution.', 'payment, manual', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(558, 'payment.already_paid', 'base', 'Click here if you already paid', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(559, 'payment.bellow_address', 'base', 'Make your payment to the below address', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(560, 'payment.check_status', 'base', 'Check Status', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(561, 'payment.gateway_status', 'base', 'Check status on :gateway', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(562, 'payment.send_amount', 'base', 'Please send :amount :currency to the address below.', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(563, 'payment.pay_or_cancel', 'base', 'Click the Pay button below to make payment for this transaction, or you can cancel this transaction.', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(564, 'payment.refunded_token', 'base', 'Refunded Token', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(565, 'payment.refunded_amount', 'base', 'Refunded Amount', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(566, 'payment.refund_note', 'base', 'Refund Note', 'payment, online', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(567, 'payment.bank_details', 'base', 'Bank Details for Payment', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(568, 'payment.bank_note', 'base', 'The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(569, 'payment.bank_iban', 'base', 'IBAN', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(570, 'payment.bank_name', 'base', 'Bank Name', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(571, 'payment.bank_address', 'base', 'Bank Address', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(572, 'payment.bank_routing', 'base', 'Routing Number', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(573, 'payment.bank_swift', 'base', 'Swift/BIC', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(574, 'payment.bank_account_name', 'base', 'Account Name', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(575, 'payment.bank_account_number', 'base', 'Account Number', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(576, 'payment.bank_account_address', 'base', 'Account Holder Address', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(577, 'payment.bank_make_payment', 'base', 'Make Payment to the Following Bank Account', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(578, 'payment.bank_referance', 'base', 'Use this transaction id (#:orderid) as reference. Make your payment within 24 hours, If we will not received your payment within 24 hours, then we will cancel the transaction.', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(579, 'payment.pay_via', 'base', 'Pay via', 'payment, bank', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(580, 'tranx.details', 'base', 'Transaction Details', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(581, 'tranx.order_no', 'base', 'The order no. :orderid was placed on :datetime.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(582, 'tranx.successfully_paid', 'base', 'You have successfully paid this transaction', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(583, 'tranx.via', 'base', 'via', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(584, 'tranx.wallet', 'base', 'wallet', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(585, 'tranx.order_failed', 'base', 'Sorry! Your order has been :status due to payment.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(586, 'tranx.canceled_transfer_request', 'base', 'The transfer request was canceled at :time.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(587, 'tranx.under_review', 'base', 'The transaction is currently under review. We will send you an email once our review is complete.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(588, 'tranx.canceled_admin', 'base', 'The transaction was canceled by Administrator at :time.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(589, 'tranx.canceled_user', 'base', 'You have canceled this transaction.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(590, 'tranx.approved_admin', 'base', 'Transaction has been approved at :time.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(591, 'tranx.token_details', 'base', 'Token Details', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(592, 'tranx.token_of_stage', 'base', 'Token of Stage', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(593, 'tranx.token_amount', 'base', 'Token Amount (T)', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(594, 'tranx.bonus_token', 'base', 'Bonus Token (B)', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(595, 'tranx.offline_payment', 'base', 'Offline Payment', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(596, 'tranx.online_payment', 'base', 'Online Payment', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26');
INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(597, 'tranx.issue_occured', 'base', 'Sorry, seems there is an issues occurred and we couldn’t process your request. Please contact us with your order no. :orderid, if you continue to having the issues.', 'transaction, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(598, 'wallet.do_not_use', 'base', 'DO NOT USE your exchange wallet address OR if you don\'t have a private key of the your address. You WILL NOT receive your token and WILL LOSE YOUR FUNDS if you do.', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(599, 'wallet.erc_address', 'base', 'Address should be ERC20-compliant.', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(600, 'wallet.receive_info', 'base', 'In order to receive your :SYMBOL token, please select your wallet address and you have to put the address below input box. You will receive :SYMBOL token to this address after the token sale end.', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(601, 'wallet.current', 'base', 'Current Wallet', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(602, 'wallet.type', 'base', 'Wallet Type', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(603, 'wallet.receive_address', 'base', ':Name Wallet Address for receiving token', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(604, 'wallet.add_wallet', 'base', 'Add Wallet', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(605, 'wallet.enter_wallet', 'base', 'Enter your :Name wallet address', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(606, 'wallet.enter_new_wallet', 'base', 'Enter your new :Name wallet address', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(607, 'wallet.request', 'base', 'Request for change', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(608, 'wallet.request_update', 'base', 'Request for Update Wallet', 'user_wallet', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(609, 'status.approved', 'base', 'Approved', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(610, 'status.pending', 'base', 'Pending', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(611, 'status.progress', 'base', 'Progress', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(612, 'status.rejected', 'base', 'Rejected', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(613, 'status.warning', 'base', 'Warning', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(614, 'status.success', 'base', 'Success', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(615, 'status.running', 'base', 'Running', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(616, 'status.upcoming', 'base', 'Upcoming', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(617, 'status.completed', 'base', 'Completed', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(618, 'status.expired', 'base', 'Expired', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(619, 'status.pause', 'base', 'Pause', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(620, 'status.inactive', 'base', 'Inactive', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(621, 'status.edit', 'base', 'Edit', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(622, 'status.add', 'base', 'Add', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(623, 'status.see', 'base', 'See', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(624, 'status.more', 'base', 'More', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(625, 'status.view', 'base', 'View', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(626, 'status.enable', 'base', 'Enable', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(627, 'status.enabled', 'base', 'Enabled', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(628, 'status.disable', 'base', 'Disable', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(629, 'status.disabled', 'base', 'Disabled', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(630, 'status.proceed', 'base', 'Proceed', 'status, global', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(631, 'auth.2fa.hello', 'base', 'Hello', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(632, 'auth.2fa.title', 'base', '2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(633, 'auth.2fa.reset_2fa', 'base', 'Reset 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(634, 'auth.2fa.enable_2fa', 'base', 'Enable 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(635, 'auth.2fa.confirm_2fa', 'base', 'Confirm 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(636, 'auth.2fa.disable_2fa', 'base', 'Disable 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(637, 'auth.2fa.current_status', 'base', 'Current Status:', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(638, 'auth.2fa.authentication', 'base', '2FA Authentication', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(639, 'auth.2fa.two-factor_verification', 'base', 'Two-Factor Verification', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(640, 'auth.2fa.verify_code', 'base', 'Enter the Code to verify', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(641, 'auth.2fa.reset_authentication', 'base', 'Reset 2FA Authentication', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(642, 'auth.2fa.authentication_code', 'base', 'Enter your authentication code', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(643, 'auth.2fa.google_code', 'base', 'Enter Google Authenticator Code', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(644, 'auth.2fa.auth', 'base', 'Two-factor authentication is a method for protection of your account. When it is activated you are required to enter not only your password, but also a special code. You can receive this code in mobile app. Even if third party gets access to your password, they still won\'t be able to access your account without the 2FA code.', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(645, 'auth.2fa.lost_access', 'base', 'If you lost your phone or uninstall the Google Authenticator app, then you will lost access of your account.', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(646, 'auth.2fa.step_2', 'base', 'Step 2:', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(647, 'auth.2fa.scan_qr_code', 'base', 'Scan the below QR code by your Google Authenticator app, or you can add account manually.', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(648, 'auth.2fa.manually_add_account', 'base', 'Manually add Account:', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(649, 'auth.2fa.account_name', 'base', 'Account Name:', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(650, 'auth.2fa.key', 'base', 'Key:', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(651, 'auth.2fa.verification_code', 'base', 'Enter the verification code generated by your mobile application (Google Authenticator).', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(652, 'auth.2fa.contact_us', 'base', 'If you lost your phone or Uninstall the Google Authenticator app and enable to access your account please contact with us.', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(653, 'auth.2fa.step_1', 'base', 'Step 1:', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(654, 'auth.2fa.install_this_app_from', 'base', 'Install this app from', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(655, 'auth.2fa.google_play', 'base', 'Google Play', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(656, 'auth.2fa.store_or', 'base', 'store or', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(657, 'auth.2fa.app_store', 'base', 'App Store', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(658, 'auth.2fa.reset_auth', 'base', 'Please enter your account password to reset 2FA authentication.', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(659, 'auth.2fa.invalid', 'base', 'You have provide a invalid 2FA authentication code!', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(660, 'auth.2fa.wrong', 'base', 'Please enter a valid authentication code!', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(661, 'auth.2fa.enabled', 'base', 'Successfully enable 2FA security in your account.', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(662, 'auth.2fa.disabled', 'base', 'Successfully disable 2FA security in your account.', 'user_2fa', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(663, 'transfer.send_token_friend', 'base', 'Send Token to Your Friend', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(664, 'transfer.available_token_balance', 'base', 'Available Token Balance:', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(665, 'transfer.receiver_email', 'base', 'Receiver/Friend Email', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(666, 'transfer.enter_receiver_email', 'base', 'Enter receiver email', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(667, 'transfer.enter_valid_email_address', 'base', 'Enter a valid email address, which is associated with our platform.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(668, 'transfer.enter_token_number', 'base', 'Enter token number', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(669, 'transfer.minimum_send', 'base', 'Minimum Send: :amount :symbol', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(670, 'transfer.you_do_not_have_token', 'base', 'You do not have enough token to send.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(671, 'transfer.you_can_not_send_token_now', 'base', 'You can not send token right now.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(672, 'transfer.enter_number_of_token', 'base', 'Enter number of token you would like to send.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(673, 'transfer.please_enter_minimum', 'base', 'Please enter minimum number of token.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(674, 'transfer.before_clicking_proceed', 'base', 'Before clicking the &quot;Proceed&quot; button, be sure that you want to send token. You can not cancel the request once you proceed.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(675, 'transfer.can_not_send_token_to_friend', 'base', 'Sorry! right now you can not send token to your friend account. Please contact us if you have any question.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(676, 'transfer.invite_your_friend_send_token', 'base', 'You can invite your friend to join our platform and also you can send your token to your friend using his email address.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(677, 'transfer.see_transactions', 'base', 'See Transactions', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(678, 'transfer.send_token', 'base', 'Send Token', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(679, 'withdraw.withdrawal', 'base', 'Withdrawal', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(680, 'withdraw.withdraw_wallet', 'base', 'Withdraw Wallet', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(681, 'withdraw.reference_hash', 'base', 'Reference Hash', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(682, 'withdraw.Wwithdraw_details', 'base', 'Withdraw Details', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(683, 'withdraw.request_at', 'base', 'Request At', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(684, 'withdraw.notes', 'base', 'Notes', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(685, 'withdraw.received_withdraw_request', 'base', 'We have received your withdraw request and our team will proceed shortly. We will send you an email once we have completed your withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(686, 'withdraw.withdraw_transaction', 'base', 'Withdraw transaction has been :status at :time.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(687, 'withdraw.canceled_withdraw_request', 'base', 'You have canceled the withdraw request.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(688, 'withdraw.token', 'base', 'Withdraw Token', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(689, 'withdraw.amount', 'base', 'Withdraw Amount (:TOKEN)', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(690, 'withdraw.minimum', 'base', 'Minimum Withdraw:', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(691, 'withdraw.choose_coin', 'base', 'Choose Coin', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(692, 'withdraw.on_same', 'base', 'Withdraw will be on same.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(693, 'withdraw.receiving_wallet_address', 'base', 'Wallet Address for Receiving', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(694, 'withdraw.your_wallet_address', 'base', 'Your wallet address', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(695, 'withdraw.provide_valid_wallet_address', 'base', 'Provide a valid wallet address for withdraw your token.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(696, 'withdraw.your_will_get', 'base', 'Your will Get:', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(697, 'withdraw.withdraw', 'base', 'Withdraw', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(698, 'withdraw.do_not_have_token_to_withdraw', 'base', 'You do not have enough token to withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(699, 'withdraw.can_not_withdraw', 'base', 'You can not withdraw right now.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(700, 'see_', 'base', 'Withdraw History', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(701, 'withdraw.id', 'base', 'Withdraw ID', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(702, 'withdraw.wallet', 'base', 'Wallet Address', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(703, 'withdraw.information', 'base', 'Information', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(704, 'withdraw.enter_wallet', 'base', 'Enter your wallet address for withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(705, 'withdraw.can_not_withdraw_token', 'base', 'Sorry! right now you can not withdraw token. Please contact us if you have any question.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(706, 'withdraw.withdraw_funds_process', 'base', 'You can withdraw the your funds and we will process soon.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(707, 'withdraw.withdraw_your_token', 'base', 'Withdraw Your Token', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(708, 'withdraw.withdraw_your_token_any_time', 'base', 'You can withdraw your token any time, we will processed withing 24 hours after your withdraw request.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(709, 'withdraw.see_history', 'base', 'See Withdraw History', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(710, 'referral.referee', 'base', 'Referee', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(711, 'referral.earn_token', 'base', 'Earn Token', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(712, 'referral.bought_token', 'base', 'Bought Token', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(713, 'referral.register_date', 'base', 'Register Date', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(714, 'referral.no_one_join_yet!', 'base', 'No one join yet!', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(715, 'referral.not_purchased', 'base', 'Not purchased yet', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(716, 'referral.token_purchase', 'base', 'Token purchase by', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(717, 'referral.referred_by', 'base', 'You are referred by', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(718, 'referral.received_token', 'base', 'You have received bonus token.', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(719, 'referral.refered_by', 'base', 'Your were invited by :userid', 'referral', 'system', 'user', 0, '2021-10-10 00:32:26', '2021-10-10 00:32:26'),
(720, 'messages.email_exist', 'vi', 'Email is already exist!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(721, 'messages.email.unique', 'vi', 'Email address should be unique!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(722, 'messages.email.reset', 'vi', 'Somthing is wrong! We are unable to send reset link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(723, 'messages.email.verify', 'vi', 'Somthing is wrong! We are unable to send the verification link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(724, 'messages.email.password_change', 'vi', 'Somthing is wrong! We are unable to send the confirmation link to your email. Please! contact with administrator via :email.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(725, 'messages.email.failed', 'vi', 'But email was not send to user. Please check your mail setting credential.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(726, 'messages.form.invalid', 'vi', 'Invalid form data!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(727, 'messages.form.wrong', 'vi', 'Something wrong in form submission!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(728, 'messages.wrong', 'vi', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(729, 'messages.nothing', 'vi', 'Nothing to do!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(730, 'messages.agree', 'vi', 'You should agree our terms and policy.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(731, 'messages.errors', 'vi', 'An error occurred. Please try again.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(732, 'messages.login.email_verify', 'vi', 'Please login to verify you email address.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(733, 'messages.login.inactive', 'vi', 'Your account may inactive or suspended. Please contact us if something wrong.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(734, 'messages.register.success.heading', 'vi', 'Thank you!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(735, 'messages.register.success.subhead', 'vi', 'Your sign-up process is almost done.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(736, 'messages.register.success.msg', 'vi', 'Please check your email and verify your account.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(737, 'messages.verify.verified', 'vi', 'Email address is already verified.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(738, 'messages.verify.not_found', 'vi', 'User Account is not found!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(739, 'messages.verify.expired', 'vi', 'Your verification link is expired!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(740, 'messages.verify.invalid', 'vi', 'Your verification link is invalid!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(741, 'messages.verify.confirmed', 'vi', 'Your email is verified now!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(742, 'messages.verify.success.heading', 'vi', 'Congratulations!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(743, 'messages.verify.success.subhead', 'vi', 'You\'ve successfully verified your email address and your account is now active.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(744, 'messages.verify.success.msg', 'vi', 'Please sign-in to start token purchase.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(745, 'messages.trnx.created', 'vi', 'Transaction successful, You will redirect to payment page.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(746, 'messages.trnx.wrong', 'vi', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(747, 'messages.trnx.required', 'vi', 'Transaction id is required!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(748, 'messages.trnx.canceled', 'vi', 'Transaction failed! Try again.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(749, 'messages.trnx.notfound', 'vi', 'Transaction id is not found', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(750, 'messages.trnx.reviewing', 'vi', 'We are reviewing your payment!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(751, 'messages.trnx.canceled_own', 'vi', 'You had canceled your order', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(752, 'messages.trnx.require_currency', 'vi', 'Currency is required!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(753, 'messages.trnx.require_token', 'vi', 'Token amount is required!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(754, 'messages.trnx.select_method', 'vi', 'Select payment method!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(755, 'messages.trnx.minimum_token', 'vi', 'You have to purchase more than 1 token.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(756, 'messages.trnx.purchase_token', 'vi', 'Tokens Purchase', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(757, 'messages.trnx.referral_bonus', 'vi', 'Referral Bonus', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(758, 'messages.trnx.payments.not_available', 'vi', 'Sorry! Currently payment method not available in your selected currency!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(759, 'messages.trnx.manual.success', 'vi', 'Transaction successful!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(760, 'messages.trnx.manual.failed', 'vi', 'Transaction Failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(761, 'messages.trnx.admin.approved', 'vi', 'Transaction approved and token added to user.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(762, 'messages.trnx.admin.canceled', 'vi', 'Transaction canceled.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(763, 'messages.trnx.admin.deleted', 'vi', 'Transaction Deleted.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(764, 'messages.trnx.admin.already_deleted', 'vi', 'This transaction is already deleted.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(765, 'messages.trnx.admin.already_approved', 'vi', 'This transaction is already approved.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(766, 'messages.trnx.admin.already_canceled', 'vi', 'This transaction is already canceled.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(767, 'messages.trnx.admin.already_updated', 'vi', 'This transaction is already updated to :status.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(768, 'messages.token.success', 'vi', 'Token added to the user account!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(769, 'messages.token.failed', 'vi', 'Failed to add token!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(770, 'messages.insert.success', 'vi', ':what insert successful!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(771, 'messages.insert.warning', 'vi', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(772, 'messages.insert.failed', 'vi', ':what insert failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(773, 'messages.stage.expired', 'vi', 'Sorry, this stage is expired!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(774, 'messages.stage.inactive', 'vi', 'Currently no active stage found!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(775, 'messages.stage.notice', 'vi', 'Please create a new stage or update stage date, because this stage is expired!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(776, 'messages.stage.upcoming', 'vi', 'Stage will start at :time', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(777, 'messages.stage.delete_failed', 'vi', 'You can not remove the last stage.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(778, 'messages.stage.not_started', 'vi', 'Our sell have not started yet. Please check after some times.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(779, 'messages.stage.completed', 'vi', 'Our token sales has been finished. Thank you very much for your contribution.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(780, 'messages.update.success', 'vi', ':what has been updated!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(781, 'messages.update.warning', 'vi', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(782, 'messages.update.failed', 'vi', ':what updating failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(783, 'messages.password.old_err', 'vi', 'Your old password is incorrect.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(784, 'messages.password.success', 'vi', 'Password successfully changed!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(785, 'messages.password.changed', 'vi', 'We have sent a verification code to your email please confirm and change.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(786, 'messages.password.failed', 'vi', 'Varification link has expired!!! try again', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(787, 'messages.password.token', 'vi', 'Invalid link/token!!! try again', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(788, 'messages.delete.delete', 'vi', ':what is deleted!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(789, 'messages.delete.delete_failed', 'vi', ':what is deletion failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(790, 'messages.kyc.approved', 'vi', 'KYC application approved successfully!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(791, 'messages.kyc.missing', 'vi', 'KYC application is missing!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(792, 'messages.kyc.rejected', 'vi', 'KYC application is rejected!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(793, 'messages.kyc.wait', 'vi', 'Your KYC Application is placed, please wait for our review.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(794, 'messages.kyc.mandatory', 'vi', 'Identity verification (KYC/AML) is mandatory to participate in our token sale.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(795, 'messages.kyc.forms.submitted', 'vi', 'You have successfully submitted your application for identity verification.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(796, 'messages.kyc.forms.failed', 'vi', 'We weren\'t able to process the application submission for identity verification. Please reload this page and fill the form again and submit. ', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(797, 'messages.kyc.forms.document', 'vi', ':NAME is required, Please upload your document.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(798, 'messages.upload.success', 'vi', ':what has been uploaded!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(799, 'messages.upload.warning', 'vi', 'Something is wrong!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(800, 'messages.upload.invalid', 'vi', 'This type of file is not supported!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(801, 'messages.upload.failed', 'vi', ':what uploading failed!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(802, 'messages.invalid.address', 'vi', 'Enter a valid wallet address.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(803, 'messages.invalid.address_is', 'vi', 'Enter a valid :is wallet address.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(804, 'messages.invalid.social', 'vi', 'Sorry, Social login is not available now.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(805, 'messages.mail.send', 'vi', 'Email has been send successfully.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(806, 'messages.mail.failed', 'vi', 'Failed to send email.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(807, 'messages.mail.issues', 'vi', 'Unable to send email! Please check your mail setting credential.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(808, 'messages.wallet.change', 'vi', 'Wallet address change request submitted.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(809, 'messages.wallet.cancel', 'vi', 'Wallet address change request is canceled.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(810, 'messages.wallet.approved', 'vi', 'Wallet address change request is approved.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(811, 'messages.wallet.failed', 'vi', 'Wallet address change request is failed.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(812, 'messages.ico_not_setup', 'vi', 'ICO Sales opening soon, Please check after sometimes.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(813, 'messages.demo_payment_note', 'vi', 'All the <span class=\"badge badge-xs badge-purple ucap\">Add-ons</span> type payment modules is NOT part of main product. You\'ve to purchase separately from CodeCanyon to get those. <strong><a href=\"https://codecanyon.net/user/softnio/portfolio\" target=\"_blank\">Check out here</a></strong>.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(814, 'messages.demo_user', 'vi', 'Your action can\'t perform as you login with a Demo Account. For full-access, please send an email at info@softnio.com.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(815, 'messages.demo_preview', 'vi', 'You can\'t perform this action as this is preview purpose.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(816, 'messages.stage_update', 'vi', 'Successfully :status the stage!!', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(817, 'messages.payment_method_update', 'vi', 'Payment method :status', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(818, 'messages.required_app', 'vi', 'The :what payment module required minimum :version version of application. Please update your core application to latest version.', 'messages, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(819, 'messages.permission', 'vi', 'You do not have enough permissions to perform requested operation.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(820, 'messages.unable_proceed', 'vi', 'Unable to proceed request!', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(821, 'messages.transfer.wrong', 'vi', 'Something is wrong, please try again later!', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(822, 'messages.transfer.request_submitted', 'vi', 'Your request successfully submitted and waiting for our team approval.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(823, 'messages.transfer.balance_insufficient', 'vi', 'You balance is insufficient for send token.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(824, 'messages.transfer.can_not_send_token', 'vi', 'You can not send your token to your own account.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(825, 'messages.transfer.invalid_email_address', 'vi', 'Sorry! your provided email address is invalid or not associated with our platform.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(826, 'messages.transfer.send_maximum_amount', 'vi', 'You can send maximum :amount :symbol at once.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(827, 'messages.transfer.minimum_amount_required', 'vi', 'Minimum :amount :symbol required to send.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(828, 'messages.transfer.invalid_transaction', 'vi', 'Invalid transaction or not found!', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(829, 'messages.transfer.transaction_approved', 'vi', 'Transaction approved successfully.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(830, 'messages.transfer.account_not_found', 'vi', 'The receiver account not found.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(831, 'messages.transfer.transaction_rejected', 'vi', 'Transaction has been rejected.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(832, 'messages.transfer.transaction_already', 'vi', 'Transaction already :status.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(833, 'messages.withdraw.approved', 'vi', 'Withdraw transaction has been approved successfully.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(834, 'messages.withdraw.rejected', 'vi', 'Withdraw transaction has been rejected.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(835, 'messages.withdraw.deleted', 'vi', 'Withdraw transaction has been deleted.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(836, 'messages.withdraw.already_approved', 'vi', 'Withdraw transaction has been already approved.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(837, 'messages.withdraw.canceled', 'vi', 'Withdraw transaction has been canceled.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(838, 'messages.withdraw.unable_delete', 'vi', 'Unable delete the withdraw transaction.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(839, 'messages.withdraw.successfully_placed_progress', 'vi', 'Your withdrawal has been successfully placed. You can see its progress on this withdrawal page.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(840, 'messages.withdraw.wrong', 'vi', 'Something is wrong! Unable to process your request.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(841, 'messages.withdraw.insufficient_balance', 'vi', 'You balance is insufficient for a withdrawal.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(842, 'messages.withdraw.withdraw_maximum', 'vi', 'You can withdraw maximum :amount :symbol at once.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(843, 'messages.withdraw.minimum_required', 'vi', 'Minimum :amount :symbol required to withdraw.', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(844, 'messages.cancel_order', 'vi', 'Do you really cancel your order?', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(845, 'messages.unable_process', 'vi', 'Unable process request!', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(846, 'messages.sure', 'vi', 'Are you sure?', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(847, 'messages.unable_perform', 'vi', 'Unable to perform!', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(848, 'messages.use_modern_browser', 'vi', 'Please use a modern browser to properly view this template!', 'messages, global', 'system', 'any', 0, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(849, 'pagination.previous', 'vi', '&laquo; Previous', 'pagination, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(850, 'pagination.next', 'vi', 'Next &raquo;', 'pagination, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(851, 'passwords.password', 'vi', 'Passwords must be at least six characters and match the confirmation.', 'passwords, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(852, 'passwords.reset', 'vi', 'Your password has been reset!', 'passwords, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(853, 'passwords.sent', 'vi', 'We have e-mailed your password reset link!', 'passwords, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(854, 'passwords.token', 'vi', 'This password reset token is invalid.', 'passwords, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(855, 'passwords.user', 'vi', 'We can\'t find a user with that e-mail address.', 'passwords, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(856, 'auth.failed', 'vi', 'These credentials do not match our records.', 'auth, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(857, 'auth.throttle', 'vi', 'Too many login attempts. Please try again in :seconds', 'auth, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(858, 'auth.recaptcha', 'vi', 'Your request failed to complete as bot detected.', 'auth, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(859, 'auth.health.save_action', 'vi', 'Please register and activate the application to perform the action.', 'auth, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(860, 'auth.health.fail', 'vi', 'Invalidated-the-license-due-to-wrong-key', 'auth, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(861, 'validation.accepted', 'vi', 'The :attribute must be accepted.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(862, 'validation.active_url', 'vi', 'The :attribute is not a valid URL.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(863, 'validation.after', 'vi', 'The :attribute must be a date after :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(864, 'validation.after_or_equal', 'vi', 'The :attribute must be a date after or equal to :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(865, 'validation.alpha', 'vi', 'The :attribute may only contain letters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(866, 'validation.alpha_dash', 'vi', 'The :attribute may only contain letters, numbers, dashes and underscores.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(867, 'validation.alpha_num', 'vi', 'The :attribute may only contain letters and numbers.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:05', '2021-10-10 01:13:05'),
(868, 'validation.array', 'vi', 'The :attribute must be an array.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(869, 'validation.before', 'vi', 'The :attribute must be a date before :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(870, 'validation.before_or_equal', 'vi', 'The :attribute must be a date before or equal to :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(871, 'validation.between.numeric', 'vi', 'The :attribute must be between :min and :max.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(872, 'validation.between.file', 'vi', 'The :attribute must be between :min and :max kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(873, 'validation.between.string', 'vi', 'The :attribute must be between :min and :max characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(874, 'validation.between.array', 'vi', 'The :attribute must have between :min and :max items.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(875, 'validation.boolean', 'vi', 'The :attribute field must be true or false.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(876, 'validation.confirmed', 'vi', 'The :attribute confirmation does not match.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(877, 'validation.date', 'vi', 'The :attribute is not a valid date.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(878, 'validation.date_equals', 'vi', 'The :attribute must be a date equal to :date.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(879, 'validation.date_format', 'vi', 'The :attribute does not match the format :format.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(880, 'validation.different', 'vi', 'The :attribute and :other must be different.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(881, 'validation.digits', 'vi', 'The :attribute must be :digits digits.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(882, 'validation.digits_between', 'vi', 'The :attribute must be between :min and :max digits.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(883, 'validation.dimensions', 'vi', 'The :attribute has invalid image dimensions.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(884, 'validation.distinct', 'vi', 'The :attribute field has a duplicate value.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(885, 'validation.email', 'vi', 'The :attribute must be a valid email address.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(886, 'validation.exists', 'vi', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(887, 'validation.file', 'vi', 'The :attribute must be a file.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(888, 'validation.filled', 'vi', 'The :attribute field must have a value.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(889, 'validation.gt.numeric', 'vi', 'The :attribute must be greater than :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(890, 'validation.gt.file', 'vi', 'The :attribute must be greater than :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(891, 'validation.gt.string', 'vi', 'The :attribute must be greater than :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(892, 'validation.gt.array', 'vi', 'The :attribute must have more than :value items.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(893, 'validation.gte.numeric', 'vi', 'The :attribute must be greater than or equal :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06');
INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(894, 'validation.gte.file', 'vi', 'The :attribute must be greater than or equal :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(895, 'validation.gte.string', 'vi', 'The :attribute must be greater than or equal :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(896, 'validation.gte.array', 'vi', 'The :attribute must have :value items or more.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(897, 'validation.image', 'vi', 'The :attribute must be an image.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(898, 'validation.in', 'vi', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(899, 'validation.in_array', 'vi', 'The :attribute field does not exist in :other.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(900, 'validation.integer', 'vi', 'The :attribute must be an integer.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(901, 'validation.ip', 'vi', 'The :attribute must be a valid IP address.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(902, 'validation.ipv4', 'vi', 'The :attribute must be a valid IPv4 address.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(903, 'validation.ipv6', 'vi', 'The :attribute must be a valid IPv6 address.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(904, 'validation.json', 'vi', 'The :attribute must be a valid JSON string.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(905, 'validation.lt.numeric', 'vi', 'The :attribute must be less than :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(906, 'validation.lt.file', 'vi', 'The :attribute must be less than :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(907, 'validation.lt.string', 'vi', 'The :attribute must be less than :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(908, 'validation.lt.array', 'vi', 'The :attribute must have less than :value items.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(909, 'validation.lte.numeric', 'vi', 'The :attribute must be less than or equal :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(910, 'validation.lte.file', 'vi', 'The :attribute must be less than or equal :value kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(911, 'validation.lte.string', 'vi', 'The :attribute must be less than or equal :value characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(912, 'validation.lte.array', 'vi', 'The :attribute must not have more than :value items.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(913, 'validation.max.numeric', 'vi', 'The :attribute may not be greater than :max.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(914, 'validation.max.file', 'vi', 'The :attribute may not be greater than :max kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(915, 'validation.max.string', 'vi', 'The :attribute may not be greater than :max characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(916, 'validation.max.array', 'vi', 'The :attribute may not have more than :max items.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(917, 'validation.mimes', 'vi', 'The :attribute must be a file of type: :values.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(918, 'validation.mimetypes', 'vi', 'The :attribute must be a file of type: :values.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(919, 'validation.min.numeric', 'vi', 'The :attribute must be at least :min.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(920, 'validation.min.file', 'vi', 'The :attribute must be at least :min kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(921, 'validation.min.string', 'vi', 'The :attribute must be at least :min characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(922, 'validation.min.array', 'vi', 'The :attribute must have at least :min items.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(923, 'validation.not_in', 'vi', 'The selected :attribute is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(924, 'validation.not_regex', 'vi', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(925, 'validation.numeric', 'vi', 'The :attribute must be a number.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(926, 'validation.present', 'vi', 'The :attribute field must be present.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(927, 'validation.regex', 'vi', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(928, 'validation.required', 'vi', 'The :attribute field is required.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(929, 'validation.required_if', 'vi', 'The :attribute field is required when :other is :value.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(930, 'validation.required_unless', 'vi', 'The :attribute field is required unless :other is in :values.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(931, 'validation.required_with', 'vi', 'The :attribute field is required when :values is present.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(932, 'validation.required_with_all', 'vi', 'The :attribute field is required when :values are present.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(933, 'validation.required_without', 'vi', 'The :attribute field is required when :values is not present.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(934, 'validation.required_without_all', 'vi', 'The :attribute field is required when none of :values are present.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(935, 'validation.same', 'vi', 'The :attribute and :other must match.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(936, 'validation.size.numeric', 'vi', 'The :attribute must be :size.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(937, 'validation.size.file', 'vi', 'The :attribute must be :size kilobytes.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(938, 'validation.size.string', 'vi', 'The :attribute must be :size characters.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(939, 'validation.size.array', 'vi', 'The :attribute must contain :size items.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(940, 'validation.starts_with', 'vi', 'The :attribute must start with one of the following: :values', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(941, 'validation.string', 'vi', 'The :attribute must be a string.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(942, 'validation.timezone', 'vi', 'The :attribute must be a valid zone.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(943, 'validation.unique', 'vi', 'The :attribute has already been taken.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(944, 'validation.uploaded', 'vi', 'The :attribute failed to upload.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(945, 'validation.url', 'vi', 'The :attribute format is invalid.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(946, 'validation.uuid', 'vi', 'The :attribute must be a valid UUID.', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(947, 'validation.custom.attribute-name.rule-name', 'vi', 'custom-message', 'validation, global', 'system', 'any', 1, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(948, 'validation.only.required', 'vi', 'Required.', 'validation, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(949, 'validation.min.char', 'vi', 'At least :num chars.', 'validation, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(950, 'validation.max.char', 'vi', 'Maximum :num chars.', 'validation, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(951, 'validation.same.value', 'vi', 'Enter the same value.', 'validation, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(952, 'validation.email.valid', 'vi', 'Enter valid email.', 'validation, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(953, 'validation.issue', 'vi', 'Currently we are facing some technical issue, please try again after sometime.', 'validation, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(954, 'auth.signin', 'vi', 'Sign-in', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(955, 'auth.sign_in_btn', 'vi', 'Sign In', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(956, 'auth.sign_in', 'vi', 'Sign in', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(957, 'auth.with_your', 'vi', 'with your', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(958, 'auth.account', 'vi', 'Account', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(959, 'auth.your_email', 'vi', 'Your Email', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(960, 'auth.password', 'vi', 'Password', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(961, 'auth.remember_me', 'vi', 'Remember Me', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(962, 'auth.forgot_password', 'vi', 'Forgot password?', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(963, 'auth.no_account', 'vi', 'Don’t have an account?', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(964, 'auth.sign_with', 'vi', 'Or Sign in with', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(965, 'auth.facebook', 'vi', 'Facebook', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(966, 'auth.google', 'vi', 'Google', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(967, 'auth.sign_here', 'vi', 'Sign up here', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(968, 'auth.welcome', 'vi', 'Welcome!', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(969, 'auth.logout', 'vi', 'Logout', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(970, 'auth.sign_up', 'vi', 'Sign up', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(971, 'auth.create_new', 'vi', 'Create New', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(972, 'auth.email_verified', 'vi', 'Email Verified', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(973, 'auth.resend_email', 'vi', 'Resend Email', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(974, 'auth.set_admin_account', 'vi', 'Please setup admin account.', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(975, 'auth.repeat_password', 'vi', 'Repeat Password', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(976, 'auth.reset_password', 'vi', 'Reset password', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(977, 'auth.forgot_password_note', 'vi', 'If you forgot your password, well, then we\'ll email you instructions to reset your password.', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(978, 'auth.your_email_address', 'vi', 'Your Email Address', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(979, 'auth.your_name', 'vi', 'Your Name', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(980, 'auth.your_full_name', 'vi', 'Your Full Name', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(981, 'auth.your_mobile', 'vi', 'Your Mobile Number', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(982, 'auth.enter_full_name', 'vi', 'Enter Full Name', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(983, 'auth.enter_email_address', 'vi', 'Enter Email Address', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(984, 'auth.enter_mobile', 'vi', 'Enter Mobile Number', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(985, 'auth.enter_password', 'vi', 'Enter Password', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(986, 'auth.reset_link', 'vi', 'Send Reset Link', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(987, 'auth.return_login', 'vi', 'Return to login', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(988, 'auth.agree', 'vi', 'I agree to the', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(989, 'auth.agree_and', 'vi', 'and', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(990, 'auth.agree_terms', 'vi', 'By registering you agree to the terms and conditions.', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(991, 'auth.agree_confirm', 'vi', 'You should accept our terms and policy.', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(992, 'auth.create_account', 'vi', 'Create Account', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(993, 'auth.already_account', 'vi', 'Already have an account ?', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(994, 'auth.sign_instead', 'vi', 'Sign in instead', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(995, 'auth.verify_email', 'vi', 'Please verify your email address.', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(996, 'auth.cancel_signup', 'vi', 'Cancel Signup', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(997, 'auth.sign_out', 'vi', 'Sign Out', 'auth, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(998, 'dashboard.main_site', 'vi', 'Main Site', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(999, 'dashboard.title_user_dashboard', 'vi', 'User Dashboard', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1000, 'dashboard.title_user_transactions', 'vi', 'User Transactions', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1001, 'dashboard.title_user_account', 'vi', 'User Account', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1002, 'dashboard.title_user_token', 'vi', ':symbol Token Balance', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1003, 'dashboard.title_token', 'vi', 'My Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1004, 'dashboard.title_kyc', 'vi', 'KYC Application', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1005, 'dashboard.title_dashboard', 'vi', 'Dashboard', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1006, 'dashboard.title_transactions', 'vi', 'Transactions', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1007, 'dashboard.title_profile', 'vi', 'Profile', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1008, 'dashboard.kyc_details', 'vi', 'User KYC Details', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1009, 'dashboard.id_verification', 'vi', 'Begin ID-Verification', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1010, 'dashboard.buy_token', 'vi', 'Buy Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1011, 'dashboard.current_price', 'vi', 'Current Price', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1012, 'dashboard.buy_token_now', 'vi', 'Buy Token Now', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1013, 'dashboard.kyc_approved', 'vi', 'KYC Approved', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1014, 'dashboard.kyc_application', 'vi', 'KYC Application', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1015, 'dashboard.kyc_pending', 'vi', 'KYC Pending', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1016, 'dashboard.submit_kyc', 'vi', 'Submit KYC', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1017, 'dashboard.your_contribution_in', 'vi', 'Your Contribution in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1018, 'dashboard.token_balance', 'vi', 'Token Balance', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1019, 'dashboard.token_name', 'vi', 'Token Name', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1020, 'dashboard.token_symbol', 'vi', 'Token Symbol', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1021, 'dashboard.white_paper', 'vi', 'White Paper', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1022, 'dashboard.contact_support', 'vi', 'Contact Support', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1023, 'dashboard.my_profile', 'vi', 'My Profile', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1024, 'dashboard.referral', 'vi', 'Referral', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1025, 'dashboard.referral_url', 'vi', 'Referral URL', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1026, 'dashboard.referral_lists', 'vi', 'Referral Lists', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1027, 'dashboard.activity', 'vi', 'Activity', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1028, 'dashboard.download_whitepaper', 'vi', 'Download Whitepaper', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1029, 'dashboard.add_wallet_befor', 'vi', 'Add your wallet address before buy', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1030, 'dashboard.account_status', 'vi', 'Your Account Status', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1031, 'dashboard.receiving_wallet', 'vi', 'Receiving Wallet', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1032, 'dashboard.new_address', 'vi', 'New address under review for approve.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1033, 'dashboard.your_wallet', 'vi', 'Add Your Wallet Address', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1034, 'dashboard.earn_with_referral', 'vi', 'Earn with Referral', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1035, 'dashboard.invite_friends', 'vi', 'Invite your friends & family.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1036, 'dashboard.refer_link', 'vi', 'Use above link to refer your friend and get referral bonus.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1037, 'dashboard.contact_support_team', 'vi', 'Contact our support team via email', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1038, 'dashboard.current_bonus', 'vi', 'Current Bonus', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1039, 'dashboard.start_date', 'vi', 'Start Date', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1040, 'dashboard.end_date', 'vi', 'End Date', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1041, 'dashboard.bonus_start_in', 'vi', 'The Bonus Start in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1042, 'dashboard.bonus_end_in', 'vi', 'The Bonus End in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1043, 'dashboard.token_sales_progress', 'vi', 'Token Sales Progress', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1044, 'dashboard.raised', 'vi', 'Raised', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1045, 'dashboard.total', 'vi', 'Total', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1046, 'dashboard.sales_end_in', 'vi', 'Sales End in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1047, 'dashboard.sales_end_at', 'vi', 'Sales End at', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1048, 'dashboard.sales_start_in', 'vi', 'Sales Start in', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1049, 'dashboard.sales_start_at', 'vi', 'Sales Start at', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1050, 'dashboard.raised_amount', 'vi', 'Raised Amount', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1051, 'dashboard.total_token', 'vi', 'Total Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1052, 'dashboard.hard_cap', 'vi', 'Hard Cap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1053, 'dashboard.hardcap', 'vi', 'Hardcap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1054, 'dashboard.soft_cap', 'vi', 'Soft Cap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1055, 'dashboard.softcap', 'vi', 'Softcap', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1056, 'dashboard.token_sales_finished', 'vi', 'Our token sales has been finished. Thank you very much for your contribution.', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1057, 'dashboard.view_transaction', 'vi', 'View Transaction', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1058, 'dashboard.tranx_types', 'vi', 'Types', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1059, 'dashboard.tranx_type', 'vi', 'Type', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1060, 'dashboard.purchased_title', 'vi', 'Purchased', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1061, 'dashboard.user_name', 'vi', 'User Name', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1062, 'dashboard.title_note', 'vi', 'Note:', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1063, 'dashboard.title_details', 'vi', 'Details', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1064, 'dashboard.oops', 'vi', 'Oops!!!', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1065, 'dashboard.token_title', 'vi', 'My :symbol Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1066, 'dashboard.buy_more', 'vi', 'Buy More Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1067, 'dashboard.equivalent_to', 'vi', 'Equivalent to', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1068, 'dashboard.total_token_amount', 'vi', 'Total Token Amount', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1069, 'dashboard.purchased_token', 'vi', 'Purchased Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1070, 'dashboard.referral_token', 'vi', 'Referral Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1071, 'dashboard.bonuses_token', 'vi', 'Bonuses Token', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1072, 'dashboard.total_contributed', 'vi', 'Total Contributed', 'dashboard, global', 'system', 'any', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1073, 'profile.profile_details', 'vi', 'Profile Details', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1074, 'profile.email_confirm', 'vi', 'Your password will only change after your confirmation by email.', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1075, 'profile.personal_data', 'vi', 'Personal Data', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1076, 'profile.settings', 'vi', 'Settings', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1077, 'profile.full_name', 'vi', 'Full Name', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1078, 'profile.email_address', 'vi', 'Email Address', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1079, 'profile.mobile_number', 'vi', 'Mobile Number', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1080, 'profile.date_of_birth', 'vi', 'Date of Birth', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1081, 'profile.nationality', 'vi', 'Nationality', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1082, 'profile.select_country', 'vi', 'Select Country', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1083, 'profile.update_profile', 'vi', 'Update Profile', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1084, 'profile.security_settings', 'vi', 'Security Settings', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1085, 'profile.save_activities_log', 'vi', 'Save my activities log', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1086, 'profile.confirm_email', 'vi', 'Confirm me through email before password change', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1087, 'profile.manage_notification', 'vi', 'Manage Notification', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1088, 'profile.resumption_notify', 'vi', 'Notify me by email about resumption of sales', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1089, 'profile.sales_notify', 'vi', 'Notify me by email about sales and latest news', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1090, 'profile.unusual_activity', 'vi', 'Alert me by email in case of unusual activity in my account', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1091, 'profile.update', 'vi', 'Update', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1092, 'profile.old_password', 'vi', 'Old Password', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1093, 'profile.new_password', 'vi', 'New Password', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1094, 'profile.confirm_password', 'vi', 'Confirm New Password', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1095, 'profile.min_6_digit', 'vi', 'Password should be a minimum of 6 digits and include lower and uppercase letter.', 'user_profile, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1096, 'profile.activitiy_log', 'vi', 'Account Activities Log', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1097, 'profile.activitiy_clear', 'vi', 'Clear All', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1098, 'profile.activitiy_note', 'vi', 'Here is your recent activities. You can clear this log as well as disable the feature from profile settings tabs.', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1099, 'profile.activitiy_date', 'vi', 'Date', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1100, 'profile.activitiy_device', 'vi', 'Device', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1101, 'profile.activitiy_browser', 'vi', 'Browser', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1102, 'profile.activitiy_ip', 'vi', 'IP', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1103, 'profile.activitiy_delete_log', 'vi', 'Once Delete, You will not get back this log in future!', 'user_profile, user_activity, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1104, 'profile.tranx_list', 'vi', 'Transactions list', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1105, 'profile.tranx_amount', 'vi', 'Amount', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1106, 'profile.tranx_from', 'vi', 'From', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1107, 'profile.tranx_to', 'vi', 'To', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1108, 'profile.tranx_pay', 'vi', 'Pay', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1109, 'profile.token_types', 'vi', 'Token Types', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1110, 'profile.tokens', 'vi', 'Tokens', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1111, 'profile.tranx_no', 'vi', 'Tranx NO', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1112, 'profile.no_data', 'vi', 'No data available in table', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1113, 'profile.no_records', 'vi', 'No records', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1114, 'profile.search_placeholder', 'vi', 'Type in to Search', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1115, 'profile.cap_types', 'vi', 'TYPES', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1116, 'profile.any_type', 'vi', 'Any Type', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1117, 'profile.purchase', 'vi', 'Purchase', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1118, 'profile.cap_status', 'vi', 'STATUS', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1119, 'profile.cap_show_all', 'vi', 'Show All', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1120, 'profile.approved', 'vi', 'Approved', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1121, 'profile.pending', 'vi', 'Pending', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1122, 'profile.canceled', 'vi', 'Canceled', 'user_profile, user_transaction', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1123, 'kyc.verify_title', 'vi', 'KYC Verification', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1124, 'kyc.verify_title_sub', 'vi', 'To comply with regulations each participant is required to go through identity verification (KYC/AML) to prevent fraud, money laundering operations, transactions banned under the sanctions regime or those which fund terrorism. Please, complete our fast and secure verification process to participate in token offerings.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1125, 'kyc.identity_title', 'vi', 'Identity Verification - KYC', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1126, 'kyc.identity_desc', 'vi', 'To comply with regulation, participant will have to go through identity verification.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1127, 'kyc.form_not_submitted', 'vi', 'You have not submitted your necessary documents to verify your identity.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1128, 'kyc.form_submit', 'vi', 'It would great if you please submit the form. If you have any question, please feel free to contact our support team.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1129, 'kyc.complete_kyc', 'vi', 'Click here to complete your KYC', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1130, 'kyc.completed_kyc', 'vi', 'You have completed the process of KYC', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1131, 'kyc.waiting_id_verify', 'vi', 'We are still waiting for your identity verification. Once our team verified your identity, you will be notified by email. You can also check your KYC compliance status from your profile page.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1132, 'kyc.back_to_profile', 'vi', 'Back to Profile', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1133, 'kyc.under_process', 'vi', 'Your application verification under process.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1134, 'kyc.still_working', 'vi', 'We are still working on your identity verification. Once our team verified your identity, you will be notified by email.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1135, 'kyc.resubmit_form', 'vi', 'In our verification process, we found information that is incorrect or missing. Please resubmit the form. In case of any issues with the submission please contact our support team.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1136, 'kyc.submit_again', 'vi', 'Submit Again', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1137, 'kyc.verified_title', 'vi', 'Your identity verified successfully.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1138, 'kyc.verified_desc', 'vi', 'One of our team members verified your identity. Now you can participate in our token sale. Thank you.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1139, 'kyc.info_missing', 'vi', 'We found some information to be missing.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1140, 'kyc.form_rejected', 'vi', 'Sorry! Your application was rejected.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1141, 'kyc.verify_head', 'vi', 'Begin your ID-Verification', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1142, 'kyc.verify_text', 'vi', 'In order to purchase our tokens, please verify your identity.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1143, 'kyc.verify_text_token', 'vi', 'Verify your identity to participate in token sale.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1144, 'kyc.not_submitted', 'vi', 'You have not submitted your documents to verify your identity (KYC).', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1145, 'kyc.click_proceed', 'vi', 'Click to Proceed', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1146, 'kyc.document_received', 'vi', 'We have received your document.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1147, 'kyc.review_information', 'vi', 'We will review your information and if all is in order will approve your identity. You will be notified by email once we verified your identity (KYC).', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1148, 'kyc.kyc_rejected', 'vi', 'KYC Application has been rejected!', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1149, 'kyc.resubmit_application', 'vi', 'We were having difficulties verifying your identity. In our verification process, we found information are incorrect or missing. Please re-submit the application again and verify your identity.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1150, 'kyc.resubmit', 'vi', 'Resubmit', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1151, 'kyc.kyc_verified', 'vi', 'Identity (KYC) has been verified.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1152, 'kyc.token_sale', 'vi', 'One for our team verified your identity. You are eligible to participate in our token sale.', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1153, 'kyc.purchase_token', 'vi', 'Purchase Token', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1154, 'kyc.kyc_verification_required', 'vi', 'KYC verification required for purchase token', 'dashboard, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1155, 'kyc.form.personal_details', 'vi', 'Personal Details', 'kyc, kyc_form, global', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1156, 'kyc.form.personal_details_sub', 'vi', 'Your basic personal information is required for identification purposes.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1157, 'kyc.form.personal_details_note', 'vi', 'Please type carefully and fill out the form with your personal details. You are not allowed to edit the details once you have submitted the application.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1158, 'kyc.form.first_name', 'vi', 'First Name', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1159, 'kyc.form.last_name', 'vi', 'Last Name', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1160, 'kyc.form.phone_number', 'vi', 'Phone Number', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1161, 'kyc.form.gender', 'vi', 'Gender', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1162, 'kyc.form.select_gender', 'vi', 'Select Gender', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1163, 'kyc.form.male', 'vi', 'Male', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1164, 'kyc.form.female', 'vi', 'Female', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1165, 'kyc.form.other', 'vi', 'Other', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1166, 'kyc.form.telegram_username', 'vi', 'Telegram Username', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1167, 'kyc.form.your_address', 'vi', 'Your Address', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1168, 'kyc.form.country', 'vi', 'Country', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1169, 'kyc.form.state', 'vi', 'State', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1170, 'kyc.form.city', 'vi', 'City', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1171, 'kyc.form.postal_code', 'vi', 'Zip / Postal Code', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1172, 'kyc.form.address_line_1', 'vi', 'Address Line 1', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1173, 'kyc.form.address_line_2', 'vi', 'Address Line 2', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1174, 'kyc.form.document_upload', 'vi', 'Document Upload', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1175, 'kyc.form.scan_documents', 'vi', 'To verify your identity, we ask you to upload high-quality scans or photos of your official identification documents issued by the government.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1176, 'kyc.form.upload_documents', 'vi', 'In order to complete, please upload any of the following personal documents.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1177, 'kyc.form.passport', 'vi', 'Passport', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1178, 'kyc.form.national_id_card', 'vi', 'National ID Card', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1179, 'kyc.form.driver_license', 'vi', 'Driver’s License', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1180, 'kyc.form.check_requirements', 'vi', 'To avoid delays with verification process, please double-check to ensure the below requirements are fully met:', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1181, 'kyc.form.visible_documents', 'vi', 'Document should be in good condition and clearly visible.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1182, 'kyc.form.no_glare', 'vi', 'There is no light glare or reflections on the card.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1183, 'kyc.form.not_expire_credentials', 'vi', 'Chosen credential must not be expired.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1184, 'kyc.form.file_limitation', 'vi', 'File is at least 1 MB in size and has at least 300 dpi resolution.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1185, 'kyc.form.drag_and_drop_file', 'vi', 'Drag and drop file', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1186, 'kyc.form.select', 'vi', 'Select', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1187, 'kyc.form.or', 'vi', 'or', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1188, 'kyc.form.upload_doc_copy', 'vi', 'Upload Here Your :doctype Copy', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1189, 'kyc.form.nid_back_side', 'vi', 'Upload Here Your National ID Back Side', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1190, 'kyc.form.photo_selfie', 'vi', 'Upload a selfie as a Photo Proof while holding document in your hand', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1191, 'kyc.form.paying_wallet', 'vi', 'Your Paying Wallet', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1192, 'kyc.form.paying_wallet_submit', 'vi', 'Submit your wallet address that you are going to send funds', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1193, 'kyc.form.paying_wallet_note', 'vi', 'DO NOT USE your exchange wallet address such as Kraken, Bitfinex, Bithumb, Binance etc.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1194, 'kyc.form.select_wallet', 'vi', 'Select Wallet', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1195, 'kyc.form.enter_your_wallet', 'vi', 'Enter your wallet address', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1196, 'kyc.form.your_wallet_address', 'vi', 'Your personal wallet address', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1197, 'kyc.form.agree_terms', 'vi', 'I have read the', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1198, 'kyc.form.agree_info', 'vi', 'All the personal information I have entered is correct.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1199, 'kyc.form.agree_individual', 'vi', 'I certify that, I am registering to participate in the token distribution event(s) in the capacity of an individual (and beneficial owner) and not as an agent or representative of a third party corporate entity.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1200, 'kyc.form.agree_final', 'vi', 'I understand that, I can participate in the token distribution event(s) only with the wallet address that was entered in the application form.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:06', '2021-10-10 01:13:06'),
(1201, 'kyc.form.proceed', 'vi', 'Proceed to Verify', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1202, 'kyc.form.confirm_terms', 'vi', 'You should read our terms and policy.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1203, 'kyc.form.confirm_info', 'vi', 'Confirm that all information is correct.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1204, 'kyc.form.confirm_individual', 'vi', 'Certify that you are individual.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1205, 'kyc.form.confirm_final', 'vi', 'Confirm that you understand.', 'kyc', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1206, 'buy_token.sale_start_soon', 'vi', 'Our sale will start soon. Please check back at a later date/time or feel free to contact us.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1207, 'buy_token.calculate', 'vi', 'Choose currency and calculate :SYMBOL token price', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1208, 'buy_token.choose_currency', 'vi', 'You can buy our :SYMBOL token using the below currency choices to become part of our project.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1209, 'buy_token.amount_of_contribute', 'vi', 'Amount of contribute', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1210, 'buy_token.contribute_amout', 'vi', 'Enter the amount you would like to contribute in order to calculate the amount of tokens you will receive. The calculator below helps to convert the required quantity of tokens into the amount of your selected currency.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07');
INSERT INTO `translates` (`id`, `key`, `name`, `text`, `pages`, `group`, `panel`, `load`, `created_at`, `updated_at`) VALUES
(1211, 'buy_token.minimum_amount', 'vi', 'Minimum contribution amount is required.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1212, 'buy_token.bonus', 'vi', 'Bonus', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1213, 'buy_token.on_sale', 'vi', 'On Sale', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1214, 'buy_token.sale_bonus', 'vi', 'Sale Bonus', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1215, 'buy_token.amount_bonus', 'vi', 'Amount Bonus', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1216, 'buy_token.exchange_note', 'vi', 'Your contribution will be calculated based on exchange rate at the moment when your transaction is confirmed.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1217, 'buy_token.payment_button', 'vi', 'Make Payment', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1218, 'buy_token.token_note', 'vi', 'Tokens will appear in your account after payment successfully made and approved by our team. Please note that, :SYMBOL token will be distributed after the token sales end-date.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1219, 'buy_token.token_sales', 'vi', 'Token Sales', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1220, 'buy_token.token_price', 'vi', 'Token Price', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1221, 'buy_token.exchange_rate', 'vi', 'Exchange Rate', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1222, 'buy_token.end_at', 'vi', 'End at', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1223, 'buy_token.choose_method', 'vi', 'You can choose any of following payment method to make your payment. The token balance will appear in your account after successful payment.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1224, 'buy_token.select_method', 'vi', 'Select payment method:', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1225, 'buy_token.appear_address', 'vi', 'Our payment address will appear or redirect you for payment after your order placed.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1226, 'buy_token.charge_fee', 'vi', 'Payment gateway may charge you a processing fees.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1227, 'buy_token.maximum_amount_reached', 'vi', 'Maximum amount reached, You can purchase maximum :amount :symbol per transaction.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1228, 'buy_token.purchase_minimum_amount', 'vi', 'You must purchase minimum :amount :symbol.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1229, 'buy_token.sales_finished', 'vi', 'Our sales has been finished. Thank you very much for your interest.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1230, 'buy_token.token_not_available', 'vi', ':amount :symbol Token is not available.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1231, 'buy_token.available_amount', 'vi', 'Available :amount :symbol only, You can purchase less than :amount :symbol Token.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1232, 'buy_token.transaction_may_deleted', 'vi', 'Sorry, we\'re unable to proceed the transaction. This transaction may deleted. Please contact with administrator.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1233, 'buy_token.transaction_already_status', 'vi', 'Your transaction is already :status. Sorry, we\'re unable to proceed the transaction.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1234, 'buy_token.transaction_status_check_account', 'vi', 'Your transaction is already :status. Please check your account balance.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1235, 'buy_token.transaction_not_found', 'vi', 'Transaction is not found!!', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1236, 'buy_token.transaction_not_valid', 'vi', 'Transaction id or key is not valid!', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1237, 'buy_token.maximum_purchase', 'vi', 'Maximum you can purchase :maximum_token token per contribution.', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1238, 'buy_token.minimum_token', 'vi', 'Enter minimum :minimum_token token and select currency!', 'buy_token', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1239, 'payment.order.title', 'vi', 'Confirmation Your Payment', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1240, 'payment.order.cancel_title', 'vi', 'Oops! Payment Canceled!', 'payment, cancel', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1241, 'payment.order.cancel_desc', 'vi', 'You have canceled your payment. If you continue to have issues, please contact us with order no. :orderid.', 'payment, cancel', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1242, 'payment.order.close', 'vi', 'Close', 'payment, cancel', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1243, 'payment.order.placed', 'vi', 'Your Order no. :orderid has been placed successfully.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1244, 'payment.order.pending', 'vi', 'Your Order no. :orderid has been placed & waiting for payment.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1245, 'payment.order.onhold', 'vi', 'Your Order no. :orderid has been placed & waiting for team approval.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1246, 'payment.info.crypto_amount', 'vi', 'Please send :amount :currency to the address below. The token balance will appear in your account only after transaction gets :num confirmation and approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1247, 'payment.info.crypto_receive', 'vi', 'To receiving :token :symbol token, please send :amount :currency to the address below. The token balance will appear in your account only after transaction gets :num confirmation and approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1248, 'payment.info.bank_amount', 'vi', 'Please make your payment of :amount :currency through bank to the below bank address. The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1249, 'payment.info.bank_receive', 'vi', 'To receiving :token :symbol token, please make your payment of :amount :currency through bank to the below bank address. The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1250, 'payment.info.gateway_amount', 'vi', 'The token balance will appear in your account only after you transaction gets :num confirmations and approved by :gateway.', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1251, 'payment.info.gateway_receive', 'vi', 'To receiving :token :symbol token, please make your payment of :amount :currency through :gateway. The token balance will appear in your account after we received your payment.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1252, 'payment.info.wallet_verify', 'vi', 'To speed up verification process please enter your wallet address from where you\'ll transferring your amount to our address.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1253, 'payment.info.hash_verify', 'vi', 'To speed up verification process, please enter your transaction hash or payment id.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1254, 'payment.wallet_address', 'vi', 'Enter Your Wallet Address', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1255, 'payment.payment_address', 'vi', 'Insert your payment address', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1256, 'payment.cancel_order', 'vi', 'Cancel Order', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1257, 'payment.select_method', 'vi', 'Select your payment method.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1258, 'payment.note_hint', 'vi', 'Do not make payment through exchange (Kraken, Bitfinex). You can use MyEtherWallet, MetaMask, Mist wallets etc.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1259, 'payment.note_alert', 'vi', 'In case you send a different amount, number of :SYMBOL token will update accordingly.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1260, 'payment.note_redirect', 'vi', 'Our payment address will appear or redirect you for payment after the order is placed.', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1261, 'payment.payment_process', 'vi', 'Payment Process', 'payment, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1262, 'payment.payment_confirm', 'vi', 'Confirm Payment', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1263, 'payment.skip_address', 'vi', 'I\'ll provide wallet address later', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1264, 'payment.gas_limit', 'vi', 'SET GAS LIMIT:', 'payment, offline', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1265, 'payment.gas_price', 'vi', 'SET GAS PRICE:', 'payment, offline', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1266, 'payment.send_amount_to', 'vi', 'Send Amount:', 'payment, order', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1267, 'payment.amount_with_bonus', 'vi', 'Please make payment of :amount to receive :token_amount token including bonus :token_bonus token.', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1268, 'payment.amount_no_bonus', 'vi', 'Please make payment of :amount to receive :token_amount token.', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1269, 'payment.deposit_title', 'vi', 'Payment Address for Deposit', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1270, 'payment.deposit_address', 'vi', 'Payment to the following :Name Wallet Address', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1271, 'payment.deposit_address_or_scan', 'vi', 'Payment to the following :Name Wallet Address Or scan the QR code', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1272, 'payment.scan_code', 'vi', 'Scan QR code to payment.', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1273, 'payment.agree_terms', 'vi', 'I hereby agree to the token purchase agreement and token sale term.', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1274, 'payment.no_method', 'vi', 'Sorry! There is no payment method available for this currency. Please choose another currency or contact our support team.', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1275, 'payment.review_title', 'vi', 'We\'re reviewing your payment.', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1276, 'payment.review_desc', 'vi', 'We\'ll review your transaction and get back to your within 6 hours. You\'ll receive an email with the details of your contribution.', 'payment, manual', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1277, 'payment.already_paid', 'vi', 'Click here if you already paid', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1278, 'payment.bellow_address', 'vi', 'Make your payment to the below address', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1279, 'payment.check_status', 'vi', 'Check Status', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1280, 'payment.gateway_status', 'vi', 'Check status on :gateway', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1281, 'payment.send_amount', 'vi', 'Please send :amount :currency to the address below.', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1282, 'payment.pay_or_cancel', 'vi', 'Click the Pay button below to make payment for this transaction, or you can cancel this transaction.', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1283, 'payment.refunded_token', 'vi', 'Refunded Token', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1284, 'payment.refunded_amount', 'vi', 'Refunded Amount', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1285, 'payment.refund_note', 'vi', 'Refund Note', 'payment, online', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1286, 'payment.bank_details', 'vi', 'Bank Details for Payment', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1287, 'payment.bank_note', 'vi', 'The token balance will appear in your account only after your transaction gets approved by our team.', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1288, 'payment.bank_iban', 'vi', 'IBAN', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1289, 'payment.bank_name', 'vi', 'Bank Name', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1290, 'payment.bank_address', 'vi', 'Bank Address', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1291, 'payment.bank_routing', 'vi', 'Routing Number', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1292, 'payment.bank_swift', 'vi', 'Swift/BIC', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1293, 'payment.bank_account_name', 'vi', 'Account Name', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1294, 'payment.bank_account_number', 'vi', 'Account Number', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1295, 'payment.bank_account_address', 'vi', 'Account Holder Address', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1296, 'payment.bank_make_payment', 'vi', 'Make Payment to the Following Bank Account', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1297, 'payment.bank_referance', 'vi', 'Use this transaction id (#:orderid) as reference. Make your payment within 24 hours, If we will not received your payment within 24 hours, then we will cancel the transaction.', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1298, 'payment.pay_via', 'vi', 'Pay via', 'payment, bank', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1299, 'tranx.details', 'vi', 'Transaction Details', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1300, 'tranx.order_no', 'vi', 'The order no. :orderid was placed on :datetime.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1301, 'tranx.successfully_paid', 'vi', 'You have successfully paid this transaction', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1302, 'tranx.via', 'vi', 'via', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1303, 'tranx.wallet', 'vi', 'wallet', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1304, 'tranx.order_failed', 'vi', 'Sorry! Your order has been :status due to payment.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1305, 'tranx.canceled_transfer_request', 'vi', 'The transfer request was canceled at :time.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1306, 'tranx.under_review', 'vi', 'The transaction is currently under review. We will send you an email once our review is complete.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1307, 'tranx.canceled_admin', 'vi', 'The transaction was canceled by Administrator at :time.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1308, 'tranx.canceled_user', 'vi', 'You have canceled this transaction.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1309, 'tranx.approved_admin', 'vi', 'Transaction has been approved at :time.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1310, 'tranx.token_details', 'vi', 'Token Details', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1311, 'tranx.token_of_stage', 'vi', 'Token of Stage', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1312, 'tranx.token_amount', 'vi', 'Token Amount (T)', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1313, 'tranx.bonus_token', 'vi', 'Bonus Token (B)', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1314, 'tranx.offline_payment', 'vi', 'Offline Payment', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1315, 'tranx.online_payment', 'vi', 'Online Payment', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1316, 'tranx.issue_occured', 'vi', 'Sorry, seems there is an issues occurred and we couldn’t process your request. Please contact us with your order no. :orderid, if you continue to having the issues.', 'transaction, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1317, 'wallet.do_not_use', 'vi', 'DO NOT USE your exchange wallet address OR if you don\'t have a private key of the your address. You WILL NOT receive your token and WILL LOSE YOUR FUNDS if you do.', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1318, 'wallet.erc_address', 'vi', 'Address should be ERC20-compliant.', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1319, 'wallet.receive_info', 'vi', 'In order to receive your :SYMBOL token, please select your wallet address and you have to put the address below input box. You will receive :SYMBOL token to this address after the token sale end.', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1320, 'wallet.current', 'vi', 'Current Wallet', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1321, 'wallet.type', 'vi', 'Wallet Type', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1322, 'wallet.receive_address', 'vi', ':Name Wallet Address for receiving token', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1323, 'wallet.add_wallet', 'vi', 'Add Wallet', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1324, 'wallet.enter_wallet', 'vi', 'Enter your :Name wallet address', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1325, 'wallet.enter_new_wallet', 'vi', 'Enter your new :Name wallet address', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1326, 'wallet.request', 'vi', 'Request for change', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1327, 'wallet.request_update', 'vi', 'Request for Update Wallet', 'user_wallet', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1328, 'status.approved', 'vi', 'Approved', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1329, 'status.pending', 'vi', 'Pending', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1330, 'status.progress', 'vi', 'Progress', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1331, 'status.rejected', 'vi', 'Rejected', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1332, 'status.warning', 'vi', 'Warning', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1333, 'status.success', 'vi', 'Success', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1334, 'status.running', 'vi', 'Running', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1335, 'status.upcoming', 'vi', 'Upcoming', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1336, 'status.completed', 'vi', 'Completed', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1337, 'status.expired', 'vi', 'Expired', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1338, 'status.pause', 'vi', 'Pause', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1339, 'status.inactive', 'vi', 'Inactive', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1340, 'status.edit', 'vi', 'Edit', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1341, 'status.add', 'vi', 'Add', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1342, 'status.see', 'vi', 'See', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1343, 'status.more', 'vi', 'More', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1344, 'status.view', 'vi', 'View', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1345, 'status.enable', 'vi', 'Enable', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1346, 'status.enabled', 'vi', 'Enabled', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1347, 'status.disable', 'vi', 'Disable', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1348, 'status.disabled', 'vi', 'Disabled', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1349, 'status.proceed', 'vi', 'Proceed', 'status, global', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1350, 'auth.2fa.hello', 'vi', 'Hello', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1351, 'auth.2fa.title', 'vi', '2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1352, 'auth.2fa.reset_2fa', 'vi', 'Reset 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1353, 'auth.2fa.enable_2fa', 'vi', 'Enable 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1354, 'auth.2fa.confirm_2fa', 'vi', 'Confirm 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1355, 'auth.2fa.disable_2fa', 'vi', 'Disable 2FA', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1356, 'auth.2fa.current_status', 'vi', 'Current Status:', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1357, 'auth.2fa.authentication', 'vi', '2FA Authentication', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1358, 'auth.2fa.two-factor_verification', 'vi', 'Two-Factor Verification', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1359, 'auth.2fa.verify_code', 'vi', 'Enter the Code to verify', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1360, 'auth.2fa.reset_authentication', 'vi', 'Reset 2FA Authentication', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1361, 'auth.2fa.authentication_code', 'vi', 'Enter your authentication code', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1362, 'auth.2fa.google_code', 'vi', 'Enter Google Authenticator Code', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1363, 'auth.2fa.auth', 'vi', 'Two-factor authentication is a method for protection of your account. When it is activated you are required to enter not only your password, but also a special code. You can receive this code in mobile app. Even if third party gets access to your password, they still won\'t be able to access your account without the 2FA code.', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1364, 'auth.2fa.lost_access', 'vi', 'If you lost your phone or uninstall the Google Authenticator app, then you will lost access of your account.', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1365, 'auth.2fa.step_2', 'vi', 'Step 2:', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1366, 'auth.2fa.scan_qr_code', 'vi', 'Scan the below QR code by your Google Authenticator app, or you can add account manually.', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1367, 'auth.2fa.manually_add_account', 'vi', 'Manually add Account:', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1368, 'auth.2fa.account_name', 'vi', 'Account Name:', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1369, 'auth.2fa.key', 'vi', 'Key:', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1370, 'auth.2fa.verification_code', 'vi', 'Enter the verification code generated by your mobile application (Google Authenticator).', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1371, 'auth.2fa.contact_us', 'vi', 'If you lost your phone or Uninstall the Google Authenticator app and enable to access your account please contact with us.', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1372, 'auth.2fa.step_1', 'vi', 'Step 1:', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1373, 'auth.2fa.install_this_app_from', 'vi', 'Install this app from', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1374, 'auth.2fa.google_play', 'vi', 'Google Play', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1375, 'auth.2fa.store_or', 'vi', 'store or', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1376, 'auth.2fa.app_store', 'vi', 'App Store', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1377, 'auth.2fa.reset_auth', 'vi', 'Please enter your account password to reset 2FA authentication.', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1378, 'auth.2fa.invalid', 'vi', 'You have provide a invalid 2FA authentication code!', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1379, 'auth.2fa.wrong', 'vi', 'Please enter a valid authentication code!', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1380, 'auth.2fa.enabled', 'vi', 'Successfully enable 2FA security in your account.', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1381, 'auth.2fa.disabled', 'vi', 'Successfully disable 2FA security in your account.', 'user_2fa', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1382, 'transfer.send_token_friend', 'vi', 'Send Token to Your Friend', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1383, 'transfer.available_token_balance', 'vi', 'Available Token Balance:', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1384, 'transfer.receiver_email', 'vi', 'Receiver/Friend Email', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1385, 'transfer.enter_receiver_email', 'vi', 'Enter receiver email', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1386, 'transfer.enter_valid_email_address', 'vi', 'Enter a valid email address, which is associated with our platform.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1387, 'transfer.enter_token_number', 'vi', 'Enter token number', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1388, 'transfer.minimum_send', 'vi', 'Minimum Send: :amount :symbol', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1389, 'transfer.you_do_not_have_token', 'vi', 'You do not have enough token to send.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1390, 'transfer.you_can_not_send_token_now', 'vi', 'You can not send token right now.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1391, 'transfer.enter_number_of_token', 'vi', 'Enter number of token you would like to send.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1392, 'transfer.please_enter_minimum', 'vi', 'Please enter minimum number of token.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1393, 'transfer.before_clicking_proceed', 'vi', 'Before clicking the &quot;Proceed&quot; button, be sure that you want to send token. You can not cancel the request once you proceed.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1394, 'transfer.can_not_send_token_to_friend', 'vi', 'Sorry! right now you can not send token to your friend account. Please contact us if you have any question.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1395, 'transfer.invite_your_friend_send_token', 'vi', 'You can invite your friend to join our platform and also you can send your token to your friend using his email address.', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1396, 'transfer.see_transactions', 'vi', 'See Transactions', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1397, 'transfer.send_token', 'vi', 'Send Token', 'transfer, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1398, 'withdraw.withdrawal', 'vi', 'Withdrawal', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1399, 'withdraw.withdraw_wallet', 'vi', 'Withdraw Wallet', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1400, 'withdraw.reference_hash', 'vi', 'Reference Hash', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1401, 'withdraw.Wwithdraw_details', 'vi', 'Withdraw Details', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1402, 'withdraw.request_at', 'vi', 'Request At', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1403, 'withdraw.notes', 'vi', 'Notes', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1404, 'withdraw.received_withdraw_request', 'vi', 'We have received your withdraw request and our team will proceed shortly. We will send you an email once we have completed your withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1405, 'withdraw.withdraw_transaction', 'vi', 'Withdraw transaction has been :status at :time.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1406, 'withdraw.canceled_withdraw_request', 'vi', 'You have canceled the withdraw request.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1407, 'withdraw.token', 'vi', 'Withdraw Token', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1408, 'withdraw.amount', 'vi', 'Withdraw Amount (:TOKEN)', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1409, 'withdraw.minimum', 'vi', 'Minimum Withdraw:', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1410, 'withdraw.choose_coin', 'vi', 'Choose Coin', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1411, 'withdraw.on_same', 'vi', 'Withdraw will be on same.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1412, 'withdraw.receiving_wallet_address', 'vi', 'Wallet Address for Receiving', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1413, 'withdraw.your_wallet_address', 'vi', 'Your wallet address', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1414, 'withdraw.provide_valid_wallet_address', 'vi', 'Provide a valid wallet address for withdraw your token.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1415, 'withdraw.your_will_get', 'vi', 'Your will Get:', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1416, 'withdraw.withdraw', 'vi', 'Withdraw', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1417, 'withdraw.do_not_have_token_to_withdraw', 'vi', 'You do not have enough token to withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1418, 'withdraw.can_not_withdraw', 'vi', 'You can not withdraw right now.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1419, 'see_', 'vi', 'Withdraw History', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1420, 'withdraw.id', 'vi', 'Withdraw ID', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1421, 'withdraw.wallet', 'vi', 'Wallet Address', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1422, 'withdraw.information', 'vi', 'Information', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1423, 'withdraw.enter_wallet', 'vi', 'Enter your wallet address for withdraw.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1424, 'withdraw.can_not_withdraw_token', 'vi', 'Sorry! right now you can not withdraw token. Please contact us if you have any question.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1425, 'withdraw.withdraw_funds_process', 'vi', 'You can withdraw the your funds and we will process soon.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1426, 'withdraw.withdraw_your_token', 'vi', 'Withdraw Your Token', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1427, 'withdraw.withdraw_your_token_any_time', 'vi', 'You can withdraw your token any time, we will processed withing 24 hours after your withdraw request.', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1428, 'withdraw.see_history', 'vi', 'See Withdraw History', 'withdraw, transaction', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1429, 'referral.referee', 'vi', 'Referee', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1430, 'referral.earn_token', 'vi', 'Earn Token', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1431, 'referral.bought_token', 'vi', 'Bought Token', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1432, 'referral.register_date', 'vi', 'Register Date', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1433, 'referral.no_one_join_yet!', 'vi', 'No one join yet!', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1434, 'referral.not_purchased', 'vi', 'Not purchased yet', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1435, 'referral.token_purchase', 'vi', 'Token purchase by', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1436, 'referral.referred_by', 'vi', 'You are referred by', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1437, 'referral.received_token', 'vi', 'You have received bonus token.', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07'),
(1438, 'referral.refered_by', 'vi', 'Your were invited by :userid', 'referral', 'system', 'user', 0, '2021-10-10 01:13:07', '2021-10-10 01:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateOfBirth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastLogin` datetime NOT NULL,
  `role` enum('admin','manager','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `cash` double UNSIGNED NOT NULL DEFAULT '0',
  `point` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `google2fa` int(11) NOT NULL DEFAULT '0',
  `google2fa_secret` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `status`, `mobile`, `dateOfBirth`, `lastLogin`, `role`, `cash`, `point`, `province_id`, `google2fa`, `google2fa_secret`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nguyen anh khoa', '0365664356', NULL, NULL, '$2y$10$Swb6B7tvGMFakpYEblODCurgBgm0i49g4bEOCj3aiF.dVN.xEFzVK', 'active', NULL, NULL, '2022-05-15 21:42:17', 'admin', 0, 500, 18, 0, NULL, NULL, '2022-05-15 07:34:58', '2022-05-15 14:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `user_metas`
--

CREATE TABLE `user_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `userId` int(11) NOT NULL,
  `notify_admin` int(11) NOT NULL DEFAULT '0',
  `newsletter` int(11) NOT NULL DEFAULT '1',
  `unusual` int(11) NOT NULL DEFAULT '1',
  `save_activity` varchar(191) NOT NULL DEFAULT 'TRUE',
  `pwd_chng` varchar(191) NOT NULL DEFAULT 'TRUE',
  `pwd_temp` varchar(191) DEFAULT NULL,
  `email_expire` datetime DEFAULT NULL,
  `email_token` varchar(220) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_metas`
--

INSERT INTO `user_metas` (`id`, `userId`, `notify_admin`, `newsletter`, `unusual`, `save_activity`, `pwd_chng`, `pwd_temp`, `email_expire`, `email_token`, `created_at`, `updated_at`) VALUES
(9, 1, 0, 0, 1, 'TRUE', 'FALSE', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `global_metas`
--
ALTER TABLE `global_metas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kycs`
--
ALTER TABLE `kycs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_payment_method_unique` (`payment_method`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_foreign` (`user_id`),
  ADD KEY `referrals_refer_by_id_foreign` (`refer_by_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `translates`
--
ALTER TABLE `translates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_province_id_foreign` (`province_id`);

--
-- Indexes for table `user_metas`
--
ALTER TABLE `user_metas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_metas`
--
ALTER TABLE `global_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kycs`
--
ALTER TABLE `kycs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1439;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_metas`
--
ALTER TABLE `user_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_refer_by_id_foreign` FOREIGN KEY (`refer_by_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `referrals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinces` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
