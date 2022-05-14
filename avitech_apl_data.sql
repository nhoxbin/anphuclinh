-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2022 at 03:13 PM
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
(50, 1, 'WebKit/Windows-10.0', 'Chrome/101.0.4951.54', '127.0.0.1', NULL, '2022-05-14 05:29:03', '2022-05-14 05:29:03');

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

--
-- Dumping data for table `kycs`
--

INSERT INTO `kycs` (`id`, `userId`, `firstName`, `lastName`, `email`, `phone`, `dob`, `gender`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `telegram`, `documentType`, `documentId`, `document`, `document2`, `document3`, `walletName`, `walletAddress`, `notes`, `reviewedBy`, `reviewedAt`, `status`, `meta`, `created_at`, `updated_at`) VALUES
(26, 8, 'Vũ Minh Chiều', '', 'binm8.4356@gmail.com', '0365664356', '03/12/2001', 'male', 'Xã Kông Bơ La, Huyện Kbang, Gia Lai', '', 'Tỉnh Bình Định', '', '', '', '', 'nidcard', '231213739', 'kyc-files/UD00008-doc-one-1651928882.png', 'kyc-files/UD00008-doc-two-1651928884.png', 'kyc-files/UD00008-doc-hand-1651928886.png', '', '', 'In our verification process, we found information incorrect. It would great if you resubmit the form. If face problem in submission please contact us with support team', 1, '2022-05-14 09:21:33', 'rejected', '\"{\\\"card\\\":[{\\\"info\\\":{\\\"ethnicity\\\":\\\"Kinh\\\",\\\"ethnicity_confidence\\\":0.9999991655349731,\\\"identification_sign\\\":\\\"s\\\\u1eb9o ch\\\\u1ea5m c\\\\u00e1ch 1.5cm tr\\\\u00ean sau m\\\\u00e9p ph\\\\u1ea3i\\\",\\\"identification_sign_confidence\\\":0.9991033673286438,\\\"image\\\":\\\"\\\",\\\"issue_date\\\":\\\"17-04-2010\\\",\\\"issue_date_confidence\\\":0.9999581575393677,\\\"issued_at\\\":\\\"Tp H\\\\u00e0 N\\\\u1ed9i\\\",\\\"issued_at_code\\\":\\\"1\\\",\\\"issued_at_confidence\\\":0.9999997615814209,\\\"issued_at_town\\\":\\\"tp h\\\\u00e0 n\\\\u1ed9i\\\",\\\"religious\\\":\\\"Kh\\\\u00f4ng\\\",\\\"religious_confidence\\\":0.9999997615814209},\\\"invalidCode\\\":\\\"0\\\",\\\"invalidMessage\\\":\\\"Successful\\\",\\\"type\\\":\\\"9_id_card_back\\\",\\\"valid\\\":\\\"True\\\"},{\\\"info\\\":{\\\"address\\\":\\\"X\\\\u00e3 K\\\\u00f4ng B\\\\u01a1 La, Huy\\\\u1ec7n Kbang, Gia Lai\\\",\\\"address_confidence\\\":0.9941802024841309,\\\"address_district\\\":\\\"Huy\\\\u1ec7n Kbang\\\",\\\"address_district_code\\\":\\\"625\\\",\\\"address_town\\\":\\\"Gia Lai\\\",\\\"address_town_code\\\":\\\"64\\\",\\\"address_ward\\\":\\\"\\\",\\\"address_ward_code\\\":\\\"-1\\\",\\\"dob\\\":\\\"12-03-2001\\\",\\\"dob_confidence\\\":0.9999802112579346,\\\"hometown\\\":\\\"X\\\\u00e3, X\\\\u00e3 Nh\\\\u01a1n An, An Nh\\\\u01a1n, B\\\\u00ecnh \\\\u0110\\\\u1ecbnh\\\",\\\"hometown_confidence\\\":0.999862551689148,\\\"hometown_district\\\":\\\"An Nh\\\\u01a1n\\\",\\\"hometown_district_code\\\":\\\"549\\\",\\\"hometown_town\\\":\\\"B\\\\u00ecnh \\\\u0110\\\\u1ecbnh\\\",\\\"hometown_town_code\\\":\\\"52\\\",\\\"hometown_ward\\\":\\\"X\\\\u00e3 Nh\\\\u01a1n An\\\",\\\"hometown_ward_code\\\":\\\"21928\\\",\\\"id\\\":\\\"231213739\\\",\\\"id_confidence\\\":1,\\\"image\\\":\\\"\\\",\\\"name\\\":\\\"V\\\\u0168 MINH CHI\\\\u1ec0U\\\",\\\"name_confidence\\\":0.9998339414596558},\\\"invalidCode\\\":\\\"0\\\",\\\"invalidMessage\\\":\\\"Successful\\\",\\\"type\\\":\\\"9_id_card_front\\\",\\\"valid\\\":\\\"True\\\"}],\\\"image\\\":{\\\"id\\\":3041325300,\\\"metadata\\\":{\\\"_id\\\":3041325300,\\\"box\\\":[119,12,182,268],\\\"dob\\\":\\\"12-03-2001\\\",\\\"documentId\\\":\\\"231213739\\\",\\\"firstName\\\":\\\"V\\\\u0169 Minh Chi\\\\u1ec1u\\\",\\\"image\\\":\\\"iVBORw0KGgoAAAANSUhEUgAAAHAAAABwCAIAAABJgmMcAABX+klEQVR4nF39Wa9lSZYeiK3JzPbe\\\\nZ7qTz1OMGZGRc2WxijVKbKpJqSmiu0vUAEiAIAkaGhC6AT3pUT9AgB5a0FMDfKAgqiWiSXQXuxpk\\\\nF8UqsoasISvnITJj9Ah3Dx\\\\/udIY9mK219GDneiR54XA4Lo6fe49ts7W+9a1vfYZf+F\\\\/\\\\/X1oyRl0l\\\\nvUXP4vqzJIHj\\\\/MbdVZvmm8tLETk9f350eGexOjk7O5Moq5Pjtm1fPH72\\\\/\\\\/wH\\\\/\\\\/CTh0+nYccx5OIl\\\\nm7sDuLuDgwMQkbsDAAECgZkBAAK4AxI24jEEdwUgMzA3cKv\\\\/dkIAKKYAEIDAjRiBEACZGdyZmREc\\\\nDJGKmSuoKjMCEAAAAhGWonkqROhmJDJNxRCIgZCFpB9GdwQAJGRhRAIAADDXINiEUMwQkQhijOie\\\\nYkSCdta1i+a3\\\\/tZvvvb6a4LEzAAgzCBcP6n80uHl\\\\/aO2ZfUyem7L8u5B027H9WzZISbOHeR8cHjr\\\\n5MZNbpq0bBmZghDA4ydPVFUEMaUxZwBARAA3cwAgJlM1UyJCADNFJ2RAcEYUpi6EGUFMSMDZCNzM\\\\nTAsoAjgDmIMrsKpOpogQRIgwhlBKaVIkw1mIxXIGNzM3yBaIgYEAwNAdwFzGAd0cqXN0IM6mCEZI\\\\nU8mz2axkHcbBzUt2EkBEEWJEU9v0OyYmYXK0MUfGYhZITs8uGs2ffPL4\\\\/oNX0iy5OzOrOwO4OyLK\\\\nm4fTwawJFE8v9ZOnj+7furW+uET2508vM9tuCxcXL95580FqE4QgHuqDzFMhYlBztZwzIrqZO9Rl\\\\nNTMtBQCY2czMjJgJPQBExPksdcJdDG1wKs7oIyGAlAIGAOYEwgTbacxqGASJRstEKCIhCEMUgC6y\\\\nEEFBZ+mnyR1iZEYcSwFEYywlAyC2MqiCc0bbTZ41rnfbcZgAcb2+BAcWMa1HigG9lMLMRBg4ABIy\\\\nmRkgUJRiqn2WJsRAx8crov35q2v68m\\\\/52U8\\\\/NMfr106u3bjx4PUHZy+ekk1nZ+Xh7J14dBfn5dl7\\\\nH3\\\\/zG4sUYwZw2m\\\\/CGNNytWhWczs9wwnN3cwQ2R3cDNzBERG1KCIwh0jYBl828aCJM+EQFBGEA7IF\\\\nBAhhyoUYiNDMkHDKukiJRKYxC7NTRINMEIU7ZHXjAATQdg0A7gIoODGAGTTJ1CY0ijN3NwLLKsL9\\\\nZKWFvuShCWfrzdluyDU0ICChq5lqoIAMiKTgDadJs6um2JhpziXFGEOYHy6aeUgNa\\\\/FSiogQ0dXp\\\\nBCKSr37ly2dn5w8fffbTTy624TA0SwIcrt2bxy6jsenQ911sEZndrJiLMDEAbtbrYb0VR73angig\\\\nqrDfqPUIMICm6KsmnjSpCzYLHMGAgjC1ARGlaCHCjoMhBCDVYghtQEKKMfags7YxtKLWpgYR0GFS\\\\nA9e2iUUVEJtmNo59DEFLceRiSsyIyCRDnlwEAeaR1X2bcUp22B59th0+eXaenYiYmJRUbcpT5gBm\\\\nxhg208iBAX23uVyuVlmtZGOA3W6QxOdnm9u3B+ZZ3aREVBcUHeSN119zwG8SbvvhbJSz7fB0Vzaj\\\\nr23d+6IVZ4Q2NAyAQCg8MYC65vzixSljDZQGQEyccwYDRHIwMAUiIF\\\\/FeLKMy8iryK2EEANqESYR\\\\nITQCbETAkRnRHYnMxILkKTMSAcT5nBgDMSBMpgezDswmdFRHAGyiAY\\\\/TCDEgEsWIABEYAMZpSiLI\\\\n2MyCOo99RsE2NiQ0Zb921CWhT083622PKAhIyGpKmDggIORhUitNG2LT9rt+drCIRNevHV\\\\/u1m+9\\\\n\\\\/YUYk5kRYY2bAODuDAgAQhgAHRCXqZul8mA1RySzMipMLhf9Lv\\\\/t32hmicEZyMAZQUlJ4hfffvvh\\\\nBx8+fvxcOJRccs4AiODuBghAxKhdwDuH6VrTzQKJwKxhBCIWrAkVmADQgAgRIDGbqTHGLpXA4B4Q\\\\nzUw4AIIjRA8EEJsU0IXZAVRLKW4FDdiKIfqsaxHAkbq2cdNZ25orEc9SKKWYobodrVI\\\\/lfmNRQT+\\\\n0aC5FACUwIxYxixNEJFCrFrUtC8agozjKE3z7Pmz2XLx8OHHX73x1aZpiKiCGgAgZnBQN0Ei2C8B\\\\nCgYnMEOn0ARs3FPTyrxlM2R2B0QiAld39K6B3W4XI1\\\\/mqZ53cHB3BAdHIAyCr11bXV+0M+ImUgzk\\\\n5kTELORGahICmFEgQECAIOJugGhFE3PFXizkZqaWUojEMQiSm6OZEVGQaJZjjATOQISkWmroCcIo\\\\nAZHIkYjcXCIhORIhYowpBvyltjHGnzx8qsXcpG3b7WZTshIJIkqIJefZvCMiNlxfrJs2zpdw5\\\\/69\\\\nL3zhjfl8ZqaIiESI5GYAiA7i5gBoqohISA7AQnUno8HMyAOrGxGpKgCoaZDgqg8\\\\/efzpp59O44Tk\\\\nWUcEdncgqvmIid6+c3jvsAvoDTO5Bwmq6mYihI4sEhkR2Yoys2pxN2ZyADcPTKUUFgYAJycSd3fT\\\\nAgyIUcTMCMXMAgshkRYzIwJEjjFaURI2RFVddvOcB0IGBxGZSg4sxigcWPKvvS5Tzj97fI7owzCw\\\\nMBCKyDgMqUlqmqdSVAMhMWf1vgzz5bwfhvliXleJzAndEet+EhJ0ByYxBSTmehbRAACZ696JFNxd\\\\nVQmgcZ5yRqIgvBthl62U0a1ufUdEBEAvX7l1\\\\/f7BLAjOQxRCRhMO7gIOHIQNvCiBgzszIUKMsZQ9\\\\n8CKinHOFXC\\\\/hCNYvcHCo3580M5G7IwDWswOAiKoaREgYGXN2AIsxBI7mBgBdbISFWLrG7OKsDd3f\\\\neOt+Mfjw8TmwNyEMuWjO4DDuBmZ2NEJEImZBZKCw241afJpK08QK5s2VgBEJgQSYEBAA2OvqgaMj\\\\noLvXoqZGXAAIIez\\\\/PzgiHR9f++rXvvjuT38+9M3p6WX9VO4GDm\\\\/dvvHKjflBm2IIgmg5CzOAIyEi\\\\nurm7izCAAiACubuZV8AqQqoeQuC6SZlrfeUOzAhWhFiB3F1LdmYAcnAAVM3uwMzCXH8TBk4hIEKQ\\\\nAOApBiIupZAAuLn78cHRVKama\\\\/7WV7\\\\/wu8MPnu5MfaqFHaC7ubk7MDiEEJbL5XzRvvL2\\\\/S++9XoM\\\\ngRiv0hEQIsA+NQmhECIAALqZGyoigjuBINRqr66UAwCAG2gURqSjk5Nh2F1eXg5DYeaK5N3w1qp7\\\\n+\\\\/7xYRcjApghQhBGBCKsQQPAkFBNGR2x1kgqEkQqlIO2TWZe6hu6i4iZuYOIGMHkhuaqGmOsG7OU\\\\nQlHcpRZmKcZSTFiy5pQSuJs5kSOCo0EFjIyCGNroO1y20W38O7\\\\/65b\\\\/\\\\/z\\\\/60EDq4g8UYp3EkwmnI\\\\nAA5QzOz84jQsBMl\\\\/67\\\\/7m0HkaqtdLRG4UU2wDgiISIhI9QeCIO7BKiI6gCEogiOhEyKplX7YlaIi\\\\nsZ61WhSnSH\\\\/ja29cP2ybSAQmhIQISO6gqkRk5oiIwiRizNKmGGOM0aGWAJhSIBFADzHGGFMTQghE\\\\ntdZ2RiQSBIghMKNdoZacM7g3KQoTgItQm2LXNEKUYgiBRcTdwWrOJARGQiRODanZ8fXl9YP2P\\\\/of\\\\n\\\\/R00YpSpLzHFEKObE6JIUDVV7WbdlMev\\\\/9JXZykJIFwFoisGAxyA+CUoRUREZiQQRiLiPakBQERa\\\\nwwEAYQ1VzEx9v6tvZF7QHVDfun\\\\/jcIGMwERC7GZgBqCI9VSqCCIZWElCgiC2L4GZgkggYkdQdA\\\\/i\\\\njI5AyO5WA46q51yISERKKUSMiNM01V1c9wsRmZm7lTIxAhEAOoCreilqFSYruEKSUHKWwDFFRjg4\\\\nODrp+NU7N0FNhN1VhABRXYvmkFI93b\\\\/8zV+6f+\\\\/ubD5zAAESJwQilHqYAzJdreTVZjSue7OAGwAy\\\\n1dqcHBhJiJjFCev63r5+ncyYBBGBrSH45S\\\\/eA+LIkuo3zQkRwQ2ACZGQhCRwEwMjt7GpUVJEJCKx\\\\nOWqtjokwMCFAKQrgSEakEoGEzRURm6YpRZnIARzAzOrfpZT9Z+FKO6EZAoCpD30GAFVF8op4GpQa\\\\nyLQ4hdnJrVu\\\\/87d+k1lyyaVoVuUgMUZmMivMhIh9v6sLFkQQmYh9v25g7uAuV8ERXhakNQVwpYlq\\\\nAgUAJDdzREYAB2S+vNyenV2WYrlkMGtC+\\\\/aDkwNBhlBUS85M6ITuDk5jHmOIjCiK7g7siDRN41VU\\\\nBVVFxOLWm5p5I4LgwmEcs7mnJAhuhO6eszGyu4\\\\/ThIgi0vd9SNHVY2iIEBE3mw0iJIlQ1Amzegyc\\\\nUpfHiZkRHYW0ODXExMgELMQIHB7cvvXanZvvPvx07IfUNuikVlISM2Pig4PVfL6oMVFVwQkJ97ml\\\\n0k6qBFe808tQSHsiBX5xoQUAEAFr2CJwv3X3NhHfuH4tBg5BGPXrb91jdGR09yYlLwaAzCRBZk1X\\\\n38oBSvHtZhymXc2mLJzdMAURkRgihyZEZmGWXIq7m+CYy5BLVgOgwOzuxPuvfXZyqOBUVc0sNakU\\\\nVbOsJU8Zs0JRzWMIwczAgYmcoOYTcEwpdW0rQJzkf\\\\/k\\\\/\\\\/rsphspv5pzNVHN2NdMiQotFZ0WJiIiJ\\\\nAAGlYhfc1xpUT5yZuqkDOLI78NXPevmVCZzRCZSgAr+UwmLZffroUSBmxINZWgVS8JIzAGy325qF\\\\nSilmqpprkqvvOpu1bZMIkQjBgZmIyBFqQH8ZEOvDEJEYG8ZIGMBxHEdzHYe+\\\\/mLC9X9TUVXNAE5E\\\\nwoRkU5nUYJosGxRzYjIEjmKqbsV0JDVUR4SpL8DcdnEm3YMb1\\\\/76V94WQM9FdTIHRGQm1TJO\\\\/Wuv\\\\nvRJjNLM9JL7anntAaUaqqqYcmUWY2fDzlXz52fZby2txBUBIhJqViA9XBzmXGMLXv\\\\/hqsazgACAI\\\\niFi3AyK6GnsNNNj3k5kWHQ0sBIiBiHXPzDMLUDBgRCRyQwRmJkQiwhhJmIRg1rVullJAAtVydcIg\\\\nxSjCSK5azCyGhlkq2GIW2lesKgQphGkYCaiW4SwcY8MkiNTEGIj+vd\\\\/69XmMLARgCFZUEblpmoC4\\\\nXq9NzYgdCIHrIr4knNydAICJydnMTTWAMyEikggw1xUREUdw3AcEIibiy9PN08+ebS7XUXjRhAd3\\\\nryUQKApqpKa5bLfblxucaF\\\\/2iJAIhRAAQK2woLnPYkosiLTtd5OrF2VAoqsaHwldmYDcmIDJ27Zl\\\\nZmI3NzWnykjDFcYkEBJQB7UkHIWi1MCPTORqRbMEDkLuYOq7fqjIKqVWAiLQ0fHhg5s3ALxtEiGk\\\\nGEvJfT+o4\\\\/HBIQeBoq4G7vWYv0zpzEx2lSXr8efKJO65CR9dC0JBAGCAPUFt5ua06\\\\/vtZsNMzPTg\\\\nxiqZYSliDu5lKgi1svZSJmAopOpGVKkJcgd3V3M3DNKEEBCdGdq2wdqlIWRBESIm2gcLFGYzVwNV\\\\nVS3o2MQggQgZzAiQcI9JQpCYQk1QUy45q4jUTgwAGJkQ9budlomZ2naOUbhJbkrIzCyR\\\\/93f\\\\/s0m\\\\ntbXkNHdhdqTdbvjWX\\\\/7FxcXFvkTf46PPSTwAIGY2QkCsFV59mbkTACOKCAlf7c2XwcAB4e79+6+8\\\\n+gCYUuJ7t08sD+4GTtOYi5ZfaAwE34cLqMR+zZjTWLSAu7PrmPviuXbH5jGGGNyMAPOUzVzImGkw\\\\nqztdRJAc0BEc0JjUwYSlPr7IEpjdi6qmlBCxaZKDmVnO++Kqfh4iYSJGYkIwh2IiTO6EajY+uH9r\\\\nNW9TkIPlEgFilKOj1Y1b127dvH2wWlVCpy6i6h7q6Z5gQgTbk1ovT6iCA6K7B8OrIGU13u\\\\/5Ki9P\\\\nnz\\\\/+8KNPmZhFrh0fI+KopeSyWW934\\\\/SLSBvczR0BmZCIYgzmGiKHKA5UrCCgKagaODoYuiF6KSXF\\\\nKIKOUECFsYABgmo2BXAWScLxqhsCBTMAElEIQdWI3LwQO6K1KdQjmHMGAEI2x5pbzDSINCmSmbAT\\\\nTSnR8WLZiX\\\\/h1vUgjI4AYO7T0B8fHxASOFWi\\\\/uWxfnnkoTZd0R2vqqh96rI9hWMIoAYAxAFRkMTc\\\\nVJWI+91usWgdbdmE4L1nI2Azkz1ssD2qNXMHBQMAZkaEKWciIgTTYpXjAmR3RHSzMo2IRgQismeW\\\\n9p0fRyQiQgRCfln5mHlRdSxEpODuPmlB5Bqjci5uhkTMKFzzhokIEzJzakJtChFzbIRAyEVQOgkn\\\\ni+6Lr99BoLH0h8uFTrlJzenpaYypQsyXx7x+0s+RU13Nz+F95etYamJXgqtdTVZToqQQAhq+9uBB\\\\nQJrycOv6CrSYaikZAGKKAGBIe5YIAB2iYxODeZFAXdtVEqtpogRiJkAXISIkRq5FN2BhmNBHQARg\\\\nAx0mVANVMnAzZjZTRA8BQyTC\\\\/Sf0KypPiweJMUYAUi3MRIREhFhhA6UYCDmEkEIA08CEltWK6gTu\\\\nHOj+ndvLRTtv56WUFNNuu2WWk5Ojl8VYjRtEwi9ZT0TyfeLeKxL2lBR4RaJszkQiUsGWmbojuBD5\\\\nj3\\\\/ys2fPXoikZceqPrmau+fM4CL7tmo97\\\\/tTjx4lCEPOIxGHEBCBCesrARzBi2bhwBSIkPZMDQKC\\\\nI0porOIjQiQjcglMiIxIiF40EEcWJkoszByClFLMPAQMIqY6juNyuWqatm1bYS6lSBBmVs0pIqMt\\\\n5wk9V74KABqJ1w8Op3EE8ClPiDSOYz8M+4xdZRxmTIROYMjE4CA1E0Vmt5dd6Sv2yAEdFIHMjZwI\\\\n3RRI1IwdiIVDYLSu6XbrHRARo4ILEpoJYn03ZFArTYiWVSOyQxARYkBHhFrbiEjFVVEa5lrcQnZl\\\\nZmYyn5AIScj35CwSmKkwuxoYMqFQNN9jaHNnIgDMOYcY3A3ARIJI2GzWqeumkqHyMSGGGDmFtp1F\\\\nEnfgFA4PT4gI0E+ONg9Olo+edihk5jHKr\\\\/7Kr9pVrcwoCGhY6qEmBocakhgdYJymSpv\\\\/GwuKKCIM\\\\niOboKgxEgOA1t6SUdrstuAtQk5KpuhkLwy+kPABwdSEWZpYKRSsEgpKzal2yPdqNMZqXotlASykB\\\\niN3IsjiSw57tBQD0+huqKgVRAkdHciEWDGQcJFbOvEkRzN3Rr0h+kQCIwkEkiAg4EGGKaRwnFyLG\\\\n46PDEKSUHGMDhvM2zmYR3OriPPzsCWCgq1oTABgDONVIql4MjGoLOIbALIxU\\\\/wixEBPR6IpEzEyA\\\\nVVGEYIjmbu4lpkROAl7cyNwV3LHuopdBOpK4uhZ1AGJBZEcfx56FatqtibISRczsbox01TKAyp5E\\\\nCV6KIJI7GlpWASJgUGBAU3P3GKN7YQZzV7WKO5smBKGmaebzuYhwiO4wFjUkQJQmOJpjaZKElGaL\\\\nG+5JUpO6OZLcvH37zr3rgI7CCDKftV\\\\/76ts3b18HR0ZxUGKAfSepaq32XUhCIiH+BVp+r+rSfVZx\\\\nBydAvgr8FW256q7vJYDDnjSrR9UJa1yGX6D6pzEjM4BXeUjNlS9\\\\/Vn1NKbUXDU5INSXXVqhZKWNk\\\\nQjBCEGJQJ2Q0JPcozEhecBwzgjMCkzHjVUZA5lAfWDefVblZDDFIUABFhBCFYowhiPRjn9rOpsyA\\\\nxHR4dHT75ivz2Ao6BxrdC6i5EqG7VbSEBOYKiGpW0ahQFSswEaL9AiC4KqSMkBQgEIFDuVojMShq\\\\ni25heceIzAzZCMndgPZtiT0iqSRVIAN3BFQNQXy\\\\/k3HfNAA0dwQiJkTI04RXIbiy66b7qt7dcylU\\\\nu6QEhowgjkTsRU1ASqEqskLVIJxzIeKqvmKR2gx3tfWwni0XU9ZmFhEJgYkIgghzihEIASykeHxw\\\\nIMRaNLUpxjD2Y5AA9nldtIftqi\\\\/TFCEAXbVAX7ImL0t9Y5zACmEm2Hm52rwEwJvLy\\\\/Pz80icHZFk\\\\nIigEBE7uiCAsiJhSohggCQcBIEA0FAdWBQAGRw5ijsVQFR1Jzffox10omGMpWvt3iFi3MhMTIDkQ\\\\ncZ5KKdnNc3F3NIdRyzCOqgpIxX1SU3dzKOrn620\\\\/6eg+MmbhQWv\\\\/XRCikyhICt1us5EQBuJ4eDAQ\\\\nHd+6EVtBYXM7Pjn44ttvgQHWChr2fR3bqx5ZKKAjsUMAfrkl4d\\\\/8ckQjNHRDj\\\\/URcwSj4qWUSQgX\\\\nszkTA1jJ2bQo1hZkDQA4jFN9QvvCydAci4Ihb3MZ1LOCAhWDnEue9udG1d2wEAISM0\\\\/jWFUBV0yC\\\\nIbEZqoKI1JxTsm43vRFlBwMwAHNXdxYp7tl0l3MBWPfbTb97fnr+9PnpxWZnQMNuLA5ZIUiIgbvV\\\\n\\\\/LRfV10YId68cWM5X6QgQz\\\\/cuHk9pYSOdR3VzHS\\\\/+epSmRkRC1Zw5FRrzdqTuSr4QdQZoRC5Obiz\\\\niqkxuiLcuXs7NWHMk4QAWtAB6\\\\/lWAwMjVLfgbADTNOqU8QpyFncFB3NHFwRTVVUwCyzg4IgsYleL\\\\nR4Rp1jmCuaOZMLvWBgYQ7hfOADI6dXHXD0TUdsnNJ1XLhqIeeNcP6qCm4IhOappS++K87\\\\/unN26c\\\\njLC+0y1MNefSNrPMgEyVzH367FmbGgc4OFh+4c3XicjBK3KqRKYW3SeVmiNNBeElh3+F8q4yCV6p\\\\n\\\\/dirqNWQMBIACqiiI5M4gohYttp9QgNAVrTnm00KkggbCOo+lKlt21LUp8KMXWocQU2LWilZmE0L\\\\nE7kCiMB+GxIyWS4u7GrgIMKOSMJmzszZjIRVfRgzESUO\\\\/dQb8zBMigqMOXuAsB3yZrtzdy3k6MAc\\\\nAE\\\\/Pz9u2BaDTy+3Z5fbGjbu5OExZ8khB3CCl2A+Dq67XW2KOjM+fPrvz2r3UNHVL7s\\\\/KFX6qcAUA\\\\n5KopdnXIEcGu6qW6xGpcVTqMsF\\\\/oggBN06XUMCGAEkkMVmmBAr6dhl3GpxeXh7PEOAXhfsy0mxCJ\\\\nEdsoXDe9ZeaGgMwBSRzJyaesrGBujSCAI6KqEaMAOLiCGzgSCGLty1YBZZ6mGCME2Q5jQBi1GIEq\\\\nnj+\\\\/RAwolLO+2PZgOUURtS5FBZvcnp6v33jllU8ePwaEkxCHcUwpICEgxhibtnN0Flker9786hfb\\\\nblaP9i+KWeoqMTMBI6IgsqECADrvgc8vEHwvRbp7FGUuItkKABwdHzHhMI3umQFZRFUh8TROF8VO\\\\n1ztzeHyRcy6OOIxTk1LXphnDZszDmIMgMS67iIRQaVomB1dVZgos5oWJzB3RCRAcoAYNIiEWFjAf\\\\nS3YgEixuJXhfjJp0erk1ic8vtwi4HnbrPhezWTvf7s7ns6Xl0hCmLi5ilBQuL7cfPvrk0eXF8xdP\\\\nf+Wb3zxKh2BZ3RyhHwckeX56BkLXbtw4vn7s6pVye7k+L3ce4r6\\\\/I1ennQjp6uB\\\\/Lr+5ksFUdR0Y\\\\nelFlJEfP05RLCSGgO9fcpeXphT0\\\\/W\\\\/clr8fJCXd9j4ZNDKkR8zIUHxWnKTPhPMRGZN37vMEUiAsg\\\\ngez7boUwFAV3J2Rys6IiwdSJAJH2gMy1DWnA0o9D13V9mWbz5fZi1yvsht6cPnr6TJqm7bpp019s\\\\n+65bsKQX5y8CwO2Tw5vXD83KO2\\\\/ee+\\\\/xi7Pt9NMPPrnc9H\\\\/vP\\\\/jvm8ZSMmG7XC4\\\\/\\\\/OATVVMDEBqH\\\\nMcWEKETwslmLV4mHiKpuRdAxQNifdQNAAwR0AqCr7tO+YiEidEQAcixFEeno6OjpkydMUXU35unJ\\\\ni+3zi4GIp15dLedy4+hQJGz7YTdOu6zTZnK3nEtgbmNZtW0zlSOVZdMEIgzGY+5mbckFAUMIbppN\\\\niYCRoEqIEEUkxUCEMciUdRbbnEtsm2mArmuefHZeMM5aOjxY3ntw\\\\/fRi++Tpi+WsQY67fjg\\\\/Pbt2\\\\nMLt\\\\/8+Z6s\\\\/7Zx49fvXdju11\\\\/7a07d+58+S++85Op5O\\\\/+4Kdf+so7J81hDDFnHXJxwuVq8aUvf8nU\\\\niNgdStHKQvwio1TzEhFd9eD2mxEB0EyFyL04ICJdhd59xSosgMAi8\\\\/lssZq\\\\/\\\\/\\\\/5WjRBin+30crTi\\\\n67wz8GVqhzxt++l8fVGY+r6\\\\/KqYshmCO55stkuzGnHAZyDLnxrlhzGYxxVp6IjEBmmtgIqJcChpI\\\\n26QUYgr9Ls9T60QUJYOtZienF2tuUstFHX\\\\/y\\\\/vvrPnfzOTgJ0TDsujYdnhwRaFZruhZJT9eb27dv\\\\nfvLoQvGjd956tW2bPuecdbNZL5fLLnWPP3uOTGp643jZtq1qISIAr6tBnw8NsWqptZMgYs1Q9aXg\\\\nEERU7eUi16KgCgcBCdyLGRPlXI6Pj8dpQiIl3Q6jNM35+tTBm7aVEJBgc3Gp6m1MWdAwEyKh1xZR\\\\nijGbqsOLcbSAx01zscmwaGAqZjrvZkKkum+BFS+ERESrxQyEZ11HEmazaOCZ\\\\/KC5vsuFYuzm89n6\\\\n4vT5+smLFzdPDo\\\\/HsU0xSCx5dGgOjo8uzs9blrYLTdsul93RwSpy84Uv3IEQ2vncAU6Wq6lkREMq\\\\n6OHRZ0+c+e79W203\\\\/8UDDle6yfodxz008qoc2UseCN0NkbUAACGi+WgOlbv1yuEDgAMx1Q3\\\\/xutv\\\\nhvD7RQugG9jlbtvM2mmYwP3Ri2ehScvVatdP05RnjYTsiMghhMDsiA7TNAqD5rwdMBm2kWPMXRsq\\\\n8VqjVC51OoQBMKYAxF1quq6jeTIrKc2Zo3SzoagZkOOYh9z1mzX2\\\\/TYXYICoI5VxNpvlzcXxvGtT\\\\nXC4WTWQMUYibRpjJBY+vHW3HMlvM8XKd8+TuJZcf\\\\/\\\\/TdEEM7b2Pg7PZy1eBKKlIPu9qe9qSqCKmr\\\\nA4DMe+Eg7pWeUstnVcUrtgkAwBwAEeDoZNGkNueShAixZdZJiXkseda0zIQlJ8EQYsdhGKxt0+Rq\\\\nVloUc8MQikGQWEreDWMbZ5frMZnNuqRmBKhFAbFkSykwMxE3Kc6Wi+WNY05t3\\\\/ergwORmM11GCXi\\\\nxVnZvHjx\\\\/MkL3fWoeQ6E2cuYowQcbdaFRZNikq7h6zduzGaL+WpuAAh8sDqSgAljiJ005prdQnb9\\\\n5PFjJbh557ZdYfVf5DZflukvK0xzl4qhPkehe2xVWyV0VVERUVVOOtRNisjCi9n84GB1uRsfXF\\\\/d\\\\nvSHjZndWxpRiVIxMTYpjzg5OhMkRmpYYQ2imaYqpsZJDCFO2rNmJyQKYItJ2GB0BAbntctEp5yAh\\\\nBHOnELibNdwwxzRLXRvaGFsMoWVOaffJhx+894Mff\\\\/LkszJmM2MzQBDBJoR5lySEmIR1Omzms2XT\\\\ndc3BchFTuzw8mM+XgIDtbL44dJVtt9pcngP448+e5azzw9mdO7eBnIA+F3ohmu0PcsV2qlpbK4II\\\\ndZjwKi95Hb68YuOgglizSiZ9Xk0B4HK5QtJdn1F12GyXXZg1h+bgBn3fs+Xjeco5pxiDK4ADUnBQ\\\\niGiAFDVrSmQehzwV91IURRwoF9v0PQAwooMjWM5lOWtmbQtOq4MDCQEJu7YxR7c8leHp0yc\\\\/\\\\/O5P\\\\nHj95rkM2VUIikkAcGBYz6WYC6KtVTKlZzrvDw6NrJychxNnBUUGKErsmjhKbZKg0iwddk0Ydf\\\\/ru\\\\nz5qU7t26GSJVXa3756L1qnz9t1pHhCx+VUXViGB7vgdeotGXzwQQkAjca68rIHZt++u\\\\/8Wvf\\\\/9Nv\\\\ndc3tocnb7c6sEPhYphSwjUmQGyFGFPPYRFRQNQsOgF4MES1rcWBFJwdBc83FrGRseAfQhCgi5h4j\\\\nE8E0TcvlIgaZz7pAycEJ\\\\/HKzuVxf\\\\/PiHP3z87Pk4TnsOwDUSz2ZhOW9ms2a5WhxfO7p+ctSulswN\\\\nhtCmRWjj4cHhvF2qZgqBQhCVrDnIzkADhfc\\\\/fuiMRzdP2tns5fmtbC2AE2Euhcz20ZOZiNxQcs4x\\\\nRKyyun0hT4B1q9ZRuF8gn8AJsYoxkXA2667duHF2eUlIpeSUUoyxlEzsXDSCBsKma7KWlhKYUUCM\\\\nIecJiQefUGliJANWNzUtWZjdgGIAIHPPWhy9DSkSAGrTcrNIbbtMFNW9H3ZTLmeX2+\\\\/91fdPn74Y\\\\nNj2AVz0px\\\\/j8xfZ8lxeL0s2m2cX28ZPnhGE1b1\\\\/70he\\\\/\\\\/o2vXLt\\\\/FzMzMTmKtIQ0IhRzQAAhJlzv\\\\nNk+fPd9NQ7dcEJG501XQNFAEUq1lsb4snNzdwYWI1DI4ajFiNFBAc3MEckVndX+JYKuWHxx8NGUj\\\\nVLt368ZY1BDaKKYZzBW4gUToITCgsxDH1DARkpqZGlEoWlBCwVJ\\\\/CWbW4hU2IyI4qJpwlWJ5LqU2\\\\nn0KMdXCi7\\\\/tBp\\\\/Ozi92u\\\\/\\\\/ijT5999ixP2dxyLm64HsegenRjiUASE6OHGA5vXL9z4+TWzRuDws9\\\\/\\\\n\\\\/ugnP304m4Vf\\\\/fVfB44mPE05Ak15oNSNrUBW25ZdLt18du3kyKsE0uCK9yBmCCLDOHJtfyOae51i\\\\nkCtiaX\\\\/MEaHOqTj6S3luPf7weabCyKGqcU+undx\\\\/9b4TGIKI5GEkImcXBmLeDMNmu7u8zDopBgKm\\\\nnLM6sKFbWS7ScTsDz2ZAgOioRgRmrOBU4UlgctpzdyFK284dyjgNL84368v1+Xr7ycNHm3XvCKWY\\\\nmg3jlNrZw8vtdx8\\\\/Pt+N66EIexPC0bL96994+ytvbH\\\\/7137t5s3bgRhYfviTj27fvbNczFSzAzHz\\\\n5bY\\\\/XB1NkBFxGAbP43zVOqH8WyfV3cxExK32tpH3lDzsxwrMjAUcFJwQ0cFe1vKfd+rd8KqtBGZu\\\\njohd1\\\\/3Kr\\\\/6yPf1Y0DM5IqqZAqy346Onz0wEJajSepg2l3q66dUBQJddczifnZ2Xhy+e3jtcRGB3\\\\ndCPVopEQgd2haAhCbl2XQoA2UgDM42il9EN\\\\/eTFc7HaPnj3dDeM4qblPeXBMzzKst+fvP7uQ1ObK\\\\nLkZJi24L+MqXv356fvqf\\\\/oN\\\\/8vSTj\\\\/7mX\\\\/va7\\\\/zdf+\\\\/e3Zub3dZdo3BCKeJNE7141bKtLy9O5rPl\\\\n6DmYkhvsm537YR93+IV0tOfxHKWiomKGDkJk5gDOQuAI9vkTgTpqsy+eAHxPpTDG+SwC4kCuqg6Q\\\\nc3lxfrnbZOgOXqwvTp9uLieXJvWbHZEUc1PfaX8+eSnT0UL0Aq6HWRvJHczB3NjIwV2ICdt528aY\\\\nooUgFBg85ylv1ruLvn++Xm+HsR+LmY3DENr0s6cXW5AbJ8fP1r1lj0iz1VJSeOedr7z52r3\\\\/yX\\\\/4\\\\nP3j20eM\\\\/+KM\\\\/\\\\/fPv\\\\/uif\\\\/otvL7rFL\\\\/3y125cP5k3tNuNF0UlNB5SazFRJOQ265euHb5KDc0XP9hc\\\\nwC\\\\/omWBPLUMIUin5\\\\/YyLoxg4OVS+XbVmdvNsLFRnserSE6Fe9UQJkBAdnNx83D3+4Y9vRAItAmU0\\\\nL7mwx0HHjx8\\\\/Oe3VHZfH3YNX7n7\\\\/ux+EKONQJkMJ8e69O59+9NHJ8fHpk2dhRmSJiAwACgDbRNCZ\\\\nuWtEZzBwV1U31WkaRu13w267M9V+N025lGGaLWbvP9+9GPNymVJHX37n1b\\\\/6y\\\\/dSm4Zp1y2P\\\\/\\\\/7f\\\\n\\\\/8\\\\/+9b\\\\/83Q8+ev+9b3370z\\\\/9i7927TidHP\\\\/5t3+0fvH07Tde52V7cLharpbgenj9nnclI07j+Nrt\\\\nk9\\\\/6lW\\\\/ce3Dkm2fPT248OTt\\\\/yYF+viUBXwpuzQyAxc0KAfJ+xq\\\\/SkRXC78NEHSg0KF4pZGCvoMon\\\\nGv\\\\/kv\\\\/h\\\\/X3MGwIDgaNtxzLtpGMtoSimGcVhK89UvvXl0cvDxB5\\\\/12zGKCMnBwerhhx\\\\/dOJrfvrac\\\\ndvnp5cXJjblPkwMFZAQVoIjQESezhdROcDC1MmXNOg6DTZP2Q9TSEoRltw380dOniaVc7k6HIjHc\\\\nutY9fnoOQMOLp\\\\/\\\\/J\\\\/+p3HhwtLh5+2rDcuXV855X7EmfPnjxupDx7\\\\/qLpk+o07i4PFotpzGm3S4vl\\\\nbNZ9+Z03fvNv\\\\/sb3\\\\/\\\\/gPmnIuX7qGe5yzT03MLCwvM7aaVUZZmNhfkvNXos5aWdLVzGUVbQTAOthk\\\\ntZEC6Go\\\\/\\\\/osfv\\\\/WlB42TGhUPLZlKKVEUW9j2t26ckOPTn3wc39CvvPPqv\\\\/rj70YKqHrx7DNGf+PV\\\\nG+M4MUMBeT5s73VNVg+BVEsSEcJIIODBvU70eC4kpuNoUx43u3G7I4fIFNp0eTl88eZxk1IGd7OA\\\\nfK2Jd7qGJTSB5udn6936aLE4Pjo8Ws2ZkC1fP1qESMScmkiAYGBmnHPOfdaIRl\\\\/8ylvnT57axWZ5\\\\nY\\\\/bu+oKIiUjrACURIqrpy3WzK75D9ojdoU5lv3yFKrkbIhZVBvIqqgaHojUsEBIRY4jTOEViQGuj\\\\nQFuSNN0AK9XrszAqbIYBIV189Ci07ZvXDz\\\\/57HzKYxPkxsFi9+nTPCrlskSc+klWDRFHQgVCcmLR\\\\nkh2EWBhIqibE3WFSHwhcECdTToyEyyY1TLuccSwKWMapaVLgpom+atPBcj5bzpbd7PBo1XVzT+ST\\\\n5cFgv6MoEBEKS8zgizYxckzh4unp2epi8\\\\/jRenZdZ0OWgLYn5h0Q\\\\/KqbCQCIBKDmiCS1Q\\\\/uSmf+F\\\\nTXo11kA0uRGgfD5aCw4OWMDxlVt3YzTEHAjcSpNYmQixKSUH6nNGj+pALnnXnzDcfnBzN+0ECRyY\\\\nIsaymjXFdd4IgceYHAszdRITcwwUWNxdS0F1ZkJzMIiIARRs6hIThe3kCEygEVGamLUgI4DVIcw2\\\\nhOOj4\\\\/miOzw5DFGmadStoYEERiJOKTSCEppuDtTCbCHNfBZnpro5u8izxfpsc5gPaop\\\\/udsIuY5e\\\\nV0nHnusgZmap6hf4hfbRL1L09ZsMV73RGkQBAKC4E2C7aNqkUx4BIIQEVkiM0LMyTS7MgcN6089m\\\\n3VSmwaAU58JEpGqTjcIU3LomzFMjgYLAMJaI0pAHMCIRZhEG98BiuUCMXYw986ILDlEBEDgkdB2Q\\\\ncDeUWRtnIQbcG24QQ+Dw4uy8323Wm4uua5sUQpAYEzMLExEzYtt0iBzaLqRWi06sXizNlmMJm4vN\\\\n4a17xdWsgpxCRIAMBvtaHQCviLGpjPKLSPUK5CM4Er3k8KEKugsoEXodIfMacNEZkZFdyM3UAEBE\\\\nEJ3EgoScR2IQbPsBijnkguaNoIERAnNAhBDIXWOUNpLAFKMERnGIIQpzyZpzWc7ngkgSyKCok2Ek\\\\nWS4WeRoHM1E7XKa+z6LzbLkhln0BA4FJUmq6mIJECUFCYOmaDhHcDAMGMjeQGBazFYeWDZjDvOnO\\\\nt7svvPU6jH0779azrgyMDoiIxO6OmhHZrRJ67FaYSU2LFjEzBETCl3yfW1Et4E4WGA0ZyA0A1EUB\\\\nDSwAALoBmUJ3fQWnLyag1o0AmbEUZeZKd8UQNy8um6ZpE66WcduPedKctSouzX1bpjZRE9IigpAz\\\\nSkIPUEGygRMRmyoQAgIHqfr+tonGaGXCGHHSVkiDBqK2aTfbnRdg18DMIpEpNjGEGJmiMIuJcClT\\\\n13TIRAzMyDESOTep6eaROJAUVZFAZRsbad987TnPmCc3Qth7\\\\/pgZoDGigakjWqFCExSvpaeDg9VB\\\\nHnA1LeXDD396dLxM1LlZ08pusy3FD1aHaoYkSrDdbZvUMfjRjWsvLs9IHZ0QVEKo3lcve1CLeRso\\\\nFjXM5XDWaOs56zRZ1qylhJiaFJrIHSOZuSMDFZsQCZlDECKMKbrWERwIEQXS5vlZmHUsvNv1nOoP\\\\nosCSFVPAi4uNmBgAIyq6amk51bY5eFXvY53aSxKQJMWUQhdjjDHMunls5y4cy+aDH\\\\/7VyWF3996d\\\\nteaSM6GWYlf1N4J7RgC30\\\\/XzWddZsd5ytkk6Ktm8tr8dQUvpd7vdZr25vPzqO1\\\\/97OmzfuJ5I8K4\\\\nWsyHvq+B9f2fP\\\\/rCm2+o+cnJ8eOfKwJoVXcCCBHUWsJdFWdNLAUCcIqRsg1T0WxEwE6xbSNjCNi1\\\\nKcC+qJ3GIXJw9zp4LkEQAAGZOUZhiqGDW7dvbcexaEHC3WYgI0Eg0KaRLkGkkIvnQoKUGSSJlhJF\\\\nwAy8ukREM2OmyBTaLqYmSBNj23ULaeYoQcHd9MNv\\\\/2R3mL7y23\\\\/zsu\\\\/7zaU7F\\\\/WsPow9EUyjNU3r\\\\naI6wKzmQxJAiJMk6GIQ6JlA17ykQMeVJ+2FYHSxzmX7043fdoGlbkZBSfPzk8Q9\\\\/8pPQtjdvXKfY\\\\nqGNUrUVBEAFyUndHQYIQqsefugNiVp2miQmiQAxRhLoAKRA6E4IaoGtg1gLI1eyOhKROUCChARQt\\\\nbWxCDDPhcZpgGJto45iLKzMLkWWYt3MHmybPBhGQ0Ekc0Uw9AoMruROSCAEyCxKF7mAJkWMbIUVg\\\\nJoQXnz2\\\\/fHbeeSPoHMKHn\\\\/5MUYldhXTcoJcvvPqbQQ4LWxJ6\\\\/\\\\/G7gPnWye3SR\\\\/n0+Tnnau4zFc3b\\\\n7cVuPM25pLj49Mn7hFh94ADk9Owpi1ywXK53IrKYL3PO1eGkni8mcjMCqgYEo\\\\/keUoA5uGdDs8gA\\\\nBhi4bSMTMAV3dDdAR1ciCoS1bSMiLBQicwypaYhFQpNicveQmKxYpXAUEGksgxZVD0miuWGgJvKU\\\\ni6pyQCeTiODEgKBKCMTESDEQh5ZTh7GdpQOiTrrOEaCUn3\\\\/n2+zGZllwy9sBH2Kan12OQHhz1ek4\\\\nTjbksp0387PN80+evTf69OmzT772+q\\\\/K44uP3r73tk56uLgxTfnR08c2PBFTsydrc+T5uJUJhWH9\\\\n849\\\\/Nm9ePTm+V8zf+fI7Z5dPwao+Ah0JuDKmCO51csWtRBFELFMBdyKmJlip5ZaLECKVbFdoF4Gw\\\\n+scgYB23alJkEYX90I1nd3EWcQDy4E4ll9gEc4fBsGhgM2cSdgeJZFDdLUrg6ObCHEmcDB1CqFCE\\\\nqYnYNe1i0bXzZraw2GkZkOwnf\\\\/YtBD08PICQfvrhXzLS2WZ3erFZzBbb3XbZJndFwGkYf\\\\/Dzv1TO\\\\nxWXQkdjpxfDJuw9\\\\/lNqmTFPRXEoGNBFiQQm4KeWTzfOnmxcFYX6YVkciEhaHi1u3b6psH\\\\/cP45IA\\\\ninsAV1MtquY+FRsrhCIuU0b1iOzFyC0GEUJCMrecMxKaKZKp5VqYISEgiEjTJERMTdO1HYuAY85l\\\\nyrmKRxBBRGZtR0xAmEIkYa34jhAdwZARQ5AUU5faiJQomEMTU5KgeRIOSCmyHM9mUV0jl1B42rn3\\\\n+fzZ8Pz02rXlK7\\\\/61xzDJ\\\\/2Z5qLFFrM5k89iM40GGKKIU5kdHe7KmDDPY5MHpBSRBS8321yyqhKz\\\\ngxXNpUwAzujzZkaEXKiUaRg2ZiYAH33y0x89\\\\/Iuz\\\\/vl3f\\\\/YtLZODVe4OmYoZMtWhjTxOtXelFZAB\\\\nqtVeNCEEhACOROJG4Fxp2ZwzGu47dO55mtzdmZSgaZumXRChu4YgIhJSk0LLTGqopQ7VKgKiehdS\\\\nG1tBRsScCzoSWAjIzEjUNg3FSEGiBCcAIiQMIhNkMd+dn96+vnj9V772yjd+ZWDbbc9T2y4Xc3dt\\\\n5zjZgFgQBMBd6fb83pEcJGzv3XhttTyQVbh+srg9a+ZRODKFNXlBQBc2zWUZIrQcHZerPAzbJMd1\\\\niH0+mzs2qEUkEWnuByAJ5moGrnkyIq49Vs0FzcAJAGt3ldzBQXXfpanMgqoLohatxngiRAxt0zRN\\\\n46pePCQ2M3UDd2QkJgAPsQlWYEsirCqIWLS4IoawKxklOpQQxdUIgrsyJS3YNdHJRURmM2lSjLFp\\\\nY0oxTxMGwLE8e\\\\/b81\\\\/\\\\/ev3\\\\/jtVfe\\\\/\\\\/GPnzbrQdc+duj5xmrulKdhgyG0ae4OSeTWwZ1IsS\\\\/9QXec\\\\nJ5OoJ+uLvFl\\\\/2oIQgcMJ6Ezzlj2rDoraWYxpwjFrTxCSqZ+fr1M6+OqDbz59\\\\/skszPDe+Pi9n2MB\\\\nAkgi5lByTkDuPpaMDoHIdK8MqFy3uVWFTy10VZ2Zc1YEJOAQhJnqXkaAFCO6a1FunGNgYbWiwCSM\\\\n5BQkhTRBr1piDJ4VnaNwdocrG4ymiaU4UyDAEBNKiGmWYnIr5uSAgmJlwrbBPGk\\\\/HEY5e\\\\/T44\\\\/\\\\/q\\\\nO69\\\\/45v\\\\/t9\\\\/\\\\/Z8jXHCIxYW4IifAWWfvBBw\\\\/rtF9qQjErTP32FIDEdaKULElP4GqaYzxcBPCirnkq\\\\nXgIau2XN8yaOZh+ePgFzcFDP5Cd9D5IISAxLAcBxMlBBLKbuLiSmhvtE83IFPx87VTdwBKBxnMw8\\\\nRgYn4dg0qZqzqqohEjMhmHmehqa9LaZlOgMFbhKLpMRjCv3gpeQY9hJiJjQ3IhJkYooEdcozSui6\\\\nLnVzN09NHVRcxDYO7uwFhmH99NkPfu935237xi\\\\/98j\\\\/68KPm8PUY2xyACYoXByRGdTUUdSeRLVRD\\\\nO1Sw4ihnH\\\\/wcEIthjFJyJiKPYbZaGMYkLMuZtTFBzF6clJlnq5mCjVO2MZspSthQlJPr9uiRI7hk\\\\nNAbfDy5UR2RmZAJzK5MGIQcuXohCzqMWLeqOWFTBDJCR90NfTWyJjfcOU+pKHLiMY3FgklJw2q59\\\\n2IU2mSEQIYmVIrzXxtS6lYiCBBECp5RaM02tEIFaWS4P2zQHxxBCMYgztpID8ovTy5tvvnX91fv\\\\/\\\\n7OPPfrw5k1XTmzthcUcWr1aWyABu+9YmmllDrO4BSUadyFyHqVR9cIi2sfH8VAg37mE+W6+WaXHk\\\\nxTxP6lYL4DpmBEUz51xgo9gBwlQQSVCK5hRRVTMWCVKmLCICFNuYczafEMm9qsFQ1bIrlLKazco0\\\\nLA+WQQSISik+KcSgkyZkIc\\\\/jlNpooLPZfNy2fX9uPvCU1XwYJismLFW+4e6GEEkkgFlxSzGGlEJq\\\\nluYQpAlNyzGu2kVpkzInYS3K5lNWadrXfu1v\\\\/sf\\\\/9\\\\/\\\\/0YpWObh+QkYEKsrpfNX+9atUJmGlvJr6f\\\\nW0IQLFq7fEJs6pCVAFw9JC4Env3w4ADalhzFcZzG7HXslHf9zhBjiAjlo0+ffSGxFcyWSUTzxKjE\\\\nGEMo08R7QQCblZSa4jlPbmal6JStZAOwWdeGSN1sQYSqTuDZVASyakAAs6KayDgAWI8wk5ia2I3j\\\\nxsbi5hVmuheAME0qEYjIDBA5Bum6mZvGEIBDSElCpNR082XTzXZJKCYzwECQy\\\\/nFeraa\\\\/1c\\\\/+tHP\\\\ndptbt5YiiZCRyN2QWE3r+FxtiwoHcoS6M1DAQM0kj1PtN5kaOJW9cTUMQ6bA0tKkTkUtl812W9wc\\\\npGhhRCZAJgXXPF1sthOvWHYJsUylAJFFEcsFCINmZWY3qElGC5llVUUQs8ndQ4CbByljZITKAULt\\\\ngxdF1BBDzplKaY6ShDr\\\\/7\\\\/Pl0kuZ6QwIHz\\\\/60Nyqy6Gbk4grBBFidjcRdNX5wQrQQyPtvFOgw+Xh\\\\nwcGyDzyfrZAZ0LGou20vz+cPHvx\\\\/\\\\/uG\\\\/Wt29tlyugrRAqKqONXGQg7s5czBTtWxO1VzC90pap5Q6\\\\nNVUt7ljU+pKLm8TgVD0dcLE4IEAOMuSs7qoFzLPqpKo555xL0X4cnk9aJu8nKI7IYVRV9+Jasa1V\\\\nlpAw52LZSrF6eNBNwY+PlhSbRROIyMDVyB1L0Vy05LIbelV1RGqxXc3mTdMkyaUn0Wa17BYHt27e\\\\n5SgSRUsRpsgBgawAIwpx07Zt18am7VbHB8fHoWsODg\\\\/m85kHSfMFBanSFXdQh5OTg+++++66TEcn\\\\nBymFPUNMWKs\\\\/cAQQRDZ3JCqABcCActaCUEwRUfppRJRSypQHAsuIi6YFAFPfDTt1aMd+cXS4udwV\\\\nrLyoI6OrA0BhVNc8TfkSzhs9arQh9mIK3qUGMe+lKGrE5FB7QhBjBEW1DAXAPAWZN62ZFXR3z0XB\\\\nqBSNMRaDxMRMXUrtyeHB8Y22WxDwxfpy9\\\\/xZWHTctW1qjhbdxx98sLGeQyhmgR0QJJI0KUYJkprF\\\\nASKn2JCkbtYKoRwcToJBydnAPWdF8M2Q\\\\/3\\\\/f\\\\/osXqT1YLpq2YSH3vR5kP4O+t6wCNdMrK7FKOxS3\\\\nOsJCQEQhqBmiAbqaVoO0Wvkh4nazGbMORZGoliKllGrN5e5AlIsCelE3WbpOu1LUbNTeHcBITQfQ\\\\nDKaIo1lmGGFyNEJSLsoeRBSzgRqaAzDxmHXIZb3ZARChLGI3Ozo+uPfgxq2bq8Ob3MxiCCFwbNpZ\\\\nA8vrtw5ef5PrODWAMMeYgIECElHTNKGLEml20KXVMmeLHNvFatS9rrBKEQipaPmrD997aniyOlod\\\\nLAMhVsdAAHSvtmukUNwmN72ysKpLlHN2gGqEI1PJCZBcicNu2\\\\/c5nyxWZuamrobuPKlI6HOpxpJ4\\\\nNcXkbjkDkU9TIZbtZvsi4i2BNghqndoEdY8hoBsBoFkICcCnadoLpgxDCIpYXISk6eYE6k6OF7uh\\\\npBAS83K1WF47OLp95+bdB6t79xDg8PziycMPm7t3seVVc5hWR+3RUogZA4AS0jj13jAHFmFjwpC6\\\\nxVyadtU1JbUpxu1uSMdLEMFKwiA6uCJ8+NljhjD1kzCDAkeurkgIaHtj1YIE7jXjXRki1MgIezWt\\\\neFYPAgjTNLFwx45orlAHld1suFxPF+uqGa+CZti37E2EzCwXIw67YfdiyyeHSbQIIBQt4uReABgM\\\\ngTQr+BRJADGITP1ISOieoWTFNiVp0sfPzv\\\\/ohz87ODr+lVduHQg3bVouZ7Oj48PrN7s713jWPf\\\\/5\\\\nx\\\\/\\\\/4n\\\\/63utv8ja+9dfP+zdmduxkK0pDLKELuWAVElUulhoMkcFQPXOD5dnvULLv5PDUzBXTiPOUY\\\\nhJDMQQc7Obld1PtxiByAQIhHr2Od6O5uBuyuivy5589LvFRzFoCLahm0EGIpBRxtbwnH601PzF3T\\\\nQorUdpebZy+fhplNY3EHZzezPEwEvBuGJnHWZonKwq6OhAQEYOpIVwOlhBCAICuAM4OYDWMphiP4\\\\nez97989+\\\\/OTRxXr3s4d\\\\/\\\\/K3v\\\\/L3f\\\\/uZv\\\\/dKXloereZtSRH1x\\\\/nv\\\\/6L\\\\/8oz\\\\/489\\\\/9ix8fx\\\\/jnv\\\\/sv\\\\n\\\\/vZvf\\\\/13\\\\/nf\\\\/m\\\\/SVL3z43e9PZWKo8b26umDbNiHF1Kau69S873PHzWw2U6cyTCOjQODqluxADs93\\\\n25gayGUhwiEWmxAgIBe0DMZI5q6ODu7\\\\/5mruC7\\\\/9rQYqqHUcCEx9ylNYREIYSm9eCEIpJe92C8ac\\\\n81WPWcGxqsinqRBgPwxVdl9UP3n67PD6isiFRYuyEABWV\\\\/RAVErJRMxUSmZCdWCWRuTp0xcrXYDR\\\\nrYN5ZBBcquYnz0\\\\/\\\\/6b\\\\/849\\\\/4la\\\\/fuXVrZ48u+wFZ3rh3+3+4HQFg0fLJcXt2+Wn3uPnD\\\\/+z\\\\/RTOI\\\\nIh6ikccY9wbBQJyCtG3XLRFlvpjHtj273HbzBTMCAQMhkoKRwifn54SMAMjcpLTuJ0QMwg5lKuZW\\\\nAABx3\\\\/t8qQh5uUMZqRpgCCKqFgWYpkxEi3ZOHNzLfjIMaQG8u9j04+hWfbPR9aoed3Dwadh42nlw\\\\nNfn4bP3F20fgSsjVKtfMCMHNAJmZi5lhNjcmRkAA7xqZLH\\\\/w\\\\/qNB7XKYgoRF5FmaByZG\\\\/vZ3fvzt\\\\n7\\\\/1o1nbk3napJXnjjVd40V48f35e8A9+7w+ePf\\\\/\\\\/niwO2qbhQCiCQu5QHRDaFJGo90KaZ0mEIOfc\\\\nLGYIEB1RaQKLxOh4qrutG1FQ1Sgya9ttf7knwmxPgTOzmBNRcTMz+LfGQRAZqErb4aW1eTGdxgzO\\\\n9Z1yzkXNiu62OzU3wFLM1Iuqqjr4pBkIp9HapkUH02kzlW3OaKCg5uhaJ3fQ9xM9iDUEcD0pHoTQ\\\\nrWW6NpsvgrSCLelS+GQ2O+rSQRM6wg6Qxym585gDU3cw1ylztk8fPj17dnqwXLVNikEoRGIm4hhj\\\\n186YhSSEkNq2YYSua4TZ0TkIBiyEBtCkgOgOfnq5cWYreZpGN5unFmDvqOiO7ODupRR1NDQiFBL+\\\\nNw1W1QUoAJAgOBJTE03LmLMEYaYYZCyTQxHBnuzg+sm65DxNVrT6ARKRqRFivy1tuH95\\\\/gTHiwkn\\\\nadLTTVkeJcyGjMUUmNGhBn5wYyJwoGrSXeX6QhEg5+GIZ6kNmnOTonsBtxBbN+2zCZJjQXKAcTec\\\\n932O82buOTUpNQ2nWMDZSGJq20QELEHrFS4huvNqvowSp0AB2Qm52kUIV2Gxmj\\\\/87MX5biMKQ9Gu\\\\na1pOuVTbQ7uSJ8mVCRgAAhEV1+orsgdP4AaKAGLmbROmPE45EyIz51z2RBHxdtezkKAvF4fTMFyU\\\\ns1ImIvZ6AwDQ+ZkXj\\\\/MbD9brC9tdouNpP7m3UO\\\\/cAlBVESaDCTObkoOrG+5VgGbmiA4ehXKGFIQl\\\\nmBkBCpJrQQZ1G\\\\/NERMpmHn2cmpgAEHIBBFctpcSmYWZhiG2DQI4wm3VN6iTI4WrZhmCuBG0GTIp9\\\\nICFmAgNnwNHs4uJi0cRPPn50dnme4Z6FBK4GVnQfKH1CwOACe90SFEMTFje\\\\/mqIFRFLPZGZTzkWN\\\\n6cqv1SyQEPA0TUEEHdabjVdWE\\\\/c4l6qRHEEpO9Nxt4N08gDCDBxH4h4FmLwK0GugRXBHU1T1GmTU\\\\nPas5oLvmUswIHXBSB2dSBgWAEBiBxcjVzSYEUFfQiX2YJSeR2CRuEqWAgRQwNY0Cg4R2sWxXhxx4\\\\n3qZ5agCBmZgocXT3FOOVSRAWpA+ePWtn87adO9FnT54uMOhuKOOUc6msEiIYFyAN9SapKrHxz8cU\\\\nX8qZEEmYuWjpx3GyEllyyRPQSx97SUmlKSUyE8ZQcxoimu+hw637i81Z\\\\/\\\\/zpethkbVqa1iksNtA0\\\\nnglQCEqxyKhaCBCQHbRCNAPph6HOR46TTlMBAzNvQmBiqa5ngOMwFjW3IhpAPfF+lhIRuWGOsve6\\\\nN2rbTpFQtW1ajg22HUjgdm7KFijE6BAGwSAJ1JgRAMEJzN779AkGiSIepEH85\\\\/\\\\/49+LRwe5mF2dN\\\\nCMHNdO9V6arF3YGpeuO4fm4s4FeToCQhEOI4jZUer7rxernCmKdhGhUBU70kQgiDO+acAbgouKIb\\\\ntotw99XmtXe6+YpICEEfX241RnPvsxLymNUNwU0FVH0qmt3VHICnbEUhFxOOSWTWBLJSXSWaiK7q\\\\njsMwqrrrviMSkGZN6wASJWuRSIY4n8+ZMcZUJcEhhlnqFm3XSUQJzNGcHY0ZHfTl6IW5X24vL\\\\/pL\\\\ndy\\\\/TZGfnbRf1oH027YbdYFqvJIArk11yQmYO9G+42dHnBg\\\\/IGGW\\\\/5wC322G5aLxetGXg6GqKIsqq\\\\nmqk4MqXUGnjTdg4MaP1ui2jVBSoleftLD37QbzFEWaxeQLnFuY7gIoAB5EmFxdHHMSOK2hA4ZETP\\\\nSsiOxgQirFrAKIXIWJCo114cG+b5rMtlNLOmbWK1UO5SbBIghm7ZzDoJYtnnjbgbogtj2zQi7ASu\\\\n5hIaksnRBaBWPejm+id\\\\/+u3MmSWQyOJ4+YN3f5hmM2rSgHtH33qsXd3BDR3cVc3xc+\\\\/vPXWiQITg\\\\nti86gwSRnGJqiGtrcpoyFBNUXx4omjsI82K17HSmZjHGy\\\\/XF0O\\\\/cEJwc1RAmCu3JoRec2mkLkzsr\\\\nGU9GQgoIRAboJCMoIWe17CUQA6iCtyxuecp5zF6mabsZU4IU4mo2u3GY1JRDOD64PpZCnIyoW8xX\\\\nq2WatURCbcsc03K+3ez2Hn0htU3bSlJCkqgGygiCSOxqLGRmarAdxh9\\\\/8MH1N+8CghFqF7\\\\/xa3\\\\/t\\\\n1o2bf\\\\/wnf7ZbJhYCdEQ22\\\\/v9orv5\\\\/jKSooXZAQjrVPwV1JdpmoqamRM7IpZcRoB56ESkykrzvru1\\\\nD5pEe+i6p0jqbJ0BMQDawfFs\\\\/SInuH\\\\/p9II+vF42ChM4KiASleIIhkCuJtXtFhxARWTrebvJ\\\\/W4M\\\\nTO6QOKxzFvJ2M9653VJIBSFT7IfcpBBC5OVhe3hreXIgTeMMyNCG1M4X5xeXyFTMS1ZoUFiy+ygQ\\\\ngzhW12syK+4OgH\\\\/4p3\\\\/+ve\\\\/\\\\/6LfvXLu8vDw+Oc5aQkjtfPnG6698\\\\/\\\\/wxMyMwIqvlaugXCfXK4IqJ\\\\nCQH2o8d7NXMd85A8le1262iAYAb17q7qU2LuCJEMHKm+i5oy0TRNzERIyFBKnf0uCB7jnIhiXBHz\\\\n1u6N008jiaHhHn+YGzHtzV13kw5q7JDLdLHeonsCFpAYedbGaRJQW8zmD77whX4YKQkDHBwcfvHL\\\\nXzo9O12cHFizzHHmgOPF5dFi\\\\/uijjxw9LeYh8OHJ8SrMMjMBAVAMwkgMAfZeIejuBfFf\\\\/Os\\\\/vXn9\\\\nJM2b1eFBnVnvulYd7z949XuXT4lFMKpmRzRwQNScgYNdXZaFSGoTgCOKg2fVUC9f86t5ZabquV5t\\\\nHoSIFIm7xoA4BnSYz+f9MIQgT58\\\\/H4ahjjvvCT0mrvfqKoGPVuCT037G6UjqFU3OgHg1DA0AQ7b1\\\\nYC824\\\\/N+JwjzEA9aWab5vAnHJ6vVatbGdPn8bLFc3P\\\\/KW9\\\\/9s+\\\\/82te\\\\/ujo6\\\\/vkHH1wMw\\\\/GDB2OZ\\\\nFiE+fP+D937203c\\\\/evS99z\\\\/Szdlvfe3tt956840vfeHw6NASQr3pNgZhJiao1tp1OsPxH\\\\/zn\\\\/yhJ\\\\nePDgbtt1hOgAw3Z3uFwaEWBLYWZO7kbVwOwK3wC4qlYf\\\\/isZrHl1DWIEc\\\\/HKSl85dTIzIFQfTAAC\\\\nEuCAxFECX02QpZjm87mj7rZb3I\\\\/loyMLgHBILTz65KN+LAD+brAvHWDDgmOfQmRU2je1XM3zOJpp\\\\nGcadW44GND\\\\/bnedhxPceMnjup+R48\\\\/rJJ8+Gf\\\\/2v\\\\/uSf\\\\/963hn5HiCfLdrmYRZKDg9X1W9fmh80B\\\\n+Q3Qg9snOoybi7PTJ89v3LrjcyBCZlZhojrqglQZZdOHz05Pbt++2GyLaeBQddLjMFYnRENIlVpm\\\\nUneqKRg8Q71I1RzUreZ3rjfwIiEZgpk47p2rgZCQokgIwXNBQiQHgtg05ar+H4aBmUspy9n88ux0\\\\nNuuadrbbbDabjTkYonNsV6ogRylgBOGDabeW01MCzyVXD5gQOE9uludtdMhHx8uLnLPjChUQehEy\\\\nW6bUzubsqJo\\\\/\\\\/P537x92UTQdzw67WWrbXnOb0hfffHDrzVff\\\\/fm7q3n7W7\\\\/+tZvXr51dXHRd6laz\\\\nElBZPLByEAqITrX1j+COZVf+yb\\\\/4l3fv3+9uHBcr4AKGwhwxIICWjIGZSd2ylj16rywwgFfjO9oP\\\\ncSCCOyBhrfcQXRxREYBJc67QjJnHKQ\\\\/TqKq1jQK+v56n67pdP3CQqUyzxbK\\\\/0BTS1Bbqd753BytN\\\\nB03bFnJQjxLStbvjRd+qFUUHErJ6j+qia3MpUbxkwQn7oaQQVssUgfKUA4ZlAnBoQ0sI0zi6GQre\\\\nv32nnc1Kzoev3755\\\\/5X1dnvtzq0vfuNtjvHZZ48XoIuuXR4cxNQ5AkuoognCfdGtBiUP\\\\/\\\\/nv\\\\/pfc\\\\nJCV2oHm7IDQyRWQjL8zBgdxRAoICgKrWALo3pwc0NzN1BIC4Fxep7q0JsEjWggCBSQtP01RKGscx\\\\nMHcxjXEiInRcLVdt1+Wct9udiJRcSs79MNRwESVU4z8sIBiM3bzMSaQJkqKlMH7xPn3vxxHZDBQI\\\\nqx8lQhSORD3mmJqA4zjlbE0bQrdIZpMAEyAJWimzWbeb+tQ1bddyxDsP7t\\\\/4wquDSYfw5juvpTY9\\\\nfvxpk1o+pJPjaxQ4AjlRZRvpqn3r7j7BX\\\\/zz\\\\/\\\\/bbf\\\\/6tL\\\\/32v6OaCYCRLi9OsaBZ+fTTT49vXZ91\\\\nK6wgT7MwE2C9bsTMrdZEdW86v6TbmaheyWgOsvd0wism2Iyq4ykRM5lZ1twPQ2oad8h5qkPiRS2D\\\\niSI4sAEBREQIzJOmIMu2W807ZHxyfrld7zIQvPkqvvcwOBbHUsMPVHsX6BL34zCft3EE0zwMlslT\\\\njBQ4Es+7rt7fcuPe6\\\\/MYWfjg5o1bb70OKR6k5trN46Lj0ydPSjEJqWsXs+PD2M7bFDEEEp7GyREc\\\\ngzuoDj8\\\\/G\\\\/6LP\\\\/wBThBmaRzHzdQvZs306PIPH34PhYFRAMdtH1oTzf00UUIDqHj+qnmE1TIdwOtl\\\\nqHh14ymSAZDsL+MkNLUQqiIwB4lEuJwt0qxDpnk3W6\\\\/XL0fE3C3nicyclRG6pnvntbe2\\\\/W6z3tx6\\\\n5WZEmrXt2eWL55vLej0PEegsbO++efTBe148gwVBLL6\\\\/f6dYI7G3HFJoYuv9ICYIvDw4yOtLKSWC\\\\nRyQ8u5jdu33t7ddvvfrq2Mi1ayfAXobp\\\\/PnZ+mJNCLPlctZ1i9VBM59zmwDYHESCmiJoyfr8xdn\\\\/\\\\n4v\\\\/4f\\\\/2f\\\\/h\\\\/+45\\\\/+7v+DnbNbIyISVvdvv7NsP9uux2lcj2Pi9JO\\\\/\\\\/OG6DH0nEggICKEYIhK4jqYg\\\\ngKAADOACwO5IxIhg7k6Sc65XAhZVAJfAqgVjE0IMzB6iE1xs1g7ubgykqlkLMwugIRAJA0anoXjD\\\\nYRXbkvM4TJvtbrfpdcxsCm6UFk835eOHp195cCCAzEZe3bT2nmUdhhE1qx0eLG4eH03PLyn3y66R\\\\nyNePr7dNevDglcXdmzfv3C6NoMHF+emwWW\\\\/7jU1qVrpu1nVtkLRcHmThidvIAdzADRBzHsDgb\\\\/zP\\\\n\\\\/0\\\\/riX7\\\\/v\\\\/lv\\\\/v3\\\\/2X8C23eLeWCWGIAY3FvC3ZB90hd60R0efPy9by9vX+\\\\/mjUhQs6sBThCSybQy\\\\noAbZnAHqVaVAgIgozLzrh1xKlYGzsACWMpnXfmjYbbccUJC0aLVfLVYt64VBxjyBeQAS4XGyVG\\\\/z\\\\nRFitljudBixaGIodLO+9++xbP3jvvddvfC0ktmJAiFUiiA4ORt5AyFYut9vdOC5nzfHBYUhNjMQi\\\\nGemnLz7T86ez936+PFkt5nN2HjGnEBxgMV8NXjrEdtEqwIiehM0KIhbT4mAjPPr0ybOzC57NP\\\\/jp\\\\nX33v\\\\/V9951a7ffrzo0VkhO3Tx3GT33jt\\\\/ubyR20TFmn+cPfk7muvjGh8dYWH++dNYzdSLMxBGNwM\\\\nkRihWsYCgKi6hABTqd4kFeJW6QkTxtVcZ7MqHA9IhQAAciklF0MHEG4imEUJ6DzlXO\\\\/XKa5cWJiJ\\\\nxWEMsVlf0vby0tQ3F+ftyYqREhgWM3QHYMRk7mAcJE+q43iuerHeGTipAUBkTiFIkBhjM2+Z6ehw\\\\nOVvOifDoZLUGT918Nw0ypcYxUsv19hJwKs6eP\\\\/zwYyvYoq77vo\\\\/bH33rD7\\\\/5v\\\\/2Pfv6dPzpevQ6E\\\\nzd17KTSU4rXrN8Dx8uz8+3\\\\/+nTd\\\\/\\\\/RsPt+cFkAoiUF1QIgLT4ETISFCK836WgsyBmE2NtJRdP7i5\\\\nFiPsgFiJMpK5uZaeu+LoRd29gLsaOpCDMDcSIxADuFtxBSLhgER1FoQIAws4E7eL+d1+2OWhN4Tt\\\\ndlt2GwIuzoD7565mjqhgpi7MKTCDUSkxews4Q25YNJc8TlM\\\\/9heb7\\\\/zwZ3\\\\/2vR+uLy62F+f9xab0\\\\nQ8MoREepo2qfUCYxgGmCPH387s9I8+NPP57PYu63pUwvHr3\\\\/8ZNTXL0Zm+goBuHTZy+8ELAIyobt\\\\nv\\\\/O3\\\\/3tHRzdUy\\\\/4qFqRa1LiqlWqOY1TPuO+nkh28mLkZ5VIiB5Z6X5kxwrzpAEBimoI4ikCoaKtt\\\\n23rN3HK5PDo8zJrN6wXryCGgg4QggiQKUoxo9BXL3Vnzhtr8crupl74OU4Gi03CpboruCIYOhNV9\\\\nMQIkpoi8kDSPsmy5SU3byayTWRdmSZoAXYQ3795885VX2sAphJwnQMyWhfG83xZTJGGFUkbQ8sH7\\\\n741acp4+eu\\\\/Hn704u358MOx223H84P0f\\\\/87\\\\/\\\\/v8M7Y2zcdMPu+PDIyXYDZNHvn79JqXmbLtFCoRU\\\\naiSu4++Ith8TdANkIHBC5DoMv59fIQJADCTjmB1cRBCJIwEjc2MsCQmFY4zjOFa1UErp4vLSDOqs\\\\nMgIwkxdFBEU534VPnuunp6qFTg7nMdB614+TAzNF7k2HYZgz2jRpDOjKVS3u7uDFvSEmJi\\\\/KzCFE\\\\nQNvfh+QAbk2gJnUJLMCWrFssF2EWF6vlCHAYU7doSZbuaIBs\\\\/rP3f3Z+\\\\/ryRePbsxcXTZ42kJJKH\\\\njSA9\\\\/+zpo7PL5rXffvH4g64dzTMBPH76+OD4qJnRYt4dR\\\\/ng4lG50jTAXhZqtZFRq6aCTuBm4K6C\\\\nNLkFouo8hKqupbiDagkhhBDBECAloq5tp5xFZLzyk99ud25GzEE4MAGzcdwBr3v7ybcfXe4my+C5\\\\nPLh7M2FWhzG7Aaam6+aLQYsBqVucBiUkDtUYvvKYNQQDQIiBCMxLkICIqspESBwC56lvF7Plqo1N\\\\naGdNu1ykmFazhuYza+YujMZxKt\\\\/50fe35y8S8bbfPn3y5MV63TI8P31xvFyIyLbfPvzgw1\\\\/+5tf\\\\/\\\\n+Z+9tzqJ12ezmzGebbvdi+d9HmfLo3bVgmG9tcmv7mYBoD2Jj5itmBsROxgylX0cJSGWqZ\\\\/g6iqw\\\\n6uCPiI6WYjCArOXg4IAId7tdCKHf7VRzLhOoGUHm5XpNP\\\\/xgmsypeIYeDIima0eryDoxbMdxPRV3\\\\ni+2y7ebbzfNNzk3GHFimgWdhcmZQQMJ6SUvVZVRpS61DmIkwSECC2IUkoTuYxyYcHZ3MV0dpsTq+\\\\nfsvEw+rIYhBDs\\\\/ydv\\\\/qTp2fPoeTMYXN5vr44P724SDEcSOxL7tDJ\\\\/OEnD7\\\\/+ja\\\\/93b\\\\/za\\\\/\\\\/wn\\\\/zT\\\\nZyGNr9698Vv\\\\/4YD9QerLeLp58QwZzTICFS2873kYALmBCzuT5cmchNDAjRCLgapMmmPbbDZ1sSY\\\\/\\\\ncFWPISgqziQX5Vx2u10VQ+ScgShGHjOuy+LpeV6vx6KFnJlAWEwhBTo+ODhoZ8zhouxyQSvuFmSx\\\\nWhxfW58+HbMW9SBoRad+E7tFQYFSErMTTIwi4tWrQQTMZl0HABCoa6JEXs5nzXKZui4uV\\\\/MbN9uT\\\\nazhfLLpu25JItNPLv\\\\/yDf7k7e4ZErrrtt+uL87P16aYfgVxLzlPumnYa+9NnL9abDYn+3b\\\\/97\\\\/7e\\\\n7\\\\/\\\\/xX\\\\/340f1bh+Fw8dGZHbQPbp+YP3tGHLIqMNTirhSt15IVMHclZkAqbgwkgLVUkmGYDo9SzLjb\\\\njubZDVHQ0TWbtEviejUDmo9dJ5qze\\\\/vwsT\\\\/bxIvLrY2mkANHCspMSDqLfOPaQbHsAbd5MBNTBUcG\\\\nYklH9167+ODnuaCagxpFQaTSb5vlgpo2uhHYvoch1MbQiBDzarVCgrRoHDCllNqwOr6e2vns4PDg\\\\n5s324MBiKFGiTeXDj3\\\\/\\\\/v\\\\/6vxYq5OZpN2aap320vLvo8ETj3u+HwcCEphhjzbtherI9udLPS\\\\/Af\\\\/\\\\nzm\\\\/\\\\/0fe+98HHD3eXy7fuv7Lu199\\\\/smmOfmO+tH77WX\\\\/5kdkErsziYAZXlSi4qRKz5iIhGAACSUpx\\\\n6KeU4jSamxdzVGVmjGxxhU6mZRrHppsNU\\\\/j4+bje2JDHYYfoEEWXWKJMClSc226xmifLNCAqU87O\\\\niuhKgi6gqBLb9tqt3eazIYfIHrUwuQPm9Uaabn79BMwIMRIKYxAKQrP5vG1nQdgIYkwsslq1sWkO\\\\nTm7MD1YU0zBsqXfrhx\\\\/+6DsPf\\\\/IzJixQEMBArZS+ny42l+t1vxkncFh27Wcvzm9\\\\/fSEpTnn87Omz\\\\ne6++famUgvz1d75orh89\\\\/iy\\\\/\\\\/\\\\/PX79y4c3Ty+PmLR6ca6O7R9fs+fnp++lGhtaKjEwCCWgQmZAJS\\\\nwXpHjZlLjZy73VAvDAGElFKMYUTYRAI1lzDY6vHT8XRXhh3jNsu0+SV+cduf3E7clCmAbQcugJux\\\\nfb5pH4cbXbOiWQQncGUiR5TALIEMeL64OP3kuKRWTTyoURBypDwNjx592qT06iuvLLpZQ9VpCGaz\\\\n1IQAvL9HMjQRIAaJY97ipeeLF7nkzz57\\\\/NkHH3qewHUYhsjCzAVwmspmt75Yj5sBenVz6Ifh5s37\\\\nGGepmxnos+enptqkxXZzMeT85ddeSw4fPP7sJx88un376LW7d1+cP\\\\/\\\\/sxfrDobTxaHZy86TVs+c\\\\/\\\\n7cenDoVRDAiYqj+YGxAYkoiIgGIjQYtvd33OE64W4zTZ8oRlWSxdXMBn49QOl2\\\\/sLm\\\\/h80M8TaGP\\\\nGGIbqty\\\\/TM5QEHQ+bfni8qZ\\\\/ePTaq9v+3nveTEjnJZdsW5AUW0C5+eALH3700\\\\/OirQqqA2obApIj\\\\nkRrkcfre93+AANdPTo6ODmZd4yGou0gpWdUtqW62w4vT810Zx2kC0Eaiq+Zx3AsuDUAwm+apbDb9\\\\nbrDNZtrs+lwsa0Gm7XgRUhJuEXi721xu4WhuJbW7x09iDG+\\\\/\\\\/ga2zcNPH3369Bk63D4+mrXzp5cX\\\\np+t++2J3RuFg\\\\/s6tk3e265+enX6GbGzVGJABkAHNTMyMgJHY3caiuejOEx3cywevlDOy3cW18vAb\\\\n+cUSJsJSvDh6IEGzcdMjUnECg1xyvQQ4hvb4xq3VwdGNcvk6XbKkMENO3RNc\\\\/OOf6rvn0zotuhuv\\\\njZfvD4k5l4Yb9RIwIEAgQPDErAafPHv68PHTrmkxWpsCY2DCKMwsUSQ1oWva+bwLDeexN9WXtTYJ\\\\nT5pzLuNm2u7G84vtbhxGUy2FiZbz5tEAJuJRspWcp\\\\/X5bjVfxEAHR\\\\/OL852W\\\\/Mbt+zxNZ+vdoxfn\\\\n89kyod89vr6Kl2eb87N+fPhieLYpR+mN2698ifT5i2c\\\\/0TI6sDkQogH8\\\\/wHM085tOZtXXgAAAABJ\\\\nRU5ErkJggg==\\\\n\\\",\\\"original_image\\\":\\\"\\\\/9j\\\\/4AAQSkZJRgABAQAAAQABAAD\\\\/2wBDAAgGBgcGBQgHBwcJCQgKDBQNDAsLDBkSEw8UHRofHh0aHBwgJC4nICIsIxwcKDcpLDAxNDQ0Hyc5PTgyPC4zNDL\\\\/2wBDAQkJCQwLDBgNDRgyIRwhMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjL\\\\/wAARCAHgAWgDASIAAhEBAxEB\\\\/8QAHwAAAQUBAQEBAQEAAAAAAAAAAAECAwQFBgcICQoL\\\\/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJxFDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNkZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6\\\\/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQFBgcICQoL\\\\/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMzUvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna4uPk5ebn6Onq8vP09fb3+Pn6\\\\/9oADAMBAAIRAxEAPwDqAMmn7KFHepAK5yERbPWjbUu2grkigoYVoUcVJjijGKBkZXFcX4tjMuoWqDupH6127DvmsvUtGs9TI88NvUYDKcEVpSnyS5jOrDnjynKw6RAiAyuQP9pgop3kWJLLC6O+MgJk8j3rWPhdYU\\\\/0V4y47zqXqlPpGtcHzkKqc7YgADTc51NHIShCnqkMt47OKbJwQ43DPY+lPuJrRX\\\\/hIOAB71T\\\\/ALPuo333CSFh0yOKjmjaS\\\\/sItuN0w7VosNaDk2ZvEXnypHR2+kwfZSjRg7+WLckmrdtZLbZ2cLjGMcVd24AApCMDmsUbO55J8QLiRtQ8v7qgYGOhrgX456+9dx49mhl1JtkRBBxv9fwxXCuTk1pEZG3NMpWPPFNqwHcUAZp8MLSngE+9acGm5ALDNTKSRUYOWxmLCzHirC2TFea247MLwEFT\\\\/ZhkcVk6puqHc5xrRl7Uz7O3pXStZg9BxTTZAE5WkqofVzmzA3oaaIzmujawDAkjBpv9mAgMRj+tV7VC9g+hhCFiBxTxbuTjFb6aYRkHpUiWIBI25Ipe1QKhI5w27Y+lNELdMV072AI6VELBcfd\\\\/Gj2qB0Gc8sTA4K8VCYWVua6b7ACcbfao309cYI5pqqiXRZz4yEYEdeaRWUIOGDeua2303ggDNULiwkQZTt1FUppkODRSmbc2Sfxx1pN24N05OaQsykrnj3FNII55xWhA8BqliGTk1Gp4yDTwM9D+VJgXEmwMKAKmj+YAsxOT0Jqiq+n51ZQ4Hy4ZqkZ13hWOB75N8W454HPP0xXqUAjCKEQrx3FeR+FraY6pCfM2k89s5r2GAfux3PfNZy3M3uOAyc08LSgYpcVIhoxRT8CincCwop2KFpwFIsSinGkoGLSY706gCgdxjLkUzGBx1qbHFIRQBD+FAHPvUu2k24OKYEZQHrUTWsZcP5a7hyDjpVkjmjBzQgI8YpjAEVOV5phQE0xNHjfxCvIJNT+zRoC8WQZAT+WK8+lb5sV3vxEtYbbXJJBGd8gDEq+AD9MVwEmCxIzj3Oa0jsBGetT2ts9zJtUHHekt7d7qdYYxyf0rsbDSktYQNpz3PqaVSfKjSnByZTtdOWJQCvNX0t1QDpV4QgY4FP2DpiuVybO6MEkUxAB0FP8AIJFWdo446dKcBzUXNEisIecHpThAO9THjnH5UpBPQUFWIBbr0xTliXptxUpBBxS9OoouFhI4MDHvThbIenWpEGB15p7NgZHNK4mVZIQMioPKJONhx61eYg87fyqMHBPBpk2K5gGOCOaBb8DJ4HtVxFDdQOKlEYVgVH1ouFjNa1U8jr6VEbFWGCv5itzyA3bkc4pwtxnpj2p8wnFM4fVtFODNEnzAfdHeuaJIODXrE9mrD5RknrXG+IdCaNjdQJ8vVwO3vXRSqdGctajbVHNj5G56HvStlMEGk+8mT26UrttK9xgV0HKTIc4I4NXrdYi48wkCs5GwMADr6VYhJLZYAg9j0qWB3HhiCBrtGAkEg6LnAPpXqlsu2BeOce\\\\/9a4HwWgEIdcW5J5CpnI+pJr0JTlQc596xluQ9x4pc44pBS4pCEopcCigdi0OtLSDrTwKBhRilooKAijFLjnrQfegYh6UUHgUUIAxSYp2M9KCMUwG4oxS0uMUwGYprLgGpKaRQK54p8RjGdVZlm3DGCoOcfjn+VefNycda9F+J0cCa6Th3coMqvCr9feuK0yxN7fxQ4+Vm+bHp3q4uyuNK50PhzS\\\\/ItBcSKPMl5Gey9q2nXA4AqxhUQKowAMADtUDt2APuTXJKXM7nfTikrDO1AGeKCAV54py8fSpNkhyoTwadtAGCMnrTE3lshgFHbFOwxJOe1IqwhQn6CngAccU3bnqTzSBWGOf0oE2OCKCM0MuTwKGzjtQCRgkE4oGKOSVxzTwo3c8ECmM3fOKczAjG6gkD0x3+lOChjyBUTEkgj86kTOeR+VAEqqNwBGalWIAnNQ7ipUryO\\\\/tUwk4GevWkMeMKetP4qLG4dSCPSpF5IpgTKinkjjFR3Fok0JRl\\\\/PnNTR\\\\/dx2HFT+XuXgHNNbkM8p8SaM2lXYdQPInyVH90jqKxtu+P37V7F4j0NdV0KaJVBmXLxn\\\\/aH+cV46A6OUYEHOOexFd0HdHn1Y2loMBO7AOK0LK4lEq4YAg+lUSAWI71f06IS3UaE\\\\/eYDiqZmexeFEuJLJGmtwiEAqWTBHv1PBrqwMDArO0AAaPbDeXwgGc5rT4rnIAUooFGaADNFHAIooGXAKdRilNMBRRigelHX\\\\/CgBOCaCDTqMZNBYgHGCaB69qWjHHFMAAIFGB6UDvS0AJj0pBnNKB60E4oExnvR26U\\\\/A6Cmkcc\\\\/pQSeFfEYXH\\\\/CROsilFIyoLA59+Ki8MWQjhe6Ycn5F\\\\/rR45i2+KrgHk5AJXpnHT61r2kQtdOgh6ELk\\\\/U0qkrRsdNFXkSM4HWq2SXPPy0kpYsuDj1pR0BFcx3IcOf\\\\/AK9HXB60maeB0zQUh8YCgnNShQwyAKjAyvT8KkQnGMY9qljArtTjkjtTIySOnWpBnpyPal4IJFFwsRhCKcFHTilxnqeaXHt0ouAm0Y57UjD1Iz04p56Uhx0oEMUEjBBBFPCgYNJgZAqRBzihgKBkeopNu7GDg1IvHQ9acUDED+RoQBGu3qTUoA4zUS5X5RyetTAD\\\\/wDXQxkseepP5Vet1LyAjPHWqESkNkAkE5rYtEOFOM1UdyJF2OEBTwMd\\\\/evG\\\\/HOkDTtdMiLiOf5xxjB7\\\\/wCfevbETKD3\\\\/SuL+IWm\\\\/aNIEuBvhbIPsa6YOzOWrG6PHhuDnPY1s6AQurW7AnO8cYzms5otqh88jg1r+HrUS6nEVcqwYNkdq1exynvVoCtugKBeOgJ\\\\/rU+ear2e82sZZy2VHUYNWMYNYmYdaBzRnFL3oGHAxRTgtFIC534pRyKQDJp+OKoAopQKTFFxhSgE0oFKF4oAaBnikp5HFMA5xQO4fnShSOvSnr3o70xoZjmgjFPxxTSPloAYR3pG+6fSpMYqObb5Lg9MHNFybanz3rm2bxZKgGF87GM5HXmuinb5tuOAK5+9Jn8ZTNu3ATFgfatyQncayq7o66CGeufyoHJ6UetAHpWR1jlBJxU6c9RUK7gcjrU6jPFJlokVcDJ6+9KaAPU59KUc\\\\/nUjEpwQY4pM4pQBg8+9ADSvtRjPNKaP880CsJgjvQFBP0px7Y5pBw2R1oEGO4zT0XkGjG08jipUAJx\\\\/kUh2AKBjGaXAJzjHvT8dvbilCZ5HrTAaOCM\\\\/nVhYwCTkHikEJ4wfY1MqgADBPNMB0cZOMDmti0jOMAYwPzrPt1yAffmtu0jJwB+PvTW5EidEZSgx9faszxJai40ueNlzlSK6OGBQQWwDjqOaratbtLZSheu3861VzNnzhPGYpJIyvfBFanhMI2tW6NuUZ+8g+b+Rp2t2\\\\/k6lcqcZBOa1fA2mPc3olSZMhgfLeMHcPUHtj2rovdHDJWPX4VKxKGIJA6jvUgFIi7UAJBx1PrTwOlZmQmMfjSCnHNIDzQA8Gim9DRQNWLqg08daaAB0p496YB1NLij+tLjAoAMUY55paKLhawEZGKTFLQOlBQCikHpS0DCkIpaKYmrjDj0qKZTJC6g7SVIB9KlOAfSmyjfGy+o9aAsfPkMP\\\\/FUXKkuxDMQWGD161uTE78DsKz\\\\/LWLxrfICWClvmI61pSL82e9ZVNzqo7EVKhAbIqK5kWFDlgKzFvsOTnA9OpqFFs3c0jfDLnBPNCsM1h\\\\/2opwVBJ9hUseo7zz\\\\/PFHIx+0RteZg8UpbI5+tUUu0dQd3apN2eSfwqbF8xZV+gFSc1WjHyZqZXyOBSaKuOOcccGkUkjLDb24NB65FKKQXFJ6E0dM0Y7elBBBFACl+O3FLG4wDn6ioJW2kccZxSM3ln69qdhXLyOW749qlBrNN4ik7nAPuaYNTjAIDjP1o5WS5pGxHNtOCe9SNOhXltpzXMy6l5eMtjPelXUcnjr16dapQZHtLna2UivJkH5TXRWSgt3z7V5zY6kkbZJIGO3IH1rudDvFljUk8nvnOR6iq5Bcx08HynAXkeo4NSPCHB+U4IxgUluwkQZ7\\\\/nVmfJiHaqRLZ89+NoGtfElyrD7pGeOxFbvw3sCPNud6kZxjb1H1\\\\/pVDx+5l8T3O5f7oPvwK6\\\\/wTbi20NMRFS3X0Pvg9K1exx1NzqAPehjgU3JpMkmpMheTQFzSZHSnoMjNAAFxRSk457UUAXFGKkA4pg4p2QaBi9e9OxTRyaU4zQUKKKBRQAUfWkJwKXtTQACO1FJjkHNLjmgYpptBpCcdKAExgikcfKRntTue9I3IP0pgeFXMa2\\\\/jy9iTO1ix57+9S6jcPEpEfLN+lXfFUK2vj6NgpUuCDgYH3eBWZrETlQQCPQnis5Wckb037piyXDO2Cck9\\\\/Wq5RQxLliB2BwKm8spyoGO+MGo2idz8wLHHG44q9AdyvLdJGuFTafTdUYv5DgBsVObORgfl4HbNH2Bxz5YIqvdM2pCQX0iEAtwa2LO+Mg5PPrWSLJ+yEVJFG8LArk49sVMlFmkXJHUQTFk469KtoTu9j3rDtbkjk554NbED7uQeOlYSVjqjK5YPGKUdKY7gD+lSou7NQzRD4U3kY5qd4GyBjrVuxtPMZcLkVsrp5bjbww\\\\/SlcHZHIyW7eYMj5epz2qO7Qw229xyw4A64rtv7GXZ8wGSeBjse1ZGrafDCpDYUcYGeuKtGUmcS6NcblVokI6c7QKz7i3lB2ifziecI3Fad0sfmMFCv2G7nH0poW3fBaCJMDACrWqkkYOLZiDzUwr7gP9lv6VesmkEgOVkQnBAOCfwrQjs7XOdqhuucY\\\\/OtC00uCYYyhzwBt3fzoc4sFTkmTWlnbzLtWZl98YIP07H6VeisNU0v8AfQMHgZ\\\\/k2jjd\\\\/wDqqzaaTJERsW4BXgHgqfbB7V0+nWTxlFCSYBDBG74+pqIvU0aL3h7VVvrdTIrRzr8rq3YiukkVmt9xOPX3rAhsxC3mBApY8jH+fatu6uUttFluHbCpGWJPsKtbks8E1wvqXjG7C7fnuNgDHA44A\\\\/GvUbGMpYwpsCFVAI9DXm3hy2\\\\/tHxMZXOQHMjLnBPf+YFeo8D6Vozim7sMUYo4pT9KkkMYp4BApB94elSDpQA3bmin0UAWBThzxTQ3PSgnAzQMceDSjnGaaDnk08NntRYocCM0U0sKXIxQAppobjOKaWzxQp5xTAceDyaU0046UYoGOpDSfWjNAC0YBpM\\\\/lScZ5NAzzP4jWIh1vSr\\\\/GMyhDjkH61iaih3YDHjtXfeOtN+3aMJFyWt3WQc+9cVeYaQnpis6j1N6PUwJIBu\\\\/1YyO9OWLcoU5PsRV1wM8kVXe9t4jjcXYdQvNRdm6SW41bX1WnG3wCMcVEdXC8iJAP9tsVC2vJ0\\\\/cH6MaOWQ+aCLDRbe1ROi\\\\/3eab\\\\/AGnG4yy4HqpyKkMiOoKkEHoRTs1uP3XsQdDxV22n2ngmqTHDVNCelNiSsae8vyDWnaKGPIyKx4QSARW9pql2AOeKyk7GkTptIt9+GKcAV0HkKuT8o9Rms+wxDADxk1XvtXWMM+eB15qUJlzUNShtbdncjocA15nrOsS3055IUdBUmrau97O+XO3sKwJJOfX6d6tImw\\\\/lz1PNXbeykkI+Qn8KyvtUcYzJOsX+yDz+dWbbVbBWAN+Qf+uhFU4ytoClFHR2mmzEgrG2fpXTaXpjAglcED+Ksvw9eGcqLPWBnH3XcMP\\\\/AB7Nd5aT6hAAL2ygnXH34xsY\\\\/wBD+lZa31KbTWgtrpoKKWT5fQLWxa6bDFgqOPTGKs2MtvPHuiDRsOqOMEVcChTgVaIZSfS0KEJgH+Vcz48uTYeCriNG+aTEQ49Tz\\\\/I13EeHViOeK8t+LNyy6XYW4I+adjj1wP8A69bwdzCTsjA8C2KiJrxkwW+VWz+f5\\\\/0rtcCsjw3bfZNDgRvvEZI9DnpWvmqZxvcXApwFIpPOKFzn2pCHdDinikGKX14oAB1ooyKKdhi2c7T2sUsi7WYZK+lTM3ynis\\\\/T5lNnENw4GOtXQwI65oGkQDUEF5HalH3upIOOOKub+KzCcalGP9lq0O1AwaZEzuYAD1NKsgZdynIPQiqd9Gj27hwCpUg1JZKsdnCq9AgoAtDP40uCKRT3p+4etMY09aM0fhSZ60APycD+dA+vFMzQKQC+1FHNFBVjl\\\\/FGspHjS4wGklwZCT91ev8ASuJu8ncTWx4stjH4vWdSfntwT7Y4rKmTeCDXNUep20oLlRz19NnPDfQVztzdzBtkQCD\\\\/AGa7C4slY5xms2bTkUEhAPwrSE0txVKcnsZL6NN\\\\/Zct48m8gZABzxWNJDhUK859K6uN3tlaMcxMMFDyKxJ9OkDloiuwngMcEV0QmupyypSRXggZSiq5EzuAFHp71pI0trcGFz1OM+tN062a1n859rOPujPSnXUc9w+75c54xSk02VCEo6lsvntzVqInIFRRxFlUuPnx82KswoS3SsJM6krs1rKPKgkV0GmqFf7vWsexHQYrctRhQR2Nc0nc6VGxqz3OyHArmNUu2MTnPFa9+5WIY54rmLtmbcpJINVAznEx3ZpGbHA6kmsxrk3E3lRNsjBwW7t\\\\/9ati6t\\\\/Mtmg5G8fMR6Vk\\\\/2dHEOhyPeuiNjCak9EZl\\\\/bG3vWVuQ4yp9aseHdBn1zVY7C0hlnnkztjQcnAJ\\\\/pVuS1jnQI5Jx0GelWtM02WzukuLV5VkU8MGxWqqJLU53Qk3od7ovge0sPDRlv7hIrl3L7HGNpHH1x\\\\/+usS38XazoerC3sb2aaxiO0iQbwR3IzUiW+oanIsl3LPKDyVYnmty101LeEqsKqT3bGaxc03qbwouK3O00XxRZ6nbrLJIqzccpwfyroY9ThJBWQP75ryu2sVhPyHbnrit+yaRSF3HkVk2acp6JZ3SSK23+Ida8u+J0UtzqOl20ce8Hece+4V3uks+wLgYxzVbUbG3l1qC5uUUpFGxA9eR\\\\/hWsZWjcy5LyszIgtLmOwjkli2\\\\/KMkdKWpra9NzJqMokyu3bt7cnFRbe4NFOXMrnPiaSpzshAcdetPX1pgHNPBFaHOPGMUE+lM3YOMU13bHyjJpoB+cUUwE8butFFgOKs7adoA1tK5gP3ctg4qeaO\\\\/gTMRmB9Q+ajttdW1KJe6cEiyQZIPmH5da37ZtOv4t8Miv3wrcj6ioTUthxkmYUV\\\\/frMjSOVlQfdPVs+nrVrU9U1S2t1lspvN7tG8eCBior21MepCSN2GwYAzTw84I\\\\/e\\\\/mKydeCdixsWu6jJaA3Qh+dfujhgfcV0OkXcs9qvmJsYcYrlZp2fdF5iZPHStbSbq5RI4MK5P8AGx61SqxEmmdOCTTsmqKXFyTjykJ9mp63r9DByOOGzWvMVYuZFNeQIpYngVX+145MMg\\\\/CqV7qNuY3jJdXx3FJysFi\\\\/FeRzRq6ltpHBIqRp40K5cDccDPc1zuk3CQ2Pl3F0ru3rxgU+5v1ge0it0WRFcYBbkfiaXMUkjofMHPzDNBYH+IVALqBzu24PsQayY9S83W5ohbPs2jLdhRcdjI8VoTrcT9jb4H\\\\/AH1WEy8YxXR+Jwplt5FGPlKnI+lc4M556Vz1Nztou8UQlN3FV54VSNnY4A5NaO3NRuoPH6VFzZowntS6Bo8bSMjNUZbSQ8YH4CukKKTg9KqTAZIUcetaxkyeVMwDaSD7xOKmgtzkYGa0fsxdsetWorTZ95apzF7MqC3+TGKdHDsxV1oQBxmowmSKzcjVQSLtmQgAxmtu2Q7BtxnPpWVbR5ANbdmuU5zWbNCO9G6PGOfpWJLajcTjrzXTzwCRFxkYrNntyBn+dJEtHP3NrvGQKy3t2VyGFdSycYIH0qtcWYdOOvatYztuZuBgCzUgHFXrOCSJgUYipfszI2Kt26kMM9M1XNcOVI0bO5uAu3cMd+KvoZHwWOR7VRgwDitKAcg461m2FieFBnNa1nDuwQOvWqcEORgV0OnW3tinHVkS0NnTIwqBduTj0rN15ZTfQ+Wp2rGytj3rfs7cRxg1zeua7FZ639jYj7ikexNbSso6mVNNy0Oe0MubC7mk4aSTYB9Dk1eyccU1vLgMyj5R57sB9cH+tR\\\\/aE9RilTVonPjJc9VlgUvSqf22IAEt1pTexqQM5zWtzlsW8+vak3DsKpHUEx\\\\/hQt6HI2xufwNNMT0LZJPTFFZk2rIrFQDkHsKKTml1FdGedNhjlyHOzOcFasT22mXODIm2Ts65Vh+IpZm96ovJx1pRgo7GSqJdDOu4r6C6b7NdfaYuyz9f++qmt72RgftMJiYHGCQc\\\\/SplPJzzzVG7kP2hMcAGsZ0Y7s3pPmdi15KPIXXHB6+lXrBiLhV9K5pDMZi5kITJwoPJq5HdyxuNrc+9Z+zd1qa+ztsduSxjZUfa5HGKwi9ysx3Mwl3ZyaqW+quPvFgfUNV6LUopG+aU59xW0lzbMmUWdFbu4iGVJcj5s96x7\\\\/JuW3Cpo9RIHy3KEe9RPi7cuJFLexqa0HONkPmSRRbHJVATVCNnacq6g5rWa2kzkEGozaOrFggye9c8aVSK1RLab3LFikWHG3cT0yelOvpLSwQEIfObHSobR3tc74SxJ4xSXrRXsQEiukgOQcV0RU1C3UtvTQztVu47m1iwX3hyCrHOKys+laV5bItgxVt0gYHpjiscH34qJX6nZh37pYVuc01yoGT1qMNyPmyKGc9qk6hjep\\\\/KmGJSelPPWlpliAKowBQTzQTx\\\\/jTGaiwDhznNCplgKYHyccVZgQ5zjj1pDL9rD8owB9K1oRsxkfhVC3jAXg8itO35YDuaQFvYHTOMVUuYe4xitBVPDY4pskWUJoJucxcJscnApgUMBn0qzfJhznjFVVOCvemUhWjVlzimpDjIxVlAQMHHNOEZ7flQIbEnOelaNqh4zzVWJMnkdOlalrHuK8dTSE0adnDv7V1mn2u1V4BI4\\\\/SsTT4uQeM5rqbKMInXgVrTRzVGXFQRxAHA4rxLV7htV8b3LREsPO8tD7Dj+lex6nM8WnzNGN0uw7AP73auE0Lwyukyi8vWD3BJKJ3ZqqrK6sisLaN5Mz\\\\/EjGGaGNHwSWJ\\\\/RR\\\\/6Ca537dulMe5iO5zWlrt4l1q8oDApF+7UjuR1P55rJji2ybz9wd\\\\/Wubn1ep5leTlNs19NQGV2YbxjjdV69uoLODhV81hleKqaQpdZGPTNS6pZvdW4dF5XtXRTb9ncyle2hFYanJcXDQOoyR8pHatkNxgHJA7Vh6VYkTNLJlTjjPetqQqkMjA4wp4q6bdrsUb21Oadg0rHtk0VHuG7HGaK893bA05x15rNc4UZ7Voz96zZD8uRXrHN1IhMBkVn3cnIY\\\\/3s1PkZNUr1j5eMHvzWcjqw+7K9rciWMOep7ip1ly4POaoaXjySKuIOfY9Kl7nYWgy5yxxnmpFfaTzVU5\\\\/KrAYMvA6ipGPDZJweOtAkKgMpI\\\\/Gq\\\\/mEEjFPgO7dk57UDL0N1MrDbIea3EeTyQWmBOOcrXNRSFLgDbwDXTSqn2Qup4Kjj0qoHNiNLDDNIp4kjP4VHLI+M5jJ9jVAt2NAbHGe9aWOXmJru4eG3kdokZQhz81c4HyAR0PNaOtz+XpdwT\\\\/cxWJZzF7aM47VE43jc7cJOzLgYb8VJ\\\\/CDiq4OWyDg1NmsGj1Ex2A\\\\/pmgpgdPxpE5OAeKe5JHA6UjUgchRjpVV5D0HNTTZAPpS2MHmOZG6A4FVsriC3iYsAfqfatWEBR6iotqp0pVcEDn8qncovxSgHpzWhC4xnHNY0UmXArX0+KSSXkZFTsPobkKl7X3AzVD7XhyjLha1oYhFG5cjGMYqk1lHO5YCtN0ZIwNSZS571RQZPvV7VLd4bgq1UkXkAd+9QWiyozxVhE4I71HECw6HIrQtoS3OBz60CY2O3zg4+ta1pDwABgnvTrazORxwO9bFlYksMjjvTREmWLC2wVABx3NdFEoRc+1VLe3ACkjGBgfSrZO1Oa1irHNPXYwPEkt6\\\\/k29kSHJJcr1x2rlbu7TTkeBbgz6i42u+7Pkg9ef738q2vFOrNpOky3ClhcXJ2R7eqj19q890mw+zQncSWZizEknJPWqVNPVnPXxThH2cNyytrEvb9akEEfTbx7mpMYBxSd6vkXY8tzl3FRQgwuQPYmngkDqfzNN6HmnE5IxTSsDnLuIRz\\\\/8AXpykBSNoIPBpG60nTFULnlfcPJhXkQx\\\\/lRTiaKOVCc5DZv4qy5idvWtSfoaypz8uKAKbvtBqldZMYOex4qefjiqV4+Is+iE1nI6sPuynpu7ygexFacR69uao6WAbUH2q3CSrtxn1qZbnWicnh+eaakuFXJ9sUisWJGMU1h0wKkpIHYYI6DrU9oNsJOc89aoTsd5HatFAFshjOMUFCx5e4ynNdE8jHTlBGBj865y1PzHBwa2pZ\\\\/8AQoo+eO9aQ3ObFfCmVSTmkDYIpjPUeferOIp+IZf+JcVz94gVh6ZODGseecdPpWlrxLRxIPXdXMwT\\\\/Z51fPCy81VrxaOig7NHTKQpJqwOahGCKmXpmuRnsRY4YGPSnnk\\\\/LUVPDfLUGyIZuQRViwAMIUdc1EwyKhS5Nk2SCU65HamtRvQ17lIIIw09zDFu6eY4XP51VjiZ2zGwdT0ZDkGuT1cQ6hcli5dm6k1Joq3OkSs9tM6qf4Oqn8K0UEkZe0lzWtoeg6dprSuNwIGa9A0rQMQ7+Bx3rg9J8VWaRobqNkk77RkGtTVfF6ahZtb2tzPAMY+T5Sfx61nbXUqbb0R0moWKKfKV8t6elSWGmlSu\\\\/wC6e4rwdNBvor57tLucEvnzPNYN+ea9m8J62dN0gHWb2FwB95iCzfgOpptJNaialytmd43tkt9XVUxgxqf51zSLhs8\\\\/hWnq+qPrWqTXewrGxxGp6hR0zVRYXOcjiok9TSN1FXLNrHuwOua3bO2yBgY96z7GIYHGTXQ2duQnGAe554oWpMmW4LYoy424x07mtW2jCggIeOrEVXsYGjj3S4LDmtBHJC44\\\\/pWiRhN6E6cDH51T1a8+w2Eso+9jC9+atoNueax9ccSFIfT5j\\\\/StErswm7RucTrbS3unme6lMkplXHGAoz0xVRUAUVqa1GRYMwbjeOPxrPCkxitdjyqusiE8j8aQdTSke9J3pmLA80tFFAhTnNLg7c9qbmlJoGhR6UUmaKYhs7fKayrg\\\\/Lx61ozn5ay7jOBSC+pnzHk81Sujnep\\\\/55n+VXJcljgVlTTmSScFSNsbD9KzkdeG3ZLpWRb+1XFOJCB1NU9LybcY6EVcK\\\\/vVNTLc7EOQMZSPWjo43c+1GcODmnTBQFIGKRSKU53SP6VrLg2yqpHSsNWY3ATBJNbSLiIUMI7jIGIc7Rkjg10O2OWzhBXkLXOWjEzS+gNdLFxCg74rSmtTnxT0SMmZQrEDpmoqt3UL+Y2F71WaKRRllwPetLHEYt6wnlYMcAcCuWuI2jklDc4bIrubi1jmBDrzjqK5zVdMkt18zeGjJA9xWvNFqxpTlrY0rSTzLWNu4ABq2h5qjZE+TsIx3FW1bB6YxXFUjZnr0Z80SYnFGelMLZ60gcA81k0dcWS1XnQEUryEEEHIqGRyxwD2oSKuU5LRC+4AZq1EgAAA4poVsktzU8S98e9U2CiNcKpHFW7YhiKoXMwVuSBzV2z5IqXew0jTlIkh8pRhBz9aZbWsed2D65NPhUg9DirsKLtAwcipuGxPEuMY5A9qupb7lB9aihiLY9PWtSBdxCnGBxxRYTY6wgO7AGAK6C1g3qDjC57iq9ra5ZeOvWtuOPAC9BTSMm7j4lwAKnVcEU1F7d8danVQK1SMZMOFXPauSvL5JLiVxk5OAB6Vv6zdC2098H53+VfxrhfEDJBoUsqvtZcY+ua0gupzVXfQn1MiTR3Yj+IH9aywR5Yqh\\\\/bcJ0020oaK4BClDkg81ZSQOi4PFWcFZWkNbrQDmh\\\\/vYoHQCmYMWiiigkXFFITS0DEzziil9aKBEE5z1rPnA2\\\\/Sr0+N3WqFwTihiT1M5sbmzWO2Wa7YDIERrXP8WfeshgPs936bKiW524bqTaYSIE9Mc1oDAcbgMVm6Y\\\\/7lR+FaB+\\\\/1\\\\/ColudiGTZUgjtRNzFnPaiU4x70TDEWPakMo2xL3OSOlbacxknJ4rFshmZq3GULEMngjtQwiVtOH7+QYOS1dVjla5zSlD3xA\\\\/vCuqjC87u9a00cmKeqRC6NnletUr8DYMfiK2MtlTt6jHNZWow7XCjqe9anKY8mQTVS\\\\/i82zZSfetGeBoz81Vp03xFfXil1AzoY2CqRzxUh61Uf7eMxxR7FHQ96lgSeKL9\\\\/yc\\\\/eNViIRavE7MLV5Zcr6kxPfvUcnLZ\\\\/KnK2SQaa4xzXEerF3ItwXgsaaZY4xudsCqN48pB25rNR7jzcTjcAe1aKFxOo4s2mv1PCjj1qRL2RACeV+lZq3tvAQWtpG9h3q7\\\\/bNi0IQ6fNnOdw7UnA1jUuaVvFHeAu0OcdyOM1oRwbIvNKtx+FQ2vifRrHS5hHDcPcMSEjZfu8Y3en\\\\/AOqri+NNFW0WOLTbuSQjDMQBt47c9zUuDL5jQs4GlVcrtB9a6O30VpEUohI9VrDtfG+nMoaTTbjd06L0\\\\/OtA+KrmaFjaWAtkYZQuxOB36d\\\\/x71Ps0KTl0RuR6OyxsNhHvjpTRamN+TyDzivPZfHPiaW88qMo0CnkAH+ddl4e1qW9kQXKYPuO9JxsZ+9a511nGMZ747iroHIA\\\\/GmxRhVG0dqsonrTSM5S0FUU7OD\\\\/ACoxisjxDqjadpr\\\\/AGdd91ICsajscdfwqzJvqc\\\\/rOrrfa+1nG42W3BGerdz\\\\/AEqnrkKTaURkYPArF8PWIe6luJTulc4Y5zW9q237LFGON0qitFsc0m+a5yGoaLcWyxSSushk5yo6GtCJNqAe1dFqMKSaZJkAlVyPasRB8nTtVHJW3IH4alBPND9aMnHNM5mGeaXFL0pBTELR2FGaBQMO1FB6UUhFSY\\\\/PVG4PXmrUrHd92qFwxGcLRcSRQlO1G\\\\/GsdyEsbt\\\\/UAfrWrMfkb6Vl3Ue3SLgnqzD+dQ90d2H0TH6eu2IZ6HkVpR7TJyaz9MlH2UBhkdKt42nenI\\\\/lUS3OyOxNMAF3DnBpkpzH+FPJHl5zmq8jErwfakJkNoP9JbHatxMGHkc1iacu64c5rcXgEdj60mOI\\\\/SYyt6eOM5rrYlQRZkVQe1c9pyHzXYAHAxWvmRh0BP1relscWJd5kpbOGH8PTms27kLykdRu4q4wk29B+dU5UYuDx1rQ5yveozD5VJOewqi0THACk10Fu0ochFTP+1TrCORjMQkZPfNBSjcwo9Lmf767RjPNMlhiSFoiN2eCa6PUBcbmysYwg6GudkVs+tANcr0MOWNoX2n8D6imlsgUnijUP7MW2XaGO75vxpI2VgGHQisqlPlPUw1VzjdjWjV+oGapz2wzuA5FaOB0pjKDWKdjttdFKNI2Xa64P0qxFAmOACKlRImIEoIP94f4VpW1o5jKxXURRjnG7HP41TZpTM02MZfaUGSBVu00pzIQ0O0FT14xxWpFo0srBjJCOO8grpdI0qxg2efdxHHO0Pnn8Ki5s2kZ+leHI7idWaIeWehbqMV0S6A94dirshUk5PQVuW8unRKMHcOwA4pbnVFkj2wphemKLnPKbbOYu9GtbOJo7dFyeCe5q7oeniB1LKMk1dS289vnOSK3bW0SNVwBn1qbEuWmpbjACjIqcGm4AXHao3lWJCWYAAZJParOci1HULfTLGa7upRHDEu5mNcAurPrMz6gcrGVxGnov+Ncxqvj+28X63PpRzHpZykEhHzFwf8AWH8e3pWxp0ElnpKW8oxIvyt+FbezlFJvqc86sZLlRoaWqQMx4Xc2asapNF51pAWG8vvGPaqf2QTWW1pDGMZ3A1lQQGG9hkeczODjbnnFIhrS51V3k6dN\\\\/uGudU4jGD2q9qWqC1s5QULRNGQSOqnFZNrL5tqh5+7VXOSstR7dqbmnNTO9M52SKetOpgNOHTrTELQKQml7mgYHpRSHoKKTEUZfvH0qhdNgmtBwM4NZ10uSTQSjOk5BGKrX8f8AxK5gBzt3fkasspzTlVXXY+SpGDWU9zvw70MqywIuO5q0HKOCPpTEhEEjoDkKcA+1ObgZpPU607FkEOp28HuKqOMjk\\\\/hU44jBHU1AxZwxAG4HkVKBkulL\\\\/pbg46Vu7MgEc561haSR9rbp8w6V0Y5XpjFDBFrTUIRvdq1Ik+XLHANU9PHlxIT3Oa1H2LENuck5+ldMPhPPqu82xiQmRiM4A71SuAqzBV6A9aulmBJQleOvrWfPcRxybpXWrSb0Rm3Yntsl2+tXNOT91M3vWEdZSPIhTdnuarPqdyyFEYop6gcZrZYeb30BVUjodTmiV5AZF+6B1rGjiQ\\\\/vCTgc9OtV7W3eZ\\\\/MlztHIB71auZdkJUVaoxXmTKd9WebeNZjNdq3YNmrmnzboEBPaqfiWLesr46d6TTJQ0C\\\\/SufFKzPSwTurG5nvRUcT54P4VJXEz0ouwbcjNL5bDgVJGAB9amVcdBSuapJkCRP1yc1ZhlnQ5DH86cq56D2qaGBix4qWyrIsWmqakdQjt0Vmjfq3oa6awvZWl2t07YrFs7N2cMyn6Cup07T2yhKEnGMVLdyWkjYsG3FSzEepxW9C2GznNZ9lZYOWXjPpWkxS3h8xmVUAzk1aOdtbD5JAiEk4HUmuX8Qats065lB2xpG233OKbqGs\\\\/anKRNthB\\\\/wC+q4vxfqv\\\\/ABLZYVbjaRTUtQ5dDxeymaC9wG5Vsqc17PZ3Vxqfh2yvYULlXWGcg\\\\/dHZv6flXicYwVCAgxsWbjjqB1r2\\\\/4W3CeXNYSnMcq4wa9SMeeLizxqr5GpHQCKJ7cJK3yj3qK8tII5LR4UCkZwBwTUzSR2t7JbTxlZUbHPcdiKg1S4C3dkQMoC2SAeDjue1c0qMobo0hXjPRMrXcNzeTSKjRJbeWdwI+Yms+2UJbIFGBtro28me3cA7X2n2Nc\\\\/CMQgZ4FRYyrPUSTgUw9qfJjI5plM5xw6U8Y9KYDwPWn+1MQtBOO1NAyRSg5FMYuaKO9FIllV0IPSqc6Z5ArT2\\\\/jVeWLjpTEYUse0k+lV5DLsBjxk8GtS4gypGPxqjIhAwevY1hUT6HZhpRV09ypFASm1eW7g0OoAHGCO1WowDJnODmprqGPaGz857Vjz2dmdpWiX92KqyIUkcjirqLhQMdKrSAtMwUEk9hVoBmmsBfEgBcjpXSrGdoBPJNYtho14btZXURpjq\\\\/B\\\\/KunjhWPacM7DoTwKqyvq7AuZr3VctRrs2jptFOkv44VKn5ye9V382Q\\\\/M2B6Co2iRBkjJ961dejHzMI4GtN66Fe41CebhAxHQYFVBazzZLLgd8mr29QelPExxgYpPMJLSEUjqhlUN5tsofYGQdVqaGGGPDOwZh2qZmy3XiovKR5FaQfIDkj1pRx9X7WppLK6LXu3RaRv3bMOOcVTueY2PtW\\\\/HbWsiKI0RVPSibRIJkOS6+6nNdUMbDqcU8rqr4Xc83vYBKkqMAQR3rnNNfYTH\\\\/cYivTb\\\\/AMKXUau8DLcL12jhvy715vf250\\\\/WnQoUDjcVIxg96qtKNSPNF3DDQqUZ8s1Y14j3FXYGjYgSfKfWsu2fOMnir64I4rznoepuaaWjMAV5HYirMViSfm9ax47me2O6CVl9uo\\\\/KtCDxHdIQJYIXx3xjNJopSsbUGk5QcGr0OmruAC1mxeKCy4+xr+D1Yi8SnORaqP8AgVRYrnOqsdKVwAODXV2dnBABk4OBXntv4onOPLgUfVjVhtevnX\\\\/XbfZOKasjOScjvL7WNP0qLdJIN2OEXkmuI1XXptTkxjy4QfljH9axZpneQszFie5qNXCrljzScmEaajqWJboqp5rh\\\\/E175isu6t+\\\\/vQFbniuD1i5Ls2TTpxvLUdR2iYltEZ5hGwAjEm4P3zjp75xXqHgqVrTVYTnaM15tpUcz3UQ+URNLklv7wB6fga9G0v8Ac3kbA+hH5\\\\/8A169jDrqeFin0PV9a0qPVV5G2QDdHIOo\\\\/+tXJma4064+y3qnA+7IPT+td3at52mwt\\\\/FswawdStI7+NopflZT8p7qa6ltZnA11RnNKPKywDoRgSL1rOFqyx\\\\/IwkHt1\\\\/KhDc6VO0cg3R5wc8g1ea3WZPNtm2k87aynQhIpVJMyD1INJ74q7I\\\\/zbbmLP+0ODUbWofm3kD\\\\/7J4Nck8POOq1KVRMrYp3ekIZHKspBHUEUuec4rEYopMcgUdqM8iqQMP4qKQZJooF6DlJzzSMMj0oU07H5VIFSaIEHjisy4h4YVuOMiqklurZLnH86pRctEOWhzrRkt1PFXIbSeVV3\\\\/ACqOhatERIh\\\\/dpg\\\\/3j1qOQMnzM34CtPqkbc1RmkMTU+GOrFNrbnaXJJA5xwDUkTRKwS2iWP1YdT+NVclj6CrEbqp7VxVasF7tJWXc9fD4WXx1nd9jQij2DJOTT96jvVNrk7MZqEzjnniuQ9BI0DKoFQO5YkDpVdXZ8YHFaNtp884yEOPWlYoznGDkGlQkjOa05dAvG+4yZ9DVZ9E1KMgG2Zv93nNUkWpIhzkVJEy9Dz71VljmtuJoZEP+0pFN83vmnYdzUAdRmNuPSp4NRnR9jAisuO5ZeO1XraYP8rAUnctS7m9Dc+YyAKS5PauP+LulwQaVpuoGBReGUq0g67MdD684rr7DybZPNYhQOcntXK+MpovEivFI8iwom2MqAffPNdeGpylqebjKqirHnFpLlRWrE+4AU230i2jIXz5mx\\\\/sqP61fhsrdRy835CnODTFComiEDjFIEzwa0BaW3GHmI\\\\/CpFtLbpumPvxUcrNeZFaAAcEfjV2Pb2qSKzgLDmTB9cVPHaW5XIMoP1H+FS0w5kSROqgYqc3B28ccUxbe3AGfNP4j\\\\/CnGKALwZPzH+FS4sfMiEzDqTUMtwdpwaseRblW\\\\/1ue3zD\\\\/ComtrdxjMv4MP8KSgw5kjB1G4wh5rj71\\\\/MY4r0GfRrSY4dp8ezgf0qsvg3TLhjme4UHp+8X\\\\/4mumlBo56tRM4\\\\/Q4pvtcbN\\\\/qMM6g+ucZ\\\\/T9K72zUExt06ijT\\\\/AAtptq2zfdOV4AMq8DOePl966G20uwXGVuOD\\\\/wA9B1\\\\/75r0aL5UeRX96Wh3GiuVsod\\\\/cCjWoVjuVccBhz71V0+eOG2jiAkYKMDcwJ\\\\/lV68dbxEJXBUcHNbc6vc5uRmFewCaI5j3sV4UdWHp9axbK5hWRoVn291V\\\\/lZT9DXVXMe2ONR\\\\/Ccgj1rkvENo0ZTUI0G3O2VcZx71oncykmmarKlzHlgA2OR2NZstkyuTCSGHO2obG4EiqYZGQ9MZyPyNX\\\\/ADJc+VLCH28q0Z5\\\\/I\\\\/40WFdPcqx3eCIryIOvYnqPxqf+zY7ld9nMD\\\\/sPwR+NTJ9nu1KOQZB6jB\\\\/KqptpbeTdA5BHOPWs5Uoy1aBSaIJ7Se3P72Jl98cfnUOMEV0VrfmRNk6\\\\/N7jINNm021ujlR5Tnoyjj8RXPLDNbGikmc90NFWbyynsZfLmXGfusOjfSiud6aMorJyc5p2feoDKEbHVvSoJJSGVyT1wQK0pUXLV7GbnYuGXjjFQZB5JyarGfkiMbhnrniqrzsSV8wufbhR\\\\/jXROVOjG8iqVKpWlaKL086xehY9BVNnaVstye1QL8x65qYKQM15GIxMqrtsj6HC4ONBX3fcCQAPWl3+mKTyyx9qVYizAAVzHakIWJOQat21k07gAbu9X9O0ZrgrkYH0611+m+HjCoJRgR3AzQtdhtpGFZaE7MpK4H0ro7bTxDGAeKk1W8tvD+nG6vZNq5xGgXDOfQVy0Xiq51a2lnRREquVVQcnGO59a6aeGnPXoclXFQjo3qdJc3dlYYa4lRB0yxxz6VQu\\\\/FFq0ey0vbOP1Ltk1z8zG5jtmkw4N4uQeRgir4tIWJPlQr7eUv+FbKjGLPMqY6rKTULW+ZUmvoJifP1i3cHrliRVN00hh\\\\/wAhC2B9RmtcWcQPCx8\\\\/9Ml\\\\/wpBbRnjanH\\\\/TNf8ACtHqrNGca9aLun+f+Zj+VpYPGqwfiD\\\\/hUqvpyD5dUts+4b\\\\/CtUwJ\\\\/dTjt5a\\\\/4UogTBwE\\\\/wC\\\\/a\\\\/4VCpxvexo8XiWrX\\\\/MzXls5wA2r25A7YbH8qja0051wdVtB+Df4VsLbpzwoH\\\\/XNf8Kk8kDumMZ\\\\/1a\\\\/4VspySsjmlKpJ3dvx\\\\/wAzk30LTnl3DV7IZ7fOP6Un9hWnGdZsuBjgvz+ldBc30VtJIvk7vLUbm2IOT0GCKq\\\\/2\\\\/bRkw3MRjnT5WVY0Zd3OQDjnGP1+tQ9dzWNWvFaW\\\\/r5mcmj2i9dYsWwO5f8Awpw0i3P\\\\/ADFrH\\\\/vp\\\\/wD4mtl9VtIbZZZUIOXBCxI2CvUHAqEa7axlPtCBBK6iL5EO5Scbjxx05FTyItYnEeX3f8EqpptqoTOo2XA6iR+f0pU06Hr\\\\/AGnZ4z2dv8KvXusW1k1wjoC8AUkFE5DHjHH1\\\\/KnXGrWlrIYmBd8LjbEuDuBI5xjtS9mg+s4jy+7\\\\/AIJT\\\\/s+A9NStMf8AXQ\\\\/4UjWMG3jUbXP\\\\/AF0P+FaEOqRyRuGtis8bKkkYjQ\\\\/MTgAHH60xtVttwhEe24ZtgV4UwG46nGMfMOlHs0H1rEeX3f8ABKIsIAD\\\\/AKfanI\\\\/56n\\\\/Cmf2dGoAW8tAf+u3\\\\/ANatGTWbK3EXnDb5iBwfJXHXGOnXr+FI2tWUYcOirKOiGNCT0x0zjqKFTQfWcR5fd\\\\/wTKk08NwL6y\\\\/7\\\\/AP8A9ap4bSNFZWv7Mg\\\\/9Nv8A61aUGpWVzFMwEe+FVaRREh25GfTtULavam7ito4BI7kjPkoBgdxnr2q1psZSr15dF+I6C2sRF897aeZngib9OlWfLtAD\\\\/wATC1\\\\/7+1A2pWUMMM00SxLKWC77dO2euPpTW1fSgzK3lcM6n\\\\/RwfujJ7elaKo0YuVR9F+Jq211ZQsC2oWmP+uorXt7y0u3EVvdQSyYzsRwTWHHbQSxLKsUG1gCMwr0NTaXFHF4lsSkUaboZM7FAzVe1kLmmmr2\\\\/E2HXeHA\\\\/u5FUmtkntGkaPcMYkQ9GU9atuT5qMOm2iwlAjKMK7ICqHntzaPo2qeVkmCX5om9R6fUVvWZ3J5hOTir+taUt3bSW4AU53wMezen9Ky9L3i2ZHUq6ZVgexrU52rMrXWxwyvyQcqc4I+hqtZXV3yPNEm09JByfxFJeNgnmorOXbL\\\\/hTINEXqhv3iNEe\\\\/cD8a1ra4Vh1DADIIrLiQvLuxnNQwKYpZVjOxhnGOh+oqdyk7HVKYbqIw3CCSE9M9vpRWFp+qFo2acBVAwxXop9\\\\/SipcE90WpnMySrEpOcnufWqTXjseSMZ4AFVbqS4ZvmwB6Cq6u6HPavLqY52tT+89TD5Xret9xbmunZgrEAeg6UiuevSoJYXuIvMhBLLzjFJCScZBDd1Iwa4JSc3eTPZp04QVoqxcjJL\\\\/wA6vxoSKowrznHetexQvjjIrNmyVyEIc7QOK1tM08zSjK\\\\/hViz0tp5lAXmuw07S4rGPdJjIGT6CpScmEmook03TRCiswwfSodf8U2Xhu13TOHnYfu7dT8ze59B71zHif4hLbFrPRtjyD5WuDyo\\\\/3R3+vSvNZpZ72dprmV5ZXOWdzkmvWw2Bb96eiPFxWYRV4w1Zb1nXNQ8Raibm6kz2SMfdjHoK3dEt2j0xxkZ3Z5+grEs7QD5iK6XTT5EEgK8n\\\\/CvQnFKFonlRm5TuyxjbbWxP\\\\/P6n8q1gw5+p\\\\/nWWTmwiPpeR1qjq2Rxk\\\\/wA64J\\\\/EzWPxP5ChVAGTWXfaotuSkIB2n5m7LV2\\\\/nNtYSTAEsFwMepxXGzSuzBW7D8zXDiKso2jHqezlmDjiJ+\\\\/sXTrF0XyJWHzA8qMflWtp2qpK2yXAz0foK5oP+6ZMEqR1yPw\\\\/z71JbORKEBGCOc1yqrOGqZ7VbLKMqcrRs1sd1gc88EUAY79qq6Zc\\\\/aLQHOSvyk+tW\\\\/w7V6kJc0VLufJVIuEnF9CN7e3kfe8UbNtxuZQTj0pEs7dEEYgjCjgDaPf\\\\/ABP51IzbVLnoFyapQ6oJVjYx7dzbfvA4G3cDTcki6dKdRNxWxLdQmHT5haQRl1RvLQKMZxWEt3dW1yVNjBhgclowrEE\\\\/eIH5Y75zWpaam0scBETuZpCuSRwR9PbmpJ7tVmuB9lRxCCSxIyTjOMUlNGrwtWMuWxl3+qy2mpIVtIXj5IfaCRkAZyOevFaUjrPp7BYoYpDCCo+VsNj7uP0\\\\/GmSX8LoGS1XOT1UDOCBjke9PXUbUmZTZpvh4IIHJzgdulHOi3hKvYrJchIJ7ZLWJ\\\\/KjCsCv3znjp14JPHNSWLLc25judPhQAD5eACT16\\\\/QHirE1zbRWIuzaRMCQGChTjnHXvUSX9rLb+d9hTG1227RztI9vejnRCw1WSuo9bfMo3l5Na8f2ZFNEr7IwvXAYbeMccdKls5nMvltpUMUDKMkdR39PYA+hqw19YGOOT7LGVckKdg7ED096W5ms7e8jtmtIi0mMEIOcnFPniJ4aqnZx1\\\\/wAijDqLhGaPSUSBkCgqp6NyeMcir2nLFeMJXsfs8kWNuMqcY4B4HoOOe1Q\\\\/bLIwTSJaxq0QB+4OucY\\\\/SrkepwvdR2+DvcAg9jkZpc6JnhqqV+UsS2dtLCIZIUaPBGwjjnrUTaRpzKu61iOOBlfQ5ok1BFuXhdGGzOG7EgZqJNWiWG3eTO6UHoMcjt160+ZErC1WrpGnFGEVQOFXj6U\\\\/Tsf8JHp\\\\/X\\\\/VSfzqMEAdMHNO08Y8R6d\\\\/1zkqjlluvVGsGVsetSRxruyveogP4kweMVHBI0blX49q9GCM5ssM0UpNtKQM8oT2NZEsGHkl27X6SL9O9LqE5EokGeDxVy4PmWkV4nzAjbIPp3rTYz3OG1EEyEgnrVOCQ+YK19WtTA4lTJhk5U+nsawt22fHarS0Od7nS6e4LAelNnUJeHpgiqtu\\\\/lRpIenrVu+w3lyr0bvUl3M2zn+x6iUf7j8H3BoqDUVyoccMOc0U+W4uaxmGRHOCOTVDU7mKyiDCPfK\\\\/3E6D6n2rQ0+zmvpikC52gsSegFcdd3dxPdS+euJVbBXPA9K+ZowUpW7H11eryLQtweI9UsQwhvHjLHJVOE+mO\\\\/wCNdBonjxdyxaxbRleguIl6D3XnH4flXAyXSiXYAzSZxgVqWdqyKJJAA\\\\/8Adz0rrlRg1Zo4o1ZJ3TPU30u11WBdQ0q4gkjkGcDAB\\\\/HoDVjRbFZ2K5G\\\\/noQRn2PevMbK41DR5Xm02cR+Yf3kDcxy\\\\/UevuK9M0mG61DSrXUUjeydojJ9lDfLnkbscZ6fyrhq0nDrod9GvzKx3Wn6atjAGYDe3fvXHfEPW\\\\/JC6VAxBYB5znnHZf61q6R4hmEy2+py5KRPIHMZQ4XnkH2ry\\\\/WtQk1HUbi7fO6Vy2PQdh+Vehl9FSlz20R52ZYhxhyX1f5GZy71dt7ckg022hUKGNatpCr8noO3rXsSZ4dyW3iCKCePStC1UsjnOOcjJqvtJPGMDtViAEo\\\\/GPfNZz2Kh8ROTjTh7XcVbAGXfP94\\\\/zrEf\\\\/kGPzjFxEefrW2M7n443H+defU+JnRH4vu\\\\/UivrZbywlt8keYm0H3rifs0lsHEkgdlOASeR7V3oXI7AVg63oaXMsVzDEzShuVUcH3NcWJpOS5l0PXy7FKlLkk7JlBNMDRg+aQ5GcDoKoyQSTAxs4RkOCc8gf4VqHStUYqRFF6YLn+ean03QR\\\\/aD3F5CVYDgZyrHvn1rhhRquVn1Paq46moN+0T8jY0uyWx06KAZ+7k5Pc1cI754xRjt6Uu08kelevFcqSPlak3Uk5PqKV+XIPGKgjsrSIYEKAdcAe2P5VOVOR9KXytwLsxVB0wPvU2kwjOUVZMzJNR0yC3+0RtEyCQAbMZ3dM4+nf0q9IunD97IgldlxuAHQj171jQ6HKZGeC72DkA7BtCnrx0z0PGOR0rRS2gs4IoQQyRgICx9BxSsiva63bIdS1SzsIlmGmLKFy5yVULgcnJ78YHrVdNb02e\\\\/jtX0uSNLhGKMcbnGNxyvXHv60mpQQXvkM9xLGYTvXy1A56cggg\\\\/0ojtLRr1bl5pCyNuCOfl3FcE9M9O2cUW8jT6xD+cR9Zsf7JS4hs5DbncWicBSgU4PXq2e1WDeWqT3FsthKzwRK+0J98Oeg59uarT+G4Z2gaC6ljMDMyDKkbmOSeQec1bawjmmm82WWOaRFj8xT93aSQfryaLeQ\\\\/ax\\\\/mZSbV7WSziuE0yR0eUxkIyfK24A\\\\/xYOSM5GelOm1i0ad\\\\/NspjMm3yw23L\\\\/NtGOeOTxnHFWo9BjtZIi0zO0cjy5OAHZuCcAcd+lVm8PK7yNJdySblKKHVW2gsGwePmHHelZdgdRb8z+8sWbWN7aiZYNoLFWRxypUnIP0OasrDaqyMFAKY2n04xUFhpi6dZrbQkFQxYnGMknJqz5TE5OP1pcvkL2l95P7xrW9rLI7sil3GCTnml\\\\/s+0KBfKG0EkAdBk549OlCwtvDZ\\\\/WrPpz60+VPdESqyXwyY9iSBTrD\\\\/AJGHTf8Aclph5QfWn2PHiDTf92XvVnLPp6r8y7EzAErggGppyH27htJ4J9DXKRatPDdKrFWRxyD1HJq7Y+KLLUfMjk3RSYKurDgkHqDXpxTsZTkrluZDKskTjEifrTbG5ktoOfmjzhl9KnjkjuIg6SJJKmRlWByKg8sbpI1PJG4A8ZH+NVclrqg1GCFo42A3W0wwV7qfauMv7V7O7APzI33X9R\\\\/jXXOZDarECGC5I+lUpIVkjaG4QNC3IweR9PehSsTKFzPmX\\\\/iVqQRRYTfarNoifmTkVcntDFpxXO5P4W9awbSc2t6B2zVboxejH3n3WBoqxqkYJ3qOGGTRVoRhaLLqHmTSWM0QMYG+KXIVwT69qj1PSrTVV\\\\/cQPZ6goLNbSNyw7mN+jD2rn7HWX06djJEzq42PHnBIzn+ldDba5pN\\\\/My3UrxJKRtW4QqIcDjaRwOe\\\\/FfKOEou6PspWejRzEllLaz+Y8O8oOX2YIHuO31pYbyGXlXO4dsdK9HbTI7yBCkh1O3UfLJHIvnxj2YcMPY4NYd54MtSVvrVPtYRvmVSYnB9HX1\\\\/KtYYtbTOaWG19xlLw\\\\/p7apdFpBi2jI3ZPMnoo\\\\/qe1eqpPb2lqtxeBAkSgIvY46Ko9K53Ty9rY\\\\/bdU2Q2qARxoi4JH91cfzqpdajLqVx9olUJGBiKIdEH+Nc85upK\\\\/Q6KdNQVupc1bWrrV7mOe4RFEalUCrg49z3rBvLK2ucsF8qQ916H8KtvISODULIzfU1rCvOm7xZcsPTqR5ZK5ltbyQDDYYDuOaQOy9CRWkYSPvdKqz22xS6A4r1sNjlVfLPRnh43LXSTnTd0VDe3MTfLIce\\\\/NaGlalNcGZJADtUEYHvWbKvWrGjq3nznOPk\\\\/qK7prQ8yn8RsxTNPplyWUArLF\\\\/wChV0ZkSISu7YVSxJI6DNctBxp18Ce8Z\\\\/8AHq2L93NpeDJIKtXm1F751LRt+X+ZbGr6fwPtcX\\\\/fVB1aw6\\\\/aouD6152GwM1h3uqzO7R27bVHfua6JYeEd2cdLGVartGK\\\\/E9gXVrDH\\\\/H1F1\\\\/vU7+1LAj\\\\/AI+4fxYV4bHqt9bsW8xmB7NzWpZeIBK6JOgXdxuBpRo031NqlXEQV1FNfM9hXUrFmwLqHJ4A3inXt59kjDrE0m51TavXk44rz2HAdD7jFekkg9u1Z1qSp2sxYTFOve6tYyYvEEc1q0ghcOihmTjOM4P0xnvUcPiSLU5I4FhlUZ25ONo64zn1A6VtxoiGWbaoOzDcdar2yRrG7lF54Hyj6n1rA7G1sNub1YIxEjAk9Oc5HrUCFUceefMl7rngfU0Q+W0j3BhXI4TA7+tOaONcRrGpY8klRTOdu+vQlEg7+UBgDGBXPzWdyn2tRFvSJmeBlbl95BI69vmH4itprK3yqiJWdjySO1I0MK5Mcaj1UrxQPmsYk0d9HpIMBmjZbg+XycqAx27uehAGacbnU7mWW7EM+4+WyxEEqgAfI44Jztz9a3Ejt2TeYk8t+GBUU20iWC4eAxggHIwg\\\\/wA9KBqSWnRmUdQ1eUo5jbzreN22iNwrgqpAIz1zuGfar8srtqckdzJPFbmJDA0QIBbndkjuOODWikUUN6F8pMH\\\\/AGfX8Kc1vEkjDylHzelBopXRzqXuoLAIJI5nRnyGAYPt3sME\\\\/TBp1vrF3BCpeEurruUuSWzlQVOBxjcfyroDbwj+ADFBgi4ITB+tBVx5AwO9IDmmC3j4wv6mlFtHnoQP94\\\\/40CH84\\\\/GnWX\\\\/Iw6WOP+WtNSKNOgIPfJJp1n8mv6WQO8v8qCJ9PVfmc1KNl1AxbJx0Hbk1kaf8upTLzgyMP1rXuPlni5OduSPxNYkP7vUJD\\\\/00P869em9DkrbjdVhkt7gyQyOh9UJBrS8P6nfPcIst3K6+jNmptRtxNbb8ZOKztJHl3ajoc1o2mjNOx0d\\\\/qd5a3JCyDZnoUB\\\\/pUEmqXUiZjdM+nlr\\\\/AIVY1WDftb1XrWIpKSbD0qEkNtpm7FPLc6ZJ5pXI5OFxXN3y7ZVYdc101iu62kA7rWDqEWRmiIpFpX+1aaDjJXiiqemThSYmPB6UVWwlqYF\\\\/pNveIVdcN2ZeCK5max1TSJC8dw7W47gZx9RXdEc8+lNKBhgjg+tfKRqNaH20oJmBo18ZZg3nWSSHo+DEfzXFdZd682lwebc3EUsrIVUx3Kyn8eM4+pNcnqHh1XLT2R8qXrt\\\\/hb\\\\/Cud\\\\/fpfGO7RkZf4TVKEZu6Ib5dGd7Nr9xrzWr3ACxW6bVReFJ9cVbimBXBrl7S4GAAa1ra4+bk1LjbYuJrg5PFWIOXHSqKSZxzV6AEOp6ioZWxcktlKbu9U5UTaUIxkdK1HbFv0GayJGLOTzTgndNESd4tMxZI8E8VNpqhZpugJj69O4pJADnuc06yUiVuOqGvp2\\\\/dPkI6SLkB\\\\/0G\\\\/B6+Wp\\\\/JxW3dnNpdD\\\\/YP8hWHGxFpfjgfuf8A2YVs3B3Qz8ZzHn\\\\/x0V59X4zoX6f5nnmoM6WEzJncF7VzVpBdahN5NnA0r\\\\/7PT8660KHG1ujcGuh0\\\\/QIodMjitHWEg5clAS3PU5rXF1ORKxjlVNVFJPocQnhDXvlMlsiKepaVcD6803XfDh0W1tpvMMhfIkK\\\\/dU9sV6hLZGa3WMTsjAfeAB\\\\/nWbrWkx3VjHbTO0m1t7HgZx61wQryclc9yeHgoO25ztllbe3BJ4Uda9NYExhckZUcg4NeaKcfQV3l9bSXtgYlbBZFIJJA4\\\\/z\\\\/APrr0cVpY+by53c\\\\/67l\\\\/yH8iYh5OnXdzUMcUhtWxNLuyehFZUOk35Bha\\\\/YBgo2ocDA68evTmkkg1JIyI5yzKgDIp27yPvEZHXpXHc9SUfMt20Li2x5r48zk\\\\/5FSNbE3HM8gIGQeP8KwbGLWobwRPMCkpQkE5xxz7ZroS0zkful3Dtv8A\\\\/rUzntpYkSKeQBkfD7sBtoBOPwqK4g+fiSQsTlmwAM037RiNhNGA3YF8YqNryWSYbIw5IwcN+uaBSatYlijYRSAStgHuBULTRPqcAS9jJkTgDbk8HPTr0qdd4xGsY92Lj86yrSwuXuYCdojjLDcAAwJz0OewJ60DilZI2Jpo0uk3XcQZCA2dvGelWbiRUujG1zGrEbtrAAn1PXpWJLpE09y8Yyyneu5gMgMdxPvzU+oWFzeSbS\\\\/mRjOJJANwOMdsDHJH4mg2jY0RKGUEXUJBG4cDp69alVZSoPmp7fL\\\\/APXrA\\\\/sefM5KqTKzuM9mZSNv0Gc1tws0VtGhicFVAOB9KCmSYlyAHT8VP+NAE4Aw8f8A3z\\\\/9emrNnH7p+noKXzRkfu5On92gQ9C+MOUI9hipbPH9vaYT6y1Cjh\\\\/4WA\\\\/2hipbP\\\\/kYNLx\\\\/el\\\\/lTIl09V+ZzNyCLhMdcf1rFdSt3Ke5c\\\\/zrfuYyLhD0+n1NYtyoF5Lgcbz\\\\/ADr1aZy1VqbVv++tih5IFZ8MJivBj1qxYS7W57jFTmIGcYq2Zbo17tA9pG3tiubnTbJ6DNdYqCSxII5ArnLpMNjHNTEqSNDSWLIR3xWbqEfLrx1rR0c4kA9etQ6pEUmfjg0Lcl7HOxHZLnPeilcYlNFdCV0ZAvznjrS429eeajBwQKfkZr40+8uByen61RvtNhvY9sqAkdCOorRYAqPSoyO54B\\\\/OhaBvucjcWF1pjFsGSH+8O31q5ZzGYBlrofLD\\\\/KVyD61kXuly2bfaLYZiz86Dt71fNfRgo2L8DNkc\\\\/hW3a7iBxwPesOyyyg966KyjyvPepFLYsyvmIAceorKlO3ca05+Fzgisi5OFf8q1pLmmkc1WXLTk\\\\/IpHP51Jb8Snn+E0zPpSw8S\\\\/ga+hex8tHcsxtm2vCc8wN\\\\/Sto4eBsjrEP\\\\/QRWJFk290B3hf+VbEbbrdfQwr\\\\/AOgiuCt8Z0Qevy\\\\/U4YHBNbuj38uDGSWK9MnqKqWGhXd4+WUxRE\\\\/ecdfoK25NHhsbZHhcl423Nk8sOhrbFShKny9Tny6lVhW59kLC84nJWALjPJkY1k6vdSGXygzBcfMM9a1vmKj962360+DSbXUrNfOYpJvZkKnnHT+lefhXGNW8ke1mMZ1MO409GzlAea728kuU0xTZhTOVTbuGR1Gc\\\\/hXO3nhi8t8tAVnX0HDflXVQ5S2j3dQgBB7V34mcZpOLPEwNKdKUlJW2MO31rUDc+VNYssoBYqMlgM8ZwMc5xRNrOoC8SaHTn8jcyu3bcOOo\\\\/wDr10O9S4OcHH+NUr3UTa3NvBGu6OYvuUYzkDORkiuQ9FW6lXUdQZIoHNoxZ85xnCn0Axz684qt\\\\/wAJFOZjGbCXcFyrkFcjuTx6dKfFrbQ20T+R5krRiQqhH93ccAn0z75oXxFBcXBVrd\\\\/KIXKkDkk4U5yBg5pkyj2Wpp+eJYlIMbHrgN6\\\\/WgTRKoZ5oYvqcn9Kz7m4jXTobu3jZmkJIjD5IA+90z0AP6VPbz2cs7QgE\\\\/3XdgVbAB4x7MDQc7jNvYf9tjlBiifCn77seT9faqUz3FncyNA0hhdCqKsnPmY+91zjHbPUdKRdfZAka2qmdcF489ASACvqDmrK6xZfJNOJjG7bRiPOTgHH5EUFwg1qJbzXqWNncxy7boBi0bthZO2Gzzz1B61XgvtRtVLlHlDbSUkySp25OCD69q1rnVF\\\\/swX8cIdeFVCCCMtj35zVGLX7aRC1xCYznO1VLYxnOeO200GvyFtdVvpLoJNBGIi4G4Kw+U555PsDj3om1W8huZnSIvAVKxKVJ+Ze5xzg5\\\\/T3qSPVbdrW4kMIDwhnKY4IBIyDj2qL+2bZJAtxAI8oJAwG4bSCfT2NAGlY3T3FtvlUI4ZlIGRkA8EfWrQYEA5H51kw6nZSXQt9gwwG1ih5YkjaeODx3rREURA\\\\/dJjH92gCbPHWlsWP\\\\/CQ6Z\\\\/vy1Gkcacoig46gU+wI\\\\/wCEg0s\\\\/9NJKCJdPVfmZFwubjGcdep9zWJOn+kynHG41vXn\\\\/AB9YJ456fU1j3Kg3Ex5+8a9WmznqiW5wVxWvAM4JHArHjyuDW1bj91mrZlE1LFsgL2NZepwFJmwOtWbOXZKAfWrWpQiRN3qKnZlvVGTYHbMtW9biPmB8dRmqUIKzgHqK2tUj83T4pfRcHii+pNrxOHnXEufXtRUl0pEgorpjexgyoGz6U6qcc\\\\/TFWlcMK+OtY+5TJlP4n37U9YSTnrUIPNXoPnYDGaRQ2KAk9K0YLISoVIByMfWpYLGSUgA4HpXQ2OmeXESwPSp3BysecRWzWt3Jbn+ByB9K6GzX5BzWXfMja9dFfuh9v5cVr2Q3R54FUTLYLlTt6msS7OFx710M8WE3c5xWBMscspR5ChHTAzW+Hko1FKWxzYiEp0pRhuUvWnxDLgeualayl\\\\/gKuPY4NNSN1lAZGXJ7ivdjVhJXiz5uVGpTfvRZLB9y4HrC\\\\/X\\\\/dNaVuxNvAR3gU\\\\/pVCBcGUf9M2GP8AgJrRsFBs7YnB\\\\/crXHX+I0ho9f61L8B3RqT6CmmDM5lz83T8KdEAkaruBwMVJ1PT8ayOvnRV+yRK4QDAboPSp0iRGXaMBeF9qm2FhnjNL5TEHvUxiovQuVXmWrJ8g4FQXUsKxO0xVYwPmLcCnDeByOR61BdRpc28kMgyjj5hTZEmmhq\\\\/YmOd0ZJ4wCOvIppl0xi7+dEdpOfn6Hn39jVKHQrWG4SZGl3RtvXcQSD6ZxnHtSP4et5WXzJJGCsWTGBt6nsOxPegjQu+TYuu9GjjLAncr4JHPTB6cGpGs9NnnV5IgJVXbvDZ4+npWZcaPZQ+S0ksgdnwpHOXJJHH1P04pTpMF9dSXsV0yyN8m5BgqRwf5YoJbsaY0+xPIlAK5wvcA+3+elLFpOnxN8soBXpt\\\\/D\\\\/Csk6JEt3l75vNlZmwoILHv36Up02aG2niu7wL5kq+U+4kkgk+vBPt6UybI1hZ2SEeVAS6AD5zjb9PypradbKrM0ZYgdABz3wB+FVbCDbNK0F0syqAMckjqeTnnrWgwnaNgGRcjGRnNAX8zNiOlSxlE8wxXEmCNvDN1x04x\\\\/OmmLTDcyReWweI7WGzoMZ9OmD+tPk0eIbCZDGkb+YF3\\\\/KDkHPI9Rn8T61BLpcVxdXE8Uylrj\\\\/WeXJwRjGOB0oHcsW9rYPDuifAlUjacAlTyQR1qK4tdPSJGmkJjLbcqC27gjBwCemagk0UsZSjIZ3+blsc884xkDk1JDpMrWC2s6xArKZOMEnjHzccnmkMuRafZO6yRvkthwQRz3B\\\\/U1ZhlVzIqXJZojtcbRweDiqVnpIsrlZgC7IpVdzZIzjOTjnpTLjT7iXz1SXak7bmXGewGPpxTA2IwwAy+4EdMCn2Rx4g0r\\\\/rpJmqtjFJBawwsCfLQLuJ64qxp\\\\/wDyH9M9d8lBEt16r8yndqGuWHXBP8zWPcKRPKCNpBPFbd1Hm7YZwwJ\\\\/maxroYuZB\\\\/tV6lM56pAMg1rWh+TFZcQy4571qWoODjitGZJWHg7JT9a24Stxabc8gViv1Jq7YT7WAJ4PSkUiq8OyfPvW+IRPojDGSpqldQiQhh9a2bCP\\\\/Q2jPUjOKmRUV0PO76IpKcjoaK0dbtjFct6ZoreEtDllGzPPrW6WRQRzWhFLnnNczCkmn3IhckIT8pP8q24c5r5aSR9urmohLAY5rW0y3kkkAJwM1mWMZdwc\\\\/hXW6bEECkDFYtalc1kdLpGmRCMM24nHJxVvWrxNN0mecgKkUZb6ntRa4W2AZyMjoOa4v4j6qUs7bTUb5pm3uAeiDp+Z\\\\/lWlklYyj7zscfaStI5djl3JYn3NdbpSbgAe9clp6g7a7jR7csRjJOKz6mk2WLyELCfpxXCXcqm9kTOCD1r0bVIxFaszDAC5zXk8kpkuZZB0ZiarqOl3NKO4ZTw1W4rt9ygnIzWQkm7FWFmPFF7GrimjbtiHlZQuWKsBj6GorS8WC2gV0uEdECsDbsenvVdZ2VhLGSD3welWor67bJM8mD23V0xq2Wp5WJwLqSTi7DxqNtn5pHX3MDinLqVocBrtR9Uf\\\\/Cl\\\\/tC47yOffNKL+Ynlj+QqvbROf+zKv8yHHVbU8Ldw+vLMP6U9dTt8Y+1W+f+u3+IqNbuRj84Qj3QH+lSpJGTk28B+sS0vbRF\\\\/ZlfpJfiSrfxMMCaA5\\\\/wCm605rlSG2PESRx++X\\\\/Gnx29pKOba3BPfyhSyWCRIXOm2UsY6lYjx+RrSElN2TMauEr01d2t8xqzy+kJ47SD\\\\/GnNPcsB+5U\\\\/SSqJubAkg6TZn6Bh\\\\/Wjz9Lx\\\\/yCLf8ACRxXR7CZx+0l3X4li7tpr2KJJISFjkEmOucdqprosqMGRH2hyxQJ975i2P8Ax4intc6MB82lAZ\\\\/uzvR9p0fHGnv\\\\/AMBum\\\\/wpexn2D2kvL7\\\\/+AVv7DuHjjDJPnyyrZzwexGMZIGB+FWrjSZLjTzaFZlTzhLwpGPYfj\\\\/8AqNOMukLtH2Scbhn5bz\\\\/61SRNpEswj23sWT1N1wKPZSXQrnn5ff8A8ApvpV5JNLK0jiR1ALLHtzgY5Gen9ail0\\\\/UIbYtHNM83A6t8w4HTPsT+Jrd+yacASsuoL9LigQWKnH2zUx\\\\/22Bpezn2FzyvsvvM1Bdz6fHDJEY5I3VlDtv3Af3jnvUVxa30pd45Ehd842cbRnjkdTWwI7IgbdT1Me+4H+tKUtR\\\\/zF9RHuVB\\\\/rR7OfYanLt+KM5\\\\/tKXJuIljLmERkvkYOSc8daNP+0xSl7uTeNpUHqeufT0rR8uHbk63ege8ANKI4GwBr0+fRrb\\\\/61Lkl2Hzy7fihwuEbPDjj+6aYJ0yv3hkf3TUwswRldczj1tv\\\\/AK1MFoxbH9uwEjs1sP8AClyy7CvLt+Q+OZWAxknHPy4qTTT\\\\/AMVBpZP96Q0n2KRVUvrNlg9Cbcc1PYW0cGqW93catbSLDuARE29fpRyvsN8za0\\\\/IzLmTNySGyTnnPuazLsYuZB1+Y1uLp6S3TEnbg8seg71wE+qWjXUjRi6G52+ZZTyMnkc16VLUyqxZuRj95zxWrZjqK5aG7gdDLFqE2wEAloww5\\\\/CtiwvN4GNUtjnuYv8A69atGSjY1JRgd\\\\/enQnZICPWqEk7G4MY1G3LDjb5Xf8\\\\/aokvnMqCO6tZAcnIBAAHc80rDsdbaKZMA9M4FbSqIJVQ8DH86xdFeSeVP31pgc8EnNbV6Ha\\\\/B7gc46VlJ62NYrS5heILLevmAfjRW7cQ\\\\/abfawzkUVrGWhnOF3c8m17w2Z9JlmVMNGu4H6Vz+l5eFM9SOteu+IxDZeHL4qowIW5PrivJdEU+WgI7V8zFNKx9de50+m2nzCuts7UYGeMVl6TF8q8V0duowBgD1pIlsvLtjRRngCvGvEGpHV\\\\/EVzdAkxK3lxf7o4\\\\/Xk16T4o1F7PRZUg\\\\/10o8tSO2eprzO202UMPkNA6atqX9NiJkB7elei6JABGGxziuKtI7ewQS3MqRIvUsav3HjmKCDydMi3vj\\\\/XMCB+A70opthJ32Njx5qcVnp3lxuPNnG1R3A7mvLIxlRVm+vLjUbh7i6laWQ9WY1EvCjjoKuxUHyqxIPldR7Gp1JHeoF+Zge4FPbIHXmp5S+cnW4GQM98VpRypsA5rnA5WYZ9a1IZMEDtScR6M0969DmjcM8A1BvBwakXAqbFJImDEetSpNjqaYrrj1o3Ke1FhXLkVzt71r2V2cgDHNc+o5yK0LNyH60RWo5JNGldeHVvC01s6o5GShHBNc9qGm3mnIHngJiJxvVsgfX0ru9OYhC3XiklhFwZIXXMcikMCO1ejRxU476o8TFYOnJvl0Z5i90gGNhOfQ1CbyNV+430yKS7iMNxImchWK\\\\/kaqHn\\\\/CvZST1PAu07GhBqEZuokKMgJxnitazuBLftGob5BknHFcpcr8vHFa\\\\/hOaWU3bzvuKAAHFRKDbujTntFm+XUopOTufH0xSFlwq5bpnge1NjTaUT72GDcUi\\\\/vIGkXhvQ9qpQ1M+d2GyOiIc7vTgVRkubfdzI2c\\\\/3Klu5MQDPUmsiR8t0BHrVcolJmkJ4eu8nHqtWYrm3ZgAx3f7prKTiMjvVqyTMn1qXEpSaN5pI4oA2\\\\/CkehrM+3201w4+1vhDhsKcjj3qze8QhR2FcpBaxzXNxI2\\\\/cZiMq5Xgcdj7UKCKVVnUR3qsU33MrKOnB6elWpNVsdwUCcN\\\\/uHB\\\\/GucWy28Jc3Cj\\\\/fz\\\\/OnG1lAAF7L+IU\\\\/0pOnEftmbdzrO6ForeMIrDaT7ew7Vzs50yK5WOa3QHaGBC++KkaK7VTi5RvZov8AA1Rmt2ll3TwCQ5XmOTB4PoaHFxXuF0pwc71Xp5FyJdKyyRAxrIQcAEZxk5H5GrVvYaYsCzRSuZEYBAG54x7VmraABcG7QAYG6LcAMEdj71uaXbwtI5jaUMXRgDbvnCjGKz5qvY61HDcytJk39n6dHPLcRzOSAS+CeM5B\\\\/wA+1QR2WmI8rwyEMyHK9OMdsj0rRls1t\\\\/tIEV0WuFOT5WMZzzyfeki01JnMypc4kQYxGOmBjGT7frTc6liVCg5NczsdJ4U021EfnJI7OCHwSONwrrZrUGTP97riuY8Lg2hEXlTZdlG5gBxwPX2rrZJcXKRg4yeazbk3qHur4diuka+aqAZFFLdutoklx1WNS59\\\\/QUUtZbCcorc8+8eSFfDN2QcBgF\\\\/MivPtIT7o7123xDlxo8NuOsswH4Dmua0m2GVJrxOh9HFaHW6aMRLW2nbnGKy7JVVB0AqrqerGT\\\\/RLQ5B4dx\\\\/IUkJmVrN0+p6sQjZij+RPf1NLJp5WEAjg1bh04+cjhOOK6O409BZwuwG5sjmnYL20OG1nSmfw3LKF5jZSfzxWRFp0ojVwpwRya9G1GO3tvDl2LjCpIoUd\\\\/myKw\\\\/7Z02zsVigjM8uBncuF\\\\/wAa0hSqT0ijKpiKdNe+7HLnTZSD8hxTHsJkQfI35Vtya7OW\\\\/dQwRjsAuf51XfVbuRQrSDA7BBXQsFWfY4pZlRW12Y6xlDg9aXr1FaBmZ23Oqt9VppMTHmHB9jSlg6q6XHDMqL3djJ2jz+naraHAqQwRu4ZGI9QwqZLR3PyYI+tYTpzj8SO2niKc\\\\/hkhFk6VIJDTjaSr1Q09LSRv4SKzOjnGrKSaso24U1dPk7g1bispP7pqGWmMjyDWlZjMg4pbXTJZGHykD3q+Y7KxIWa6iRxyQT0pRTk7JXFOrCCvJ2N7TkPkMegxUlxOtpaT3MjfLGhNY8ni7SbG32LI8zeiL\\\\/jXL6t4kn1jMYHk23URg5yfUnvXdh8LUm9VZHi4zG0435XdmNctvZnbqxyaoOcHPHWr74ORzuqhMNnbnOa9y1tj59PuR3H3ea3PDMWzRLmbp5jkA+uOK5+6kJQ46iuwsIRb6RaW+MHAJ+vU0+o5O0S1CCkbSEDcearmYpGfUnpU1zMFAWq7bWCk8g\\\\/4UzO1ynqLjZH7kn9KzU+ZSPerd9\\\\/x8RKCcBSagRcEkZzSNFsTQglgOtX9Pjy4Pb3qtbDcXA646VoaeNqM7dBUtjEv2+c81z8dvPHI\\\\/lTptZi210zjJz1BrQutQhd3HmAEHpUEciMwKuD+NUJaD1F9gHdbH\\\\/gLD+tBe+HWKA\\\\/RyP6VayAowaTGVGevrSuBSae6X71qv\\\\/AZP8RVd7xUb97FLGPVhkfmK0ZCNuKoSyYkxnNMaNOyuI5UBSRXH+y2a6bRziQZ71x9vbwSnLwxsfUqK3tPsbRJB+4TB7HkVLKi0mbus3MG2RUmjMpXACnJGeO1Sfa7SC2XaWbaAoAjY\\\\/0qSZVS1HlqqgADCjArPXUY2BWQ4xwPSp5TbnVzZ0O4We+jxuwDuYlCO3HX3Nb90xTUkx0wKw9MnhjhMvmrt4wc1vXCiSaORTwUBU+1Yy+I0jqtCLxJdw2WjvNN9wEHbn756hfxOKK5n4jXACWEG75QGlYfkB\\\\/WiurD0VKHM+pxYis4z5Ucp4su4dS1ZIY5N0dvkZH941XtFEWFCk5FRR2JS8AbOHGQcda2jaARoQMH+dfM2PtOliF\\\\/tDqVBIQHlR3FWLPTtkgOODzWtaWglhDYGcYas298Q2OmNJCT51wvG1Omfc1pCnKbtFGc6sYK8nY6BIFURkADIxWJ4s8VQ2lnDaWTxyXKtlschB\\\\/jXKah4o1G+jMQcQxH+GPqR9awnywya9GjgrO8zyMRmHMuWl95cudVu9QdTdTtJt6L2H4UxZMjiqYyKkR9vU13qKirI8qUnJ3ZcDnnJ6ml3+9QK3BpwNFiLlgHI60HvUIYjp0qRXycUWC49eo\\\\/wpT1pV9aVhmiwrixs4\\\\/iI\\\\/GpftEyjiVx+NRKMAZoY\\\\/5FLki90V7SS2bHNf3aDi4kGP8AaqE6pfA4+2TAf71Ncc9arPwQaTpQ7IpVqn8z+9mpFqN5ImHupj7FzTWJbkkknqaqQN81W+3+NWoxWyMpTlLd3K8ikgioN7IflGTVx1BGKqyDac469KohMsqdyjPXvVK74bpU0LkHGfwqvfsBz7UgjuVwhnu4IsZ3OOPau2WQGULjlR+Vchog8zWVcjIRCf6V0zSeUXx944FCHU3sLKVd8A1GeG2nsDTYwWf680XUgSUL3xk0ArFO4+a6A6nYB\\\\/OgqIo8sMVKyL5xkPUACqd1KXUj14xSZoiW3kZUMwGMdPfPFbH2Q\\\\/Z\\\\/KMrEHhgOOPasqOP\\\\/AENF6HzUB\\\\/MVus2VGeuRSQFAWNqzND5I2dMDuKry6TZq+Fh28\\\\/wuR\\\\/Wr0DZuiPei5G2TAzVWFqZ7WMaOAjzDj+\\\\/n+dMmsJTjbdsO\\\\/wAyg1cYFhu9KUNuiPXNAXMR7K92nZKkgz0zg1nyi9gfdJA+3+8BkfmK6M8MfrVcsfMyDSLUrFfTrxHxk10dtdIGXkcms+G3hkO5okY+pWrsFlbMcmPGOcBj\\\\/jSYtLm3c3q\\\\/ZmVnAG2uVtZLvWdVTTtNiM0zk5P8KjuSfSuo0\\\\/SbW5VpZ4\\\\/MVR0JOK7LwpYW1lazywW0cROclVAJqZ1VBabm1OlztXMWw8G2+nacrX1zLcSu+WCkqhx0AFa7yCNIY4vkwASuScc8CtG4JaO1zgAbnJPas+NN00ZP8b9TWCk5ayNnBR0icR49uPO1tLcHPlxIp\\\\/n\\\\/AForO1uX7Z4gvbk5IaYhfoOB\\\\/KivTpNQgkeTVlzTbP\\\\/Z\\\",\\\"user\\\":\\\"9833967e296146ae8463b7c148b4ca2f\\\"},\\\"url\\\":\\\"https:\\\\/\\\\/demo.computervision.com.vn\\\\/api\\\\/v2\\\\/face_search\\\\/images\\\\/3041325300.jpg\\\"}}\"', '2022-05-07 06:08:08', '2022-05-14 02:21:33');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_01_043848_create_settings_table', 1),
(4, '2018_11_03_084440_create_activities_table', 1),
(5, '2018_11_03_091911_create_user_metas_table', 1),
(6, '2018_11_03_100212_create_transactions_table', 1),
(7, '2018_11_05_055256_create_kycs_table', 1),
(8, '2018_11_08_110810_create_ico_stages_table', 1),
(9, '2018_11_10_054817_create_ico_metas_table', 1),
(10, '2018_11_12_090411_create_payment_methods_table', 1),
(11, '2018_11_22_102451_create_pages_table', 1),
(12, '2018_11_27_123445_create_email_templates_table', 1),
(13, '2018_12_11_134112_create_global_metas_table', 1),
(14, '2019_05_05_123232_create_referrals_table', 1),
(15, '2019_07_16_133004_add_refund_column_in_transactions_table', 1),
(16, '2019_08_28_124836_add_lang_column_in_pages_table', 1),
(17, '2019_08_28_130012_create_languages_table', 1),
(18, '2019_08_28_130334_create_translates_table', 1),
(23, '2022_04_30_152027_create_jobs_table', 2),
(24, '2022_05_03_225957_add_meta_columns_to_kycs_table', 2),
(25, '2022_05_05_223627_create_failed_jobs_table', 2);

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
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_bonus` int(11) DEFAULT NULL,
  `refer_by` int(11) DEFAULT NULL,
  `refer_bonus` int(11) DEFAULT NULL,
  `meta_data` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `user_id`, `user_bonus`, `refer_by`, `refer_bonus`, `meta_data`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 0, 0, NULL, '2021-10-10 01:32:08', '2021-10-10 01:32:08'),
(2, 3, 0, 0, 0, NULL, '2021-10-20 04:13:12', '2021-10-20 04:13:12'),
(3, 4, 0, 0, 0, NULL, '2022-02-15 21:34:19', '2022-02-15 21:34:19'),
(4, 5, 0, 0, 0, NULL, '2022-04-28 09:41:11', '2022-04-28 09:41:11'),
(5, 6, 0, 0, 0, NULL, '2022-04-28 10:30:15', '2022-04-28 10:30:15'),
(6, 7, 0, 0, 0, NULL, '2022-04-28 12:00:22', '2022-04-28 12:00:22'),
(7, 8, 0, 0, 0, NULL, '2022-04-28 12:52:02', '2022-04-28 12:52:02');

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
(184, 'site_api_secret', 'N4c8b9979b021a2L', '2021-10-10 00:32:23', '2022-05-14 05:29:03'),
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
(255, 'pmc_auto_rate_cad', '1.289', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(256, 'pmc_auto_rate_aud', '1.442', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(257, 'pmc_auto_rate_try', '16.05', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(258, 'pmc_auto_rate_rub', '65.05', '2021-10-10 00:45:19', '2022-05-14 01:55:24'),
(259, 'pmc_auto_rate_inr', '89.41', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(260, 'pmc_auto_rate_brl', '5.122', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(261, 'pmc_auto_rate_nzd', '1.59', '2021-10-10 00:45:19', '2022-05-14 01:55:24'),
(262, 'pmc_auto_rate_pln', '4.505', '2021-10-10 00:45:19', '2022-05-14 01:55:24'),
(263, 'pmc_auto_rate_jpy', '129.61', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(264, 'pmc_auto_rate_myr', '4.391', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(265, 'pmc_auto_rate_idr', '14793.59', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(266, 'pmc_auto_rate_ngn', '598.98', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(267, 'pmc_auto_rate_mxn', '20.18', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(268, 'pmc_auto_rate_php', '60.15', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(269, 'pmc_auto_rate_chf', '1.002', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(270, 'pmc_auto_rate_thb', '34.69', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(271, 'pmc_auto_rate_sgd', '1.396', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(272, 'pmc_auto_rate_czk', '23.84', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(273, 'pmc_auto_rate_nok', '0.1922', '2021-10-10 00:45:19', '2022-05-14 01:55:25'),
(274, 'pmc_auto_rate_zar', '16.64', '2021-10-10 00:45:19', '2022-05-14 04:56:18'),
(275, 'pmc_auto_rate_sek', '10.66', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(276, 'pmc_auto_rate_kes', '122.03', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(277, 'pmc_auto_rate_nad', '18.31', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(278, 'pmc_auto_rate_dkk', '7.143', '2021-10-10 00:45:19', '2022-05-14 01:55:25'),
(279, 'pmc_auto_rate_hkd', '7.842', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(280, 'pmc_auto_rate_huf', '455.03', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(281, 'pmc_auto_rate_pkr', '230.01', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(282, 'pmc_auto_rate_egp', '22.48', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(283, 'pmc_auto_rate_clp', '869.23', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(284, 'pmc_auto_rate_cop', '4139.77', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(285, 'pmc_auto_rate_jmd', '194.46', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(286, 'pmc_auto_rate_eth', '0.0005052', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(287, 'pmc_auto_rate_btc', '3.451E-5', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(288, 'pmc_auto_rate_ltc', '0.01526', '2021-10-10 00:45:19', '2022-05-14 04:55:56'),
(289, 'pmc_auto_rate_xrp', '2.451', '2021-10-10 00:45:19', '2022-05-14 04:55:57'),
(290, 'pmc_auto_rate_xlm', '7.61', '2021-10-10 00:45:19', '2022-05-14 04:55:57'),
(291, 'pmc_auto_rate_bch', '0.005121', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(292, 'pmc_auto_rate_bnb', '0.003569', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(293, 'pmc_auto_rate_usdt', '1.002', '2021-10-10 00:45:19', '2022-05-14 01:55:25'),
(294, 'pmc_auto_rate_trx', '13.65', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(295, 'pmc_auto_rate_usdc', '1', '2021-10-10 00:45:19', '2021-10-18 04:32:20'),
(296, 'pmc_auto_rate_dash', '0.0178', '2021-10-10 00:45:19', '2022-05-14 04:53:23'),
(297, 'pmc_auto_rate_waves', '0.152', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(298, 'pmc_auto_rate_xmr', '0.007253', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
(299, 'pmc_current_rate', '{\"usd\":1,\"vnd\":23618.72,\"eur\":0.9615,\"gbp\":0.8157,\"cad\":1.289,\"aud\":1.442,\"try\":16.05,\"rub\":65.05,\"inr\":89.41,\"brl\":5.122,\"nzd\":1.59,\"pln\":4.505,\"jpy\":129.61,\"myr\":4.391,\"idr\":14793.59,\"ngn\":598.98,\"mxn\":20.18,\"php\":60.15,\"chf\":1.002,\"thb\":34.69,\"sgd\":1.396,\"czk\":23.84,\"nok\":0.1922,\"zar\":16.64,\"sek\":10.66,\"kes\":122.03,\"nad\":18.31,\"dkk\":7.143,\"hkd\":7.842,\"huf\":455.03,\"pkr\":230.01,\"egp\":22.48,\"clp\":869.23,\"cop\":4139.77,\"jmd\":194.46,\"eth\":0.0005052,\"btc\":3.451e-5,\"ltc\":0.01526,\"xrp\":2.451,\"xlm\":7.61,\"bch\":0.005121,\"bnb\":0.003569,\"usdt\":1.002,\"trx\":13.65,\"usdc\":1,\"dash\":0.0178,\"waves\":0.152,\"xmr\":0.007253}', '2021-10-10 00:45:19', '2022-05-14 04:56:19'),
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
  `tnx_id` varchar(191) NOT NULL,
  `tnx_type` varchar(191) NOT NULL,
  `amount` double DEFAULT NULL,
  `wallet_address` varchar(191) DEFAULT NULL,
  `payment_method` varchar(191) DEFAULT NULL,
  `payment_id` varchar(191) NOT NULL DEFAULT '',
  `details` varchar(191) NOT NULL DEFAULT '',
  `extra` text,
  `status` varchar(191) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tnx_id`, `tnx_type`, `amount`, `wallet_address`, `payment_method`, `payment_id`, `details`, `extra`, `status`, `created_at`, `updated_at`) VALUES
(1, 'TNX000001', 'purchase', 1000000, NULL, 'bank', '', 'Tokens Purchase', NULL, 'canceled', '2021-10-10 02:40:07', '2021-10-20 04:17:29'),
(2, 'TNX000002', 'purchase', 0.29, NULL, 'bank', '', 'Tokens Purchase', NULL, 'approved', '2021-10-18 05:58:07', '2021-10-18 05:58:31'),
(3, 'TNX000003', 'purchase', 2030, NULL, 'bank', '6771', 'Token Purchase', NULL, 'approved', '2021-10-20 04:18:23', '2021-10-20 04:18:23');

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
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL DEFAULT 'active',
  `registerMethod` varchar(191) DEFAULT 'Email',
  `social_id` varchar(191) DEFAULT NULL,
  `mobile` varchar(191) DEFAULT NULL,
  `dateOfBirth` varchar(191) DEFAULT NULL,
  `nationality` varchar(191) DEFAULT NULL,
  `lastLogin` datetime NOT NULL,
  `walletType` varchar(191) DEFAULT NULL,
  `walletAddress` varchar(191) DEFAULT NULL,
  `role` enum('admin','manager','user') NOT NULL DEFAULT 'user',
  `contributed` double DEFAULT NULL,
  `tokenBalance` double DEFAULT NULL,
  `referral` varchar(191) DEFAULT NULL,
  `referralInfo` text,
  `google2fa` int(11) NOT NULL DEFAULT '0',
  `google2fa_secret` text,
  `type` enum('demo','main') NOT NULL DEFAULT 'main',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `status`, `registerMethod`, `social_id`, `mobile`, `dateOfBirth`, `nationality`, `lastLogin`, `walletType`, `walletAddress`, `role`, `contributed`, `tokenBalance`, `referral`, `referralInfo`, `google2fa`, `google2fa_secret`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thiết Trần', '', 'info@antnet.vn', '2021-10-10 00:33:23', '$2y$10$HxbKL3PJ01jD9EuRT/tNU.whBD2MUVwefkLPvF9Mi182Up1JrxcMS', 'active', 'Email', NULL, '+84368537229', NULL, NULL, '2022-05-14 12:29:03', NULL, NULL, 'admin', NULL, NULL, NULL, NULL, 0, NULL, 'main', 'rCYRxcgHfqh59LDLYWmaGndoLztXEnVL8ltvNJNqhIocuy2T0OWs5U6xDAYI', '2021-10-10 00:33:23', '2022-05-14 05:29:03'),
(2, 'Thiết Trần', '0368537229', 'xuanthiet1996@gmail.com', '2021-10-10 02:09:16', '$2y$10$HxbKL3PJ01jD9EuRT/tNU.whBD2MUVwefkLPvF9Mi182Up1JrxcMS', 'active', 'Email', NULL, NULL, NULL, NULL, '2022-04-28 10:29:12', NULL, NULL, 'user', 0.29, 10, NULL, NULL, 0, NULL, 'main', 'dsjgqtFe4Tua3dmODjJKkCiVQCeh3SWBgX3pS4QHkyykEyuJ8lZeWE8Bz5TV', '2021-10-10 01:32:08', '2022-04-28 03:29:12'),
(3, 'Dương Thành Nhân', '0964008603', 'duongnhan2010@gmail.com', '2021-10-20 05:14:31', '$2y$10$MsEpTSkeVI97/Kkf/Vf2vuA3qVsAlSaouMlwjAZDkahmuYn//YyOi', 'active', 'Email', NULL, NULL, NULL, NULL, '2021-10-20 11:13:22', NULL, NULL, 'user', 2030, 70000, NULL, NULL, 0, NULL, 'main', 'dXUPtVWM2jVxKgqMXSefpunKVTwULmxoELgrhcnxct67kTaVTKw69W5bFvbH', '2021-10-20 04:13:12', '2021-10-20 04:18:23'),
(4, 'Godfred sackey', NULL, 'godfredsackeysuccess2001@gmail.com', NULL, '$2y$10$64cIOAShmD9P6whJUsk3Q.2mOF0fM9pWqfbDZG84HROc9JuCILmre', 'active', 'Email', NULL, NULL, NULL, NULL, '2022-02-16 04:34:19', NULL, NULL, 'user', NULL, NULL, NULL, NULL, 0, NULL, 'main', 'qPCv8XaBgt11yReziJZCW5sq9M0OwduG81dIrG9MN8eR9sHMnm1pzdfYqo16', '2022-02-15 21:34:19', '2022-02-15 21:34:19'),
(8, 'nguyen anh khoa', '+84365664356', 'binm8.4356@gmail.com', '2022-04-01 13:52:53', '$2y$10$k0U15QeF.pM6QBqp70UQ6ONunliiMWsatbDf99I8QtOqz/rtoPxIi', 'active', 'Email', NULL, '0365664356', '02/28/2019', '', '2022-05-14 09:21:11', '', '', 'user', NULL, NULL, NULL, NULL, 0, NULL, 'main', 'EU4denurEFFJhPeeWP6kpzSNe5gp6pIqOiwl4Iu5CvbMxyl4eSe1oFtDEuMv', '2022-04-28 12:52:02', '2022-05-14 02:21:11');

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
(1, 1, 1, 1, 1, 'TRUE', 'TRUE', '$2y$10$FG5IubasmTqOohSl9kelNuplGvjn2QKzvzzbsP/ZizXd9S3dMEScm', '2022-04-28 01:15:21', 'btXevkR9pAIy6FUgJ16zFIPdMB1OmpQe9Ttel7htVOhnRvYxnI6zacccAHhKzGsS7', '2021-10-10 00:33:23', '2022-04-27 17:15:21'),
(2, 2, 0, 1, 1, 'TRUE', 'TRUE', NULL, NULL, NULL, '2021-10-10 01:32:08', '2021-10-10 02:09:16'),
(3, 3, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2021-10-20 12:30:06', 'Lj6ZG0rxyAFWwxnyjmN3ate4Ef19J1MrkZUio8tMdVP4TkPa4B0lAkGktGTJijitZ', '2021-10-20 04:13:12', '2021-10-20 04:15:06'),
(4, 4, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2022-02-16 05:49:19', 'BVsfFGN7VdCI1xrDEgkqxU1n00LOt9SOuptCdTCY37ip1JriEW8S3KINthUVzQibf', '2022-02-15 21:34:19', '2022-02-15 21:34:19'),
(5, 5, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2022-04-28 17:57:46', 'Ab2uW0WxNn6RLN7fvhvyoDQsNqt2vAaOeX8vvCugdifCqLCLG8TfuRmSAXMlnNKfh', '2022-04-28 09:41:11', '2022-04-28 09:42:46'),
(6, 6, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2022-04-28 18:45:15', '66kbOChuAPccxB5iyht7C9H6IypbuculAWNWY9SmDf9nJhg3DwbbOWXkQICt1JHCM', '2022-04-28 10:30:15', '2022-04-28 10:30:15'),
(7, 7, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2022-04-28 20:15:22', 'b7bRtUHVCk42lXl71nMbN52DDYmdJDyOVXJnuQPtajkshVsLJVV7naj7PDejiMi1U', '2022-04-28 12:00:22', '2022-04-28 12:00:22'),
(8, 8, 0, 1, 1, 'TRUE', 'TRUE', NULL, '2022-04-28 21:07:02', 'wFPPsUWNEtNCPWGSBaRFN71NSQM9Or3AZ1tjQjGI2LGEsNlkmNQX5mwqVnmYvT7iB', '2022-04-28 12:52:02', '2022-04-28 12:52:02');

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
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translates`
--
ALTER TABLE `translates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1439;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_metas`
--
ALTER TABLE `user_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
