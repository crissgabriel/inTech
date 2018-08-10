-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 Aug 2018 la 16:10
-- Versiune server: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `intech`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-02 09:22:11', '2018-08-02 09:22:11', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/intech-test', 'yes'),
(2, 'home', 'http://localhost/intech-test', 'yes'),
(3, 'blogname', 'inTech test', 'yes'),
(4, 'blogdescription', 'test', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'criss_gabriel@yahoo.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'closed', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:157:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:4:{i:0;s:62:\"D:\\xampp\\htdocs\\inTech-test/wp-content/themes/inTech/style.css\";i:2;s:63:\"D:\\xampp\\htdocs\\inTech-test/wp-content/themes/inTech/footer.php\";i:3;s:62:\"D:\\xampp\\htdocs\\inTech-test/wp-content/themes/inTech/style.css\";i:4;s:0:\"\";}', 'no'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '1', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '1', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '100', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:6:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'nonce_key', 'e7Ev39[U7Hwkf/x/>SZ;MI7z |2HSPJtS `v8`F&~!t Q?j31-d_D=Glh9.bH3@x', 'no'),
(107, 'nonce_salt', '3<E c5N!-VB=*Lh?`kOSz=_k5N7hA>V%Kzow7gRY%e4=>La+ X3.MsC*2%24I%uj', 'no'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:13:{i:1533911008;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533913527;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1533936135;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533945600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533953140;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533974740;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533974750;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533979360;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533979361;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533985540;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533994861;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1536019200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533202800;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, 'auth_key', 'j$o$$>#rX(c3UL$:, X!iV!1$I-u)ob{@eUe!KiC@$4t}B1q>X} l2ytE/O*yik8', 'no'),
(124, 'auth_salt', 'Qv|E~`!zzRkL?lT9.DMx<6y>xfzHjZDcz_y(7<G3zsYj_)uib,tGEGj4PjA3@w;$', 'no'),
(125, 'logged_in_key', 'hVp]~Bic<%26(wr/7i(&Maxr(ZANk_B%fV{N[b.<;LsM+k/6}-&LJu0O9 AJvTZi', 'no'),
(126, 'logged_in_salt', '3(,1BX??1]s?:`|D3`bp!$>.)ETj*)7;<7PWQ*x5vH?In:BQk|o2,x9!UsQCFv&&', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(133, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:23:\"criss_gabriel@yahoo.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533267177;}', 'no'),
(137, 'recently_activated', 'a:3:{s:27:\"woocommerce/woocommerce.php\";i:1533909950;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:1533803106;s:19:\"jetpack/jetpack.php\";i:1533803087;}', 'yes'),
(142, 'acf_version', '5.7.2', 'yes'),
(145, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TXpjNE1UaDhkSGx3WlQxd1pYSnpiMjVoYkh4a1lYUmxQVEl3TVRRdE1EZ3RNakFnTVRRNk1UWTZNams9IjtzOjM6InVybCI7czoyODoiaHR0cDovL2xvY2FsaG9zdC9pbnRlY2gtdGVzdCI7fQ==', 'yes'),
(147, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(151, 'WPLANG', '', 'yes'),
(152, 'new_admin_email', 'criss_gabriel@yahoo.com', 'yes'),
(161, 'current_theme', 'WP Bootstrap Starter', 'yes'),
(162, 'theme_mods_inTech', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:8:\"products\";i:4;s:6:\"footer\";i:3;s:7:\"primary\";i:2;s:13:\"footer-social\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:25:\"wp_bootstrap_starter_logo\";s:64:\"http://localhost/intech-test/wp-content/uploads/2018/08/logo.svg\";s:24:\"header_banner_visibility\";b:1;s:27:\"header_banner_title_setting\";s:0:\"\";s:29:\"header_banner_tagline_setting\";s:0:\"\";s:20:\"preset_style_setting\";s:8:\"opensans\";}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(164, 'triggered_welcomet', '1', 'yes'),
(171, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(208, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533893010;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(337, 'ai1wm_secret_key', '7MU30ZYVeD4L', 'yes'),
(360, 'ai1wm_updater', 'a:0:{}', 'yes'),
(390, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533893017;s:7:\"checked\";a:2:{s:6:\"inTech\";s:5:\"1.0.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(396, 'active_plugins', 'a:3:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:27:\"svg-support/svg-support.php\";}', 'yes'),
(397, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:211:\"<a href=\"http://localhost/intech-test/wp-content/ai1wm-backups/localhost-intech-test-20180810-140651-912.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download localhost</span><em>Size: 52 MB</em></a>\";}', 'yes'),
(398, 'template', 'inTech', 'yes'),
(399, 'stylesheet', 'inTech', 'yes'),
(463, 'woocommerce_store_address', 'Str. Aleea trandafirilor', 'yes'),
(464, 'woocommerce_store_address_2', '', 'yes'),
(465, 'woocommerce_store_city', 'Petrosani', 'yes'),
(466, 'woocommerce_default_country', 'RO:HD', 'yes'),
(467, 'woocommerce_store_postcode', '332016', 'yes'),
(468, 'woocommerce_allowed_countries', 'all', 'yes'),
(469, 'woocommerce_all_except_countries', '', 'yes'),
(470, 'woocommerce_specific_allowed_countries', '', 'yes'),
(471, 'woocommerce_ship_to_countries', '', 'yes'),
(472, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(473, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(474, 'woocommerce_calc_taxes', 'no', 'yes'),
(475, 'woocommerce_enable_coupons', 'yes', 'yes'),
(476, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(477, 'woocommerce_currency', 'RON', 'yes'),
(478, 'woocommerce_currency_pos', 'right_space', 'yes'),
(479, 'woocommerce_price_thousand_sep', '.', 'yes'),
(480, 'woocommerce_price_decimal_sep', ',', 'yes'),
(481, 'woocommerce_price_num_decimals', '2', 'yes'),
(482, 'woocommerce_shop_page_id', '112', 'yes'),
(483, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(484, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(485, 'woocommerce_weight_unit', 'kg', 'yes'),
(486, 'woocommerce_dimension_unit', 'cm', 'yes'),
(487, 'woocommerce_enable_reviews', 'yes', 'yes'),
(488, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(489, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(490, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(491, 'woocommerce_review_rating_required', 'yes', 'no'),
(492, 'woocommerce_manage_stock', 'yes', 'yes'),
(493, 'woocommerce_hold_stock_minutes', '60', 'no'),
(494, 'woocommerce_notify_low_stock', 'yes', 'no'),
(495, 'woocommerce_notify_no_stock', 'yes', 'no'),
(496, 'woocommerce_stock_email_recipient', 'criss_gabriel@yahoo.com', 'no'),
(497, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(498, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(499, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(500, 'woocommerce_stock_format', '', 'yes'),
(501, 'woocommerce_file_download_method', 'force', 'no'),
(502, 'woocommerce_downloads_require_login', 'no', 'no'),
(503, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(504, 'woocommerce_prices_include_tax', 'no', 'yes'),
(505, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(506, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(507, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(508, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(509, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(510, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(511, 'woocommerce_price_display_suffix', '', 'yes'),
(512, 'woocommerce_tax_total_display', 'itemized', 'no'),
(513, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(514, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(515, 'woocommerce_ship_to_destination', 'billing', 'no'),
(516, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(517, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(518, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(519, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(520, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(521, 'woocommerce_registration_generate_username', 'yes', 'no'),
(522, 'woocommerce_registration_generate_password', 'yes', 'no'),
(523, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(524, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(525, 'wp_page_for_privacy_policy', '', 'yes'),
(526, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(527, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(528, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(529, 'woocommerce_trash_pending_orders', '', 'no'),
(530, 'woocommerce_trash_failed_orders', '', 'no'),
(531, 'woocommerce_trash_cancelled_orders', '', 'no'),
(532, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(533, 'woocommerce_email_from_name', 'inTech test', 'no'),
(534, 'woocommerce_email_from_address', 'criss_gabriel@yahoo.com', 'no'),
(535, 'woocommerce_email_header_image', '', 'no'),
(536, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(537, 'woocommerce_email_base_color', '#96588a', 'no'),
(538, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(539, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(540, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(541, 'woocommerce_cart_page_id', '113', 'yes'),
(542, 'woocommerce_checkout_page_id', '114', 'yes'),
(543, 'woocommerce_myaccount_page_id', '115', 'yes'),
(544, 'woocommerce_terms_page_id', '', 'no'),
(545, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(546, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(547, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(548, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(549, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(550, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(551, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(552, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(553, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(554, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(555, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(556, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(557, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(558, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(559, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(560, 'woocommerce_api_enabled', 'no', 'yes'),
(561, 'woocommerce_single_image_width', '600', 'yes'),
(562, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(563, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(564, 'woocommerce_demo_store', 'no', 'no'),
(565, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(566, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(567, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(568, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(570, 'default_product_cat', '19', 'yes'),
(573, 'woocommerce_version', '3.4.4', 'yes'),
(574, 'woocommerce_db_version', '3.4.4', 'yes'),
(575, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(576, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(577, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(578, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(579, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(580, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(581, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(582, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(583, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(584, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(585, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(586, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(587, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(588, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(592, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(593, '_transient_timeout_external_ip_address_::1', '1534406744', 'no'),
(594, '_transient_external_ip_address_::1', '92.86.63.168', 'no'),
(598, 'woocommerce_product_type', 'both', 'yes'),
(599, 'woocommerce_allow_tracking', 'yes', 'yes'),
(601, 'woocommerce_tracker_last_send', '1533801991', 'yes'),
(604, 'woocommerce_ppec_paypal_settings', 'a:17:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:23:\"criss_gabriel@yahoo.com\";s:7:\"enabled\";s:2:\"no\";s:11:\"button_size\";s:10:\"responsive\";s:11:\"environment\";s:4:\"live\";s:12:\"mark_enabled\";s:3:\"yes\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:15:\"api_certificate\";s:0:\"\";s:11:\"api_subject\";s:0:\"\";s:5:\"debug\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:16:\"instant_payments\";s:2:\"no\";s:15:\"require_billing\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:26:\"subtotal_mismatch_behavior\";s:3:\"add\";}', 'yes'),
(605, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(606, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(607, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(608, 'wc_ppec_version', '1.6.1', 'yes'),
(616, 'woocommerce_setup_jetpack_opted_in', '1', 'yes'),
(624, '_transient_timeout_jetpack_file_data_6.4.1', '1536307716', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(625, '_transient_jetpack_file_data_6.4.1', 'a:58:{s:32:\"c22c48d7cfe9d38dff2864cfea64636a\";a:15:{s:4:\"name\";s:20:\"Spelling and Grammar\";s:11:\"description\";s:39:\"Check your spelling, style, and grammar\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"6\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:115:\"after the deadline, afterthedeadline, spell, spellchecker, spelling, grammar, proofreading, style, language, cliche\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"fb5c4814ddc3946a3f22cc838fcb2af3\";a:15:{s:4:\"name\";s:8:\"Carousel\";s:11:\"description\";s:75:\"Display images and galleries in a gorgeous, full-screen browsing experience\";s:14:\"jumpstart_desc\";s:79:\"Brings your photos and images to life as full-size, easily navigable galleries.\";s:4:\"sort\";s:2:\"22\";s:20:\"recommendation_order\";s:2:\"12\";s:10:\"introduced\";s:3:\"1.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:80:\"gallery, carousel, diaporama, slideshow, images, lightbox, exif, metadata, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5813eda53235a9a81a69b1f6a4a15db6\";a:15:{s:4:\"name\";s:13:\"Comment Likes\";s:11:\"description\";s:64:\"Increase visitor engagement by adding a Like button to comments.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"39\";s:20:\"recommendation_order\";s:2:\"17\";s:10:\"introduced\";s:3:\"5.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:37:\"like widget, like button, like, likes\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7ef4ca32a1c84fc10ef50c8293cae5df\";a:15:{s:4:\"name\";s:8:\"Comments\";s:11:\"description\";s:80:\"Let readers use WordPress.com, Twitter, Facebook, or Google+ accounts to comment\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"20\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:53:\"comments, comment, facebook, twitter, google+, social\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"c5331bfc2648dfeeebe486736d79a72c\";a:15:{s:4:\"name\";s:12:\"Contact Form\";s:11:\"description\";s:57:\"Insert a customizable contact form anywhere on your site.\";s:14:\"jumpstart_desc\";s:111:\"Adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.\";s:4:\"sort\";s:2:\"15\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:3:\"1.3\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:18:\"Writing, Jumpstart\";s:25:\"additional_search_queries\";s:44:\"contact, form, grunion, feedback, submission\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"707c77d2e8cb0c12d094e5423c8beda8\";a:15:{s:4:\"name\";s:20:\"Custom content types\";s:11:\"description\";s:74:\"Display different types of content on your site with custom content types.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:72:\"cpt, custom post types, portfolio, portfolios, testimonial, testimonials\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"cd499b1678cfe3aabfc8ca0d3eb7e8b9\";a:15:{s:4:\"name\";s:10:\"Custom CSS\";s:11:\"description\";s:53:\"Tweak your site’s CSS without modifying your theme.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"2\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.7\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:108:\"css, customize, custom, style, editor, less, sass, preprocessor, font, mobile, appearance, theme, stylesheet\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d266d6546645f42cf52a66387699c50\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d436678d5e010ac6b0f157aa1021554\";a:15:{s:4:\"name\";s:21:\"Enhanced Distribution\";s:11:\"description\";s:27:\"Increase reach and traffic.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"5\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"google, seo, firehose, search, broadcast, broadcasting\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c9ff765b826940496a65c0f927a594a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"092b94702bb483a5472578283c2103d6\";a:15:{s:4:\"name\";s:16:\"Google Analytics\";s:11:\"description\";s:56:\"Set up Google Analytics without touching a line of code.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"37\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"4.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:37:\"webmaster, google, analytics, console\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"6bd77e09440df2b63044cf8cb7963773\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"ee1a10e2ef5733ab19eb1eb552d5ecb3\";a:15:{s:4:\"name\";s:19:\"Gravatar Hovercards\";s:11:\"description\";s:58:\"Enable pop-up business cards over commenters’ Gravatars.\";s:14:\"jumpstart_desc\";s:131:\"Let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.\";s:4:\"sort\";s:2:\"11\";s:20:\"recommendation_order\";s:2:\"13\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:20:\"gravatar, hovercards\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"284c08538b0bdc266315b2cf80b9c044\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0ce5c3ac630dea9f41215e48bb0f52f3\";a:15:{s:4:\"name\";s:15:\"Infinite Scroll\";s:11:\"description\";s:53:\"Automatically load new content when a visitor scrolls\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"26\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:33:\"scroll, infinite, infinite scroll\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"87da2858d4f9cadb6a44fdcf32e8d2b5\";a:15:{s:4:\"name\";s:8:\"JSON API\";s:11:\"description\";s:51:\"Allow applications to securely access your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"19\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:19:\"Writing, Developers\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:50:\"api, rest, develop, developers, json, klout, oauth\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"004962cb7cb9ec2b64769ac4df509217\";a:15:{s:4:\"name\";s:14:\"Beautiful Math\";s:11:\"description\";s:57:\"Use LaTeX markup for complex equations and other geekery.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"12\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:47:\"latex, math, equation, equations, formula, code\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7f408184bee8850d439c01322867e72c\";a:15:{s:4:\"name\";s:11:\"Lazy Images\";s:11:\"description\";s:16:\"Lazy load images\";s:14:\"jumpstart_desc\";s:164:\"Lazy-loading images improve your site\'s speed and create a smoother viewing experience. Images will load as visitors scroll down the screen, instead of all at once.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:2:\"14\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:23:\"Appearance, Recommended\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:33:\"mobile, theme, performance, image\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ad914b747f382ae918ed3b37077d4a1\";a:15:{s:4:\"name\";s:5:\"Likes\";s:11:\"description\";s:63:\"Give visitors an easy way to show they appreciate your content.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"23\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:26:\"like, likes, wordpress.com\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b347263e3470979442ebf0514e41e893\";a:15:{s:4:\"name\";s:6:\"Manage\";s:11:\"description\";s:54:\"Manage all of your sites from a centralized dashboard.\";s:14:\"jumpstart_desc\";s:151:\"Helps you remotely manage plugins, turn on automated updates, and more from <a href=\"https://wordpress.com/plugins/\" target=\"_blank\">wordpress.com</a>.\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"3\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:35:\"Centralized Management, Recommended\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:26:\"manage, management, remote\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"589982245aa6f495b72ab7cf57a1a48e\";a:15:{s:4:\"name\";s:8:\"Markdown\";s:11:\"description\";s:50:\"Write posts or pages in plain-text Markdown syntax\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"31\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:12:\"md, markdown\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d3bec8e063d637bc285018241b783725\";a:15:{s:4:\"name\";s:21:\"WordPress.com Toolbar\";s:11:\"description\";s:91:\"Replaces the admin bar with a useful toolbar to quickly manage your site via WordPress.com.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"16\";s:10:\"introduced\";s:3:\"4.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:7:\"General\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:19:\"adminbar, masterbar\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6ab1c3e749bcfba2dedbaebe6c9fc614\";a:15:{s:4:\"name\";s:12:\"Mobile Theme\";s:11:\"description\";s:31:\"Enable the Jetpack Mobile theme\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"21\";s:20:\"recommendation_order\";s:2:\"11\";s:10:\"introduced\";s:3:\"1.8\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:31:\"Appearance, Mobile, Recommended\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:24:\"mobile, theme, minileven\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"b7be7da643ec641511839ecc6afb6def\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d54f83ff429a8a37ace796de98459411\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0f8b373fa12c825162c0b0bc20b8bbdd\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5d7b0750cb34a4a72a44fa67790de639\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"f07fde8db279ffb0116c727df72c6374\";a:15:{s:4:\"name\";s:7:\"Monitor\";s:11:\"description\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:14:\"jumpstart_desc\";s:61:\"Receive immediate notifications if your site goes down, 24/7.\";s:4:\"sort\";s:2:\"28\";s:20:\"recommendation_order\";s:2:\"10\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:37:\"monitor, uptime, downtime, monitoring\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"136a5445a49150db75472862f3d3aefb\";a:15:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:57:\"Receive instant notifications of site comments and likes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:5:\"Other\";s:7:\"feature\";s:7:\"General\";s:25:\"additional_search_queries\";s:62:\"notification, notifications, toolbar, adminbar, push, comments\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"395d8ae651afabb54d1e98440674b384\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4484ac68583fbbaab0ef698cdc986950\";a:15:{s:4:\"name\";s:6:\"Photon\";s:11:\"description\";s:29:\"Serve images from our servers\";s:14:\"jumpstart_desc\";s:141:\"Mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.\";s:4:\"sort\";s:2:\"25\";s:20:\"recommendation_order\";s:1:\"1\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:42:\"Photos and Videos, Appearance, Recommended\";s:7:\"feature\";s:34:\"Recommended, Jumpstart, Appearance\";s:25:\"additional_search_queries\";s:38:\"photon, image, cdn, performance, speed\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"6f30193afa5b1360e3fa2676501b5e3a\";a:15:{s:4:\"name\";s:13:\"Post by email\";s:11:\"description\";s:33:\"Publish posts by sending an email\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"14\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:7:\"Writing\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:20:\"post by email, email\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"3e9f8bd3755d92e8e5d06966a957beb8\";a:15:{s:4:\"name\";s:7:\"Protect\";s:11:\"description\";s:41:\"Block suspicious-looking sign in activity\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"4\";s:10:\"introduced\";s:3:\"3.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:8:\"Security\";s:25:\"additional_search_queries\";s:65:\"security, secure, protection, botnet, brute force, protect, login\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"0cacc8ab2145ad11cb54d181a98aa550\";a:15:{s:4:\"name\";s:9:\"Publicize\";s:11:\"description\";s:27:\"Automated social marketing.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"10\";s:20:\"recommendation_order\";s:1:\"7\";s:10:\"introduced\";s:3:\"2.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:107:\"facebook, twitter, google+, googleplus, google, path, tumblr, linkedin, social, tweet, connections, sharing\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"a528c2f803a92c5c2effa67cd33ab33a\";a:15:{s:4:\"name\";s:20:\"Progressive Web Apps\";s:11:\"description\";s:85:\"Speed up and improve the reliability of your site using the latest in web technology.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"38\";s:20:\"recommendation_order\";s:2:\"18\";s:10:\"introduced\";s:5:\"5.6.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:26:\"manifest, pwa, progressive\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"329b8efce059081d46936ece0c6736b3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"5fdd42d482712fbdaf000b28ea7adce9\";a:15:{s:4:\"name\";s:13:\"Related posts\";s:11:\"description\";s:64:\"Increase page views by showing related content to your visitors.\";s:14:\"jumpstart_desc\";s:113:\"Keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.\";s:4:\"sort\";s:2:\"29\";s:20:\"recommendation_order\";s:1:\"9\";s:10:\"introduced\";s:3:\"2.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:11:\"Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:22:\"related, related posts\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2c5096ef610018e98a8bcccfbea4471e\";a:15:{s:4:\"name\";s:6:\"Search\";s:11:\"description\";s:41:\"Enhanced search, powered by Elasticsearch\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"34\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:6:\"Search\";s:25:\"additional_search_queries\";s:6:\"search\";s:12:\"plan_classes\";s:8:\"business\";}s:32:\"0d81dd7df3ad2f245e84fd4fb66bf829\";a:15:{s:4:\"name\";s:9:\"SEO Tools\";s:11:\"description\";s:50:\"Better results on search engines and social media.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"35\";s:20:\"recommendation_order\";s:2:\"15\";s:10:\"introduced\";s:3:\"4.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:7:\"Traffic\";s:25:\"additional_search_queries\";s:81:\"search engine optimization, social preview, meta description, custom title format\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"32aaa676b3b6c9f3ef22430e1e0bca24\";a:15:{s:4:\"name\";s:7:\"Sharing\";s:11:\"description\";s:37:\"Allow visitors to share your content.\";s:14:\"jumpstart_desc\";s:116:\"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.\";s:4:\"sort\";s:1:\"7\";s:20:\"recommendation_order\";s:1:\"6\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:19:\"Social, Recommended\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:141:\"share, sharing, sharedaddy, buttons, icons, email, facebook, twitter, google+, linkedin, pinterest, pocket, press this, print, reddit, tumblr\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"948472b453cda59b38bb7c37af889af0\";a:15:{s:4:\"name\";s:16:\"Shortcode Embeds\";s:11:\"description\";s:50:\"Embed media from popular sites without any coding.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"3\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:3:\"1.2\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:46:\"Photos and Videos, Social, Writing, Appearance\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:236:\"shortcodes, shortcode, embeds, media, bandcamp, dailymotion, facebook, flickr, google calendars, google maps, google+, polldaddy, recipe, recipes, scribd, slideshare, slideshow, slideshows, soundcloud, ted, twitter, vimeo, vine, youtube\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7d00a6ca0a79fbe893275aaf6ed6ae42\";a:15:{s:4:\"name\";s:16:\"WP.me Shortlinks\";s:11:\"description\";s:54:\"Create short and simple links for all posts and pages.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"8\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:17:\"shortlinks, wp.me\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"372e711395f23c466e04d4fd07f73099\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2ea687cec293289a2a3e5f0459e79768\";a:15:{s:4:\"name\";s:8:\"Sitemaps\";s:11:\"description\";s:50:\"Make it easy for search engines to find your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"13\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.9\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:6:\"Public\";s:11:\"module_tags\";s:20:\"Recommended, Traffic\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:39:\"sitemap, traffic, search, site map, seo\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"2fe9dc2c7389d4f0825a0b23bc8b19d1\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e7cf8a7e0f151ccf7cbdc6d8f118f316\";a:15:{s:4:\"name\";s:14:\"Single Sign On\";s:11:\"description\";s:62:\"Allow users to log into this site using WordPress.com accounts\";s:14:\"jumpstart_desc\";s:98:\"Lets you log in to all your Jetpack-enabled sites with one click using your WordPress.com account.\";s:4:\"sort\";s:2:\"30\";s:20:\"recommendation_order\";s:1:\"5\";s:10:\"introduced\";s:3:\"2.6\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:10:\"Developers\";s:7:\"feature\";s:19:\"Security, Jumpstart\";s:25:\"additional_search_queries\";s:34:\"sso, single sign on, login, log in\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"34fb073ed896af853ed48bd5739240cb\";a:15:{s:4:\"name\";s:10:\"Site Stats\";s:11:\"description\";s:44:\"Collect valuable traffic stats and insights.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:1:\"2\";s:10:\"introduced\";s:3:\"1.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:23:\"Site Stats, Recommended\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:54:\"statistics, tracking, analytics, views, traffic, stats\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"8de0dfff24a17cf0fa0011dfc691a3f3\";a:15:{s:4:\"name\";s:13:\"Subscriptions\";s:11:\"description\";s:87:\"Allow users to subscribe to your posts and comments and receive notifications via email\";s:14:\"jumpstart_desc\";s:126:\"Give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.\";s:4:\"sort\";s:1:\"9\";s:20:\"recommendation_order\";s:1:\"8\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:6:\"Social\";s:7:\"feature\";s:21:\"Engagement, Jumpstart\";s:25:\"additional_search_queries\";s:74:\"subscriptions, subscription, email, follow, followers, subscribers, signup\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"4744f348db095538d3edcacb0ed99c89\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"d89db0d934b39f86065ff58e73594070\";a:15:{s:4:\"name\";s:15:\"Tiled Galleries\";s:11:\"description\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:14:\"jumpstart_desc\";s:61:\"Display image galleries in a variety of elegant arrangements.\";s:4:\"sort\";s:2:\"24\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.1\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:21:\"Appearance, Jumpstart\";s:25:\"additional_search_queries\";s:43:\"gallery, tiles, tiled, grid, mosaic, images\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"01987a7ba5e19786f2992501add8181a\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"20459cc462babfc5a82adf6b34f6e8b1\";a:15:{s:4:\"name\";s:12:\"Data Backups\";s:11:\"description\";s:54:\"Off-site backups, security scans, and automatic fixes.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"32\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"0:1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:5:\"false\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:16:\"Security, Health\";s:25:\"additional_search_queries\";s:28:\"vaultpress, backup, security\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"836245eb0a8f0c5272542305a88940c1\";a:15:{s:4:\"name\";s:17:\"Site verification\";s:11:\"description\";s:58:\"Establish your site\'s authenticity with external services.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"33\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"3.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:10:\"Engagement\";s:25:\"additional_search_queries\";s:56:\"webmaster, seo, google, bing, pinterest, search, console\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"e94397a5c47c1be995eff613e65a674f\";a:15:{s:4:\"name\";s:10:\"VideoPress\";s:11:\"description\";s:27:\"Fast, ad-free video hosting\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"27\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.5\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:5:\"false\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:17:\"Photos and Videos\";s:7:\"feature\";s:7:\"Writing\";s:25:\"additional_search_queries\";s:25:\"video, videos, videopress\";s:12:\"plan_classes\";s:17:\"business, premium\";}s:32:\"032cd76e08467c732ccb026efda0c9cd\";a:15:{s:4:\"name\";s:17:\"Widget Visibility\";s:11:\"description\";s:42:\"Control where widgets appear on your site.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:2:\"17\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"2.4\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:10:\"Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:54:\"widget visibility, logic, conditional, widgets, widget\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"9b3e84beedf2e96f1ac5dd6498d2b1aa\";a:15:{s:4:\"name\";s:21:\"Extra Sidebar Widgets\";s:11:\"description\";s:54:\"Add images, Twitter streams, and more to your sidebar.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"4\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:3:\"1.2\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:2:\"No\";s:13:\"auto_activate\";s:3:\"Yes\";s:11:\"module_tags\";s:18:\"Social, Appearance\";s:7:\"feature\";s:10:\"Appearance\";s:25:\"additional_search_queries\";s:65:\"widget, widgets, facebook, gallery, twitter, gravatar, image, rss\";s:12:\"plan_classes\";s:0:\"\";}s:32:\"7724fd9600745cf93e37cc09282e1a37\";a:15:{s:4:\"name\";s:3:\"Ads\";s:11:\"description\";s:60:\"Earn income by allowing Jetpack to display high quality ads.\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:1:\"1\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:5:\"4.5.0\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:3:\"Yes\";s:13:\"auto_activate\";s:2:\"No\";s:11:\"module_tags\";s:19:\"Traffic, Appearance\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:26:\"advertising, ad codes, ads\";s:12:\"plan_classes\";s:17:\"premium, business\";}s:32:\"5b8f8e5b5a1887e3c0393cb78d5143a3\";a:15:{s:4:\"name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:14:\"jumpstart_desc\";s:0:\"\";s:4:\"sort\";s:0:\"\";s:20:\"recommendation_order\";s:0:\"\";s:10:\"introduced\";s:0:\"\";s:7:\"changed\";s:0:\"\";s:10:\"deactivate\";s:0:\"\";s:4:\"free\";s:0:\"\";s:19:\"requires_connection\";s:0:\"\";s:13:\"auto_activate\";s:0:\"\";s:11:\"module_tags\";s:0:\"\";s:7:\"feature\";s:0:\"\";s:25:\"additional_search_queries\";s:0:\"\";s:12:\"plan_classes\";s:0:\"\";}}', 'no'),
(633, 'do_activate', '0', 'yes'),
(638, '_transient_shipping-transient-version', '1533802134', 'yes'),
(641, '_transient_product_query-transient-version', '1533803273', 'yes'),
(644, '_transient_product-transient-version', '1533803273', 'yes'),
(646, '_transient_timeout_wc_shipping_method_count_0_1533802134', '1536394444', 'no'),
(647, '_transient_wc_shipping_method_count_0_1533802134', '0', 'no'),
(686, 'wc_gateway_ppce_prompt_to_connect', 'PayPal Checkout is almost ready. To get started, <a href=\"http://localhost/intech-test/wp-admin/admin.php?page=wc-settings&#038;tab=checkout&#038;section=ppec_paypal\">connect your PayPal account</a>.', 'yes'),
(687, 'woocommerce_gateway_order', 'a:5:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:11:\"ppec_paypal\";i:4;}', 'yes'),
(690, '_transient_timeout_wc_shipping_method_count_1_1533802134', '1536395010', 'no'),
(691, '_transient_wc_shipping_method_count_1_1533802134', '0', 'no'),
(694, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533909949;s:7:\"checked\";a:7:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.2\";s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.73\";s:9:\"hello.php\";s:3:\"1.7\";s:27:\"svg-support/svg-support.php\";s:6:\"2.3.15\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.4\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.73\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.73.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1268186\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1268186\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1876524\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1876524\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"svg-support/svg-support.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/svg-support\";s:4:\"slug\";s:11:\"svg-support\";s:6:\"plugin\";s:27:\"svg-support/svg-support.php\";s:11:\"new_version\";s:6:\"2.3.15\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/svg-support/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/svg-support.2.3.15.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:64:\"https://ps.w.org/svg-support/assets/icon-256x256.png?rev=1417738\";s:2:\"1x\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";s:3:\"svg\";s:56:\"https://ps.w.org/svg-support/assets/icon.svg?rev=1417738\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/svg-support/assets/banner-1544x500.jpg?rev=1215377\";s:2:\"1x\";s:66:\"https://ps.w.org/svg-support/assets/banner-772x250.jpg?rev=1215377\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.4\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.1\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1900204\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1900204\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(695, 'wc_gateway_ppec_prompt_to_connect_message_dismissed', 'yes', 'yes'),
(741, 'jetpack_constants_sync_checksum', 'a:31:{s:16:\"EMPTY_TRASH_DAYS\";i:-1821685917;s:17:\"WP_POST_REVISIONS\";i:-33796979;s:26:\"AUTOMATIC_UPDATER_DISABLED\";i:634125391;s:7:\"ABSPATH\";i:891250067;s:14:\"WP_CONTENT_DIR\";i:-1048049549;s:9:\"FS_METHOD\";i:634125391;s:18:\"DISALLOW_FILE_EDIT\";i:634125391;s:18:\"DISALLOW_FILE_MODS\";i:634125391;s:19:\"WP_AUTO_UPDATE_CORE\";i:634125391;s:22:\"WP_HTTP_BLOCK_EXTERNAL\";i:634125391;s:19:\"WP_ACCESSIBLE_HOSTS\";i:634125391;s:16:\"JETPACK__VERSION\";i:926662740;s:12:\"IS_PRESSABLE\";i:634125391;s:15:\"DISABLE_WP_CRON\";i:634125391;s:17:\"ALTERNATE_WP_CRON\";i:634125391;s:20:\"WP_CRON_LOCK_TIMEOUT\";i:-300109018;s:11:\"PHP_VERSION\";i:-2064091900;s:15:\"WP_MEMORY_LIMIT\";i:-1229557325;s:19:\"WP_MAX_MEMORY_LIMIT\";i:-272697640;s:14:\"WC_PLUGIN_FILE\";i:1007932384;s:10:\"WC_ABSPATH\";i:-1541944371;s:18:\"WC_PLUGIN_BASENAME\";i:1149093810;s:10:\"WC_VERSION\";i:444704162;s:19:\"WOOCOMMERCE_VERSION\";i:444704162;s:21:\"WC_ROUNDING_PRECISION\";i:498629140;s:25:\"WC_DISCOUNT_ROUNDING_MODE\";i:450215437;s:20:\"WC_TAX_ROUNDING_MODE\";i:-2082672713;s:12:\"WC_DELIMITER\";i:-1839055742;s:10:\"WC_LOG_DIR\";i:-281828907;s:22:\"WC_SESSION_CACHE_GROUP\";i:-15988308;s:22:\"WC_TEMPLATE_DEBUG_MODE\";i:734881840;}', 'yes'),
(744, 'jetpack_sync_https_history_main_network_site_url', 'a:1:{i:0;s:4:\"http\";}', 'yes'),
(745, 'jetpack_sync_https_history_site_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(746, 'jetpack_sync_https_history_home_url', 'a:2:{i:0;s:4:\"http\";i:1;s:4:\"http\";}', 'yes'),
(779, 'jetpack_callables_sync_checksum', 'a:30:{s:18:\"wp_max_upload_size\";i:-828975064;s:15:\"is_main_network\";i:734881840;s:13:\"is_multi_site\";i:734881840;s:17:\"main_network_site\";i:710549758;s:8:\"site_url\";i:710549758;s:8:\"home_url\";i:710549758;s:16:\"single_user_site\";i:-33796979;s:7:\"updates\";i:-869524094;s:28:\"has_file_system_write_access\";i:-33796979;s:21:\"is_version_controlled\";i:734881840;s:10:\"taxonomies\";i:319033480;s:10:\"post_types\";i:-483763257;s:18:\"post_type_features\";i:-157731927;s:10:\"shortcodes\";i:587588585;s:27:\"rest_api_allowed_post_types\";i:-13528774;s:32:\"rest_api_allowed_public_metadata\";i:223132457;s:24:\"sso_is_two_step_required\";i:734881840;s:26:\"sso_should_hide_login_form\";i:734881840;s:18:\"sso_match_by_email\";i:-33796979;s:21:\"sso_new_user_override\";i:734881840;s:29:\"sso_bypass_default_login_form\";i:734881840;s:10:\"wp_version\";i:1499136715;s:11:\"get_plugins\";i:263405177;s:24:\"get_plugins_action_links\";i:223132457;s:14:\"active_modules\";i:223132457;s:16:\"hosting_provider\";i:769900095;s:6:\"locale\";i:110763218;s:13:\"site_icon_url\";i:-181422408;s:5:\"roles\";i:-2040273932;s:8:\"timezone\";i:-486461887;}', 'no'),
(780, 'jpsq_sync_checkout', '0:0', 'no'),
(806, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(808, 'category_children', 'a:0:{}', 'yes'),
(810, 'product_cat_children', 'a:0:{}', 'yes'),
(811, '_transient_timeout_wc_term_counts', '1536397295', 'no'),
(812, '_transient_wc_term_counts', 'a:13:{i:29;s:1:\"6\";i:19;s:1:\"0\";i:27;s:0:\"\";i:23;s:0:\"\";i:32;s:0:\"\";i:22;s:0:\"\";i:21;s:0:\"\";i:31;s:0:\"\";i:28;s:0:\"\";i:20;s:1:\"6\";i:25;s:0:\"\";i:26;s:0:\"\";i:24;s:0:\"\";}', 'no'),
(857, '_transient_timeout_acf_plugin_updates', '1533979415', 'no'),
(858, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:0:{}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.2\";}}', 'no'),
(878, '_transient_timeout__woocommerce_helper_subscriptions', '1533910843', 'no'),
(879, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(880, '_site_transient_timeout_theme_roots', '1533911743', 'no'),
(881, '_site_transient_theme_roots', 'a:2:{s:6:\"inTech\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(882, '_transient_timeout__woocommerce_helper_updates', '1533953143', 'no'),
(883, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1533909943;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(884, '_transient_timeout_plugin_slugs', '1533996351', 'no'),
(885, '_transient_plugin_slugs', 'a:7:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:19:\"akismet/akismet.php\";i:2;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:3;s:9:\"hello.php\";i:4;s:27:\"svg-support/svg-support.php\";i:5;s:27:\"woocommerce/woocommerce.php\";i:6;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";}', 'no'),
(886, '_transient_is_multi_author', '0', 'yes');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-parts/home-page-acf.php'),
(2, 4, '_menu_item_type', 'custom'),
(3, 4, '_menu_item_menu_item_parent', '0'),
(4, 4, '_menu_item_object_id', '4'),
(5, 4, '_menu_item_object', 'custom'),
(6, 4, '_menu_item_target', ''),
(7, 4, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(8, 4, '_menu_item_xfn', ''),
(9, 4, '_menu_item_url', 'tel:(800)%20508-2265'),
(47, 2, '_edit_last', '1'),
(48, 2, '_edit_lock', '1533909785:1'),
(51, 12, '_edit_lock', '1533203280:1'),
(55, 15, '_wp_attached_file', '2018/08/cropped-icon.jpg'),
(56, 15, '_wp_attachment_context', 'site-icon'),
(57, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/08/cropped-icon.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-icon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-icon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-icon-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-icon-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-icon-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-icon-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 12, '_wp_trash_meta_status', 'publish'),
(59, 12, '_wp_trash_meta_time', '1533203288'),
(60, 16, '_wp_trash_meta_status', 'publish'),
(61, 16, '_wp_trash_meta_time', '1533203553'),
(62, 17, '_menu_item_type', 'custom'),
(63, 17, '_menu_item_menu_item_parent', '0'),
(64, 17, '_menu_item_object_id', '17'),
(65, 17, '_menu_item_object', 'custom'),
(66, 17, '_menu_item_target', ''),
(67, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 17, '_menu_item_xfn', ''),
(69, 17, '_menu_item_url', '#'),
(71, 18, '_menu_item_type', 'custom'),
(72, 18, '_menu_item_menu_item_parent', '0'),
(73, 18, '_menu_item_object_id', '18'),
(74, 18, '_menu_item_object', 'custom'),
(75, 18, '_menu_item_target', ''),
(76, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 18, '_menu_item_xfn', ''),
(78, 18, '_menu_item_url', '#'),
(80, 19, '_menu_item_type', 'custom'),
(81, 19, '_menu_item_menu_item_parent', '0'),
(82, 19, '_menu_item_object_id', '19'),
(83, 19, '_menu_item_object', 'custom'),
(84, 19, '_menu_item_target', ''),
(85, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 19, '_menu_item_xfn', ''),
(87, 19, '_menu_item_url', '#'),
(89, 20, '_menu_item_type', 'custom'),
(90, 20, '_menu_item_menu_item_parent', '0'),
(91, 20, '_menu_item_object_id', '20'),
(92, 20, '_menu_item_object', 'custom'),
(93, 20, '_menu_item_target', ''),
(94, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(95, 20, '_menu_item_xfn', ''),
(96, 20, '_menu_item_url', '#'),
(98, 21, '_menu_item_type', 'custom'),
(99, 21, '_menu_item_menu_item_parent', '0'),
(100, 21, '_menu_item_object_id', '21'),
(101, 21, '_menu_item_object', 'custom'),
(102, 21, '_menu_item_target', ''),
(103, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(104, 21, '_menu_item_xfn', ''),
(105, 21, '_menu_item_url', '#'),
(107, 22, '_menu_item_type', 'custom'),
(108, 22, '_menu_item_menu_item_parent', '0'),
(109, 22, '_menu_item_object_id', '22'),
(110, 22, '_menu_item_object', 'custom'),
(111, 22, '_menu_item_target', ''),
(112, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(113, 22, '_menu_item_xfn', ''),
(114, 22, '_menu_item_url', '#'),
(116, 23, '_menu_item_type', 'custom'),
(117, 23, '_menu_item_menu_item_parent', '0'),
(118, 23, '_menu_item_object_id', '23'),
(119, 23, '_menu_item_object', 'custom'),
(120, 23, '_menu_item_target', ''),
(121, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 23, '_menu_item_xfn', ''),
(123, 23, '_menu_item_url', '#'),
(125, 24, '_menu_item_type', 'custom'),
(126, 24, '_menu_item_menu_item_parent', '0'),
(127, 24, '_menu_item_object_id', '24'),
(128, 24, '_menu_item_object', 'custom'),
(129, 24, '_menu_item_target', ''),
(130, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 24, '_menu_item_xfn', ''),
(132, 24, '_menu_item_url', '#'),
(134, 25, '_menu_item_type', 'custom'),
(135, 25, '_menu_item_menu_item_parent', '0'),
(136, 25, '_menu_item_object_id', '25'),
(137, 25, '_menu_item_object', 'custom'),
(138, 25, '_menu_item_target', ''),
(139, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 25, '_menu_item_xfn', ''),
(141, 25, '_menu_item_url', '#'),
(143, 26, '_menu_item_type', 'custom'),
(144, 26, '_menu_item_menu_item_parent', '0'),
(145, 26, '_menu_item_object_id', '26'),
(146, 26, '_menu_item_object', 'custom'),
(147, 26, '_menu_item_target', ''),
(148, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 26, '_menu_item_xfn', ''),
(150, 26, '_menu_item_url', '#'),
(152, 27, '_menu_item_type', 'custom'),
(153, 27, '_menu_item_menu_item_parent', '0'),
(154, 27, '_menu_item_object_id', '27'),
(155, 27, '_menu_item_object', 'custom'),
(156, 27, '_menu_item_target', ''),
(157, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 27, '_menu_item_xfn', ''),
(159, 27, '_menu_item_url', '#'),
(161, 28, '_menu_item_type', 'custom'),
(162, 28, '_menu_item_menu_item_parent', '0'),
(163, 28, '_menu_item_object_id', '28'),
(164, 28, '_menu_item_object', 'custom'),
(165, 28, '_menu_item_target', ''),
(166, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 28, '_menu_item_xfn', ''),
(168, 28, '_menu_item_url', '#'),
(170, 29, '_menu_item_type', 'custom'),
(171, 29, '_menu_item_menu_item_parent', '0'),
(172, 29, '_menu_item_object_id', '29'),
(173, 29, '_menu_item_object', 'custom'),
(174, 29, '_menu_item_target', ''),
(175, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 29, '_menu_item_xfn', ''),
(177, 29, '_menu_item_url', '#'),
(179, 30, '_menu_item_type', 'custom'),
(180, 30, '_menu_item_menu_item_parent', '0'),
(181, 30, '_menu_item_object_id', '30'),
(182, 30, '_menu_item_object', 'custom'),
(183, 30, '_menu_item_target', ''),
(184, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 30, '_menu_item_xfn', ''),
(186, 30, '_menu_item_url', '#'),
(188, 31, '_menu_item_type', 'custom'),
(189, 31, '_menu_item_menu_item_parent', '0'),
(190, 31, '_menu_item_object_id', '31'),
(191, 31, '_menu_item_object', 'custom'),
(192, 31, '_menu_item_target', ''),
(193, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(194, 31, '_menu_item_xfn', ''),
(195, 31, '_menu_item_url', '#'),
(197, 2, 'inline_featured_image', '0'),
(198, 33, '_edit_last', '1'),
(199, 33, '_edit_lock', '1533479780:1'),
(200, 2, 'banner', '1'),
(201, 2, '_banner', 'field_5b630a0622d1e'),
(202, 32, 'banner', ''),
(203, 32, '_banner', 'field_5b630a0622d1e'),
(206, 2, 'banner_0_background', '87'),
(207, 2, '_banner_0_background', 'field_5b630a2522d1f'),
(208, 2, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(209, 2, '_banner_0_left_heading', 'field_5b630a3422d20'),
(210, 2, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(211, 2, '_banner_0_left_text', 'field_5b630a4922d21'),
(212, 2, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(213, 2, '_banner_0_left_button', 'field_5b630a5122d22'),
(214, 40, 'banner', '1'),
(215, 40, '_banner', 'field_5b630a0622d1e'),
(216, 40, 'banner_0_background', '39'),
(217, 40, '_banner_0_background', 'field_5b630a2522d1f'),
(218, 40, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(219, 40, '_banner_0_left_heading', 'field_5b630a3422d20'),
(220, 40, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(221, 40, '_banner_0_left_text', 'field_5b630a4922d21'),
(222, 40, 'banner_0_left_button', '<a href=\"#\" class=\"btn green=btn\">Submit</a>'),
(223, 40, '_banner_0_left_button', 'field_5b630a5122d22'),
(224, 41, 'banner', '1'),
(225, 41, '_banner', 'field_5b630a0622d1e'),
(226, 41, 'banner_0_background', '39'),
(227, 41, '_banner_0_background', 'field_5b630a2522d1f'),
(228, 41, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(229, 41, '_banner_0_left_heading', 'field_5b630a3422d20'),
(230, 41, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(231, 41, '_banner_0_left_text', 'field_5b630a4922d21'),
(232, 41, 'banner_0_left_button', '<a href=\"#\" class=\"btn green=btn\">Submit</a>'),
(233, 41, '_banner_0_left_button', 'field_5b630a5122d22'),
(234, 42, 'banner', '1'),
(235, 42, '_banner', 'field_5b630a0622d1e'),
(236, 42, 'banner_0_background', '39'),
(237, 42, '_banner_0_background', 'field_5b630a2522d1f'),
(238, 42, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(239, 42, '_banner_0_left_heading', 'field_5b630a3422d20'),
(240, 42, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(241, 42, '_banner_0_left_text', 'field_5b630a4922d21'),
(242, 42, 'banner_0_left_button', '<a href=\"#\" class=\"btn green=btn\">Submit</a>'),
(243, 42, '_banner_0_left_button', 'field_5b630a5122d22'),
(244, 43, '_menu_item_type', 'post_type'),
(245, 43, '_menu_item_menu_item_parent', '0'),
(246, 43, '_menu_item_object_id', '2'),
(247, 43, '_menu_item_object', 'page'),
(248, 43, '_menu_item_target', ''),
(249, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(250, 43, '_menu_item_xfn', ''),
(251, 43, '_menu_item_url', ''),
(253, 44, 'banner', '1'),
(254, 44, '_banner', 'field_5b630a0622d1e'),
(255, 44, 'banner_0_background', '39'),
(256, 44, '_banner_0_background', 'field_5b630a2522d1f'),
(257, 44, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(258, 44, '_banner_0_left_heading', 'field_5b630a3422d20'),
(259, 44, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(260, 44, '_banner_0_left_text', 'field_5b630a4922d21'),
(261, 44, 'banner_0_left_button', '<a href=\"#\" class=\"btn green-btn\">Submit</a>'),
(262, 44, '_banner_0_left_button', 'field_5b630a5122d22'),
(263, 45, '_wp_trash_meta_status', 'publish'),
(264, 45, '_wp_trash_meta_time', '1533221295'),
(265, 46, 'banner', '1'),
(266, 46, '_banner', 'field_5b630a0622d1e'),
(267, 46, 'banner_0_background', '39'),
(268, 46, '_banner_0_background', 'field_5b630a2522d1f'),
(269, 46, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(270, 46, '_banner_0_left_heading', 'field_5b630a3422d20'),
(271, 46, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(272, 46, '_banner_0_left_text', 'field_5b630a4922d21'),
(273, 46, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-default\">Submit</a>'),
(274, 46, '_banner_0_left_button', 'field_5b630a5122d22'),
(275, 47, 'banner', '1'),
(276, 47, '_banner', 'field_5b630a0622d1e'),
(277, 47, 'banner_0_background', '39'),
(278, 47, '_banner_0_background', 'field_5b630a2522d1f'),
(279, 47, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(280, 47, '_banner_0_left_heading', 'field_5b630a3422d20'),
(281, 47, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(282, 47, '_banner_0_left_text', 'field_5b630a4922d21'),
(283, 47, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary\">Submit</a>'),
(284, 47, '_banner_0_left_button', 'field_5b630a5122d22'),
(289, 50, '_wp_trash_meta_status', 'publish'),
(290, 50, '_wp_trash_meta_time', '1533272399'),
(291, 51, 'banner', '1'),
(292, 51, '_banner', 'field_5b630a0622d1e'),
(293, 51, 'banner_0_background', '39'),
(294, 51, '_banner_0_background', 'field_5b630a2522d1f'),
(295, 51, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(296, 51, '_banner_0_left_heading', 'field_5b630a3422d20'),
(297, 51, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(298, 51, '_banner_0_left_text', 'field_5b630a4922d21'),
(299, 51, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(300, 51, '_banner_0_left_button', 'field_5b630a5122d22'),
(301, 52, 'banner', '1'),
(302, 52, '_banner', 'field_5b630a0622d1e'),
(303, 52, 'banner_0_background', '39'),
(304, 52, '_banner_0_background', 'field_5b630a2522d1f'),
(305, 52, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(306, 52, '_banner_0_left_heading', 'field_5b630a3422d20'),
(307, 52, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(308, 52, '_banner_0_left_text', 'field_5b630a4922d21'),
(309, 52, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(310, 52, '_banner_0_left_button', 'field_5b630a5122d22'),
(311, 53, 'banner', '1'),
(312, 53, '_banner', 'field_5b630a0622d1e'),
(313, 53, 'banner_0_background', '39'),
(314, 53, '_banner_0_background', 'field_5b630a2522d1f'),
(315, 53, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(316, 53, '_banner_0_left_heading', 'field_5b630a3422d20'),
(317, 53, 'banner_0_left_text', '<p>Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.</p>'),
(318, 53, '_banner_0_left_text', 'field_5b630a4922d21'),
(319, 53, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(320, 53, '_banner_0_left_button', 'field_5b630a5122d22'),
(321, 54, 'banner', '1'),
(322, 54, '_banner', 'field_5b630a0622d1e'),
(323, 54, 'banner_0_background', '39'),
(324, 54, '_banner_0_background', 'field_5b630a2522d1f'),
(325, 54, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(326, 54, '_banner_0_left_heading', 'field_5b630a3422d20'),
(327, 54, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(328, 54, '_banner_0_left_text', 'field_5b630a4922d21'),
(329, 54, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(330, 54, '_banner_0_left_button', 'field_5b630a5122d22'),
(331, 55, '_menu_item_type', 'custom'),
(332, 55, '_menu_item_menu_item_parent', '0'),
(333, 55, '_menu_item_object_id', '55'),
(334, 55, '_menu_item_object', 'custom'),
(335, 55, '_menu_item_target', '_blank'),
(336, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(337, 55, '_menu_item_xfn', ''),
(338, 55, '_menu_item_url', 'https://twitter.com/insegment'),
(340, 56, '_menu_item_type', 'custom'),
(341, 56, '_menu_item_menu_item_parent', '0'),
(342, 56, '_menu_item_object_id', '56'),
(343, 56, '_menu_item_object', 'custom'),
(344, 56, '_menu_item_target', '_blank'),
(345, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(346, 56, '_menu_item_xfn', ''),
(347, 56, '_menu_item_url', 'https://www.linkedin.com/company/insegment'),
(349, 57, '_menu_item_type', 'custom'),
(350, 57, '_menu_item_menu_item_parent', '0'),
(351, 57, '_menu_item_object_id', '57'),
(352, 57, '_menu_item_object', 'custom'),
(353, 57, '_menu_item_target', '_blank'),
(354, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(355, 57, '_menu_item_xfn', ''),
(356, 57, '_menu_item_url', 'https://www.youtube.com/user/inSegment'),
(358, 58, '_menu_item_type', 'custom'),
(359, 58, '_menu_item_menu_item_parent', '0'),
(360, 58, '_menu_item_object_id', '58'),
(361, 58, '_menu_item_object', 'custom'),
(362, 58, '_menu_item_target', '_blank'),
(363, 58, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(364, 58, '_menu_item_xfn', ''),
(365, 58, '_menu_item_url', 'https://www.facebook.com/inSegment'),
(369, 60, '_edit_last', '1'),
(370, 60, '_edit_lock', '1533360291:1'),
(377, 2, 'content_slider_0_img', '95'),
(378, 2, '_content_slider_0_img', 'field_5b641215938e5'),
(379, 2, 'content_slider_1_img', '96'),
(380, 2, '_content_slider_1_img', 'field_5b641215938e5'),
(381, 2, 'content_slider_2_img', '97'),
(382, 2, '_content_slider_2_img', 'field_5b641215938e5'),
(383, 2, 'content_slider', '3'),
(384, 2, '_content_slider', 'field_5b6411d5938e4'),
(385, 66, 'banner', '1'),
(386, 66, '_banner', 'field_5b630a0622d1e'),
(387, 66, 'banner_0_background', '39'),
(388, 66, '_banner_0_background', 'field_5b630a2522d1f'),
(389, 66, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(390, 66, '_banner_0_left_heading', 'field_5b630a3422d20'),
(391, 66, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(392, 66, '_banner_0_left_text', 'field_5b630a4922d21'),
(393, 66, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(394, 66, '_banner_0_left_button', 'field_5b630a5122d22'),
(395, 66, 'content_slider_0_img', '63'),
(396, 66, '_content_slider_0_img', 'field_5b641215938e5'),
(397, 66, 'content_slider_1_img', '64'),
(398, 66, '_content_slider_1_img', 'field_5b641215938e5'),
(399, 66, 'content_slider_2_img', '65'),
(400, 66, '_content_slider_2_img', 'field_5b641215938e5'),
(401, 66, 'content_slider', '3'),
(402, 66, '_content_slider', 'field_5b6411d5938e4'),
(403, 2, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(404, 2, '_cta_0_heading', 'field_5b6429f828de4'),
(405, 2, 'cta', '1'),
(406, 2, '_cta', 'field_5b6429e528de3'),
(407, 69, 'banner', '1'),
(408, 69, '_banner', 'field_5b630a0622d1e'),
(409, 69, 'banner_0_background', '39'),
(410, 69, '_banner_0_background', 'field_5b630a2522d1f'),
(411, 69, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(412, 69, '_banner_0_left_heading', 'field_5b630a3422d20'),
(413, 69, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(414, 69, '_banner_0_left_text', 'field_5b630a4922d21'),
(415, 69, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(416, 69, '_banner_0_left_button', 'field_5b630a5122d22'),
(417, 69, 'content_slider_0_img', '63'),
(418, 69, '_content_slider_0_img', 'field_5b641215938e5'),
(419, 69, 'content_slider_1_img', '64'),
(420, 69, '_content_slider_1_img', 'field_5b641215938e5'),
(421, 69, 'content_slider_2_img', '65'),
(422, 69, '_content_slider_2_img', 'field_5b641215938e5'),
(423, 69, 'content_slider', '3'),
(424, 69, '_content_slider', 'field_5b6411d5938e4'),
(425, 69, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(426, 69, '_cta_0_heading', 'field_5b6429f828de4'),
(427, 69, 'cta', '1'),
(428, 69, '_cta', 'field_5b6429e528de3'),
(441, 2, 'cta_0_cta_products_0_img', '73'),
(442, 2, '_cta_0_cta_products_0_img', 'field_5b653973b0ce3'),
(443, 2, 'cta_0_cta_products_0_title', '<h4>Phone</h4>'),
(444, 2, '_cta_0_cta_products_0_title', 'field_5b653987b0ce4'),
(445, 2, 'cta_0_cta_products_1_img', '74'),
(446, 2, '_cta_0_cta_products_1_img', 'field_5b653973b0ce3'),
(447, 2, 'cta_0_cta_products_1_title', '<h4>Tablet</h4>'),
(448, 2, '_cta_0_cta_products_1_title', 'field_5b653987b0ce4'),
(449, 2, 'cta_0_cta_products_2_img', '75'),
(450, 2, '_cta_0_cta_products_2_img', 'field_5b653973b0ce3'),
(451, 2, 'cta_0_cta_products_2_title', '<h4>Laptop</h4>'),
(452, 2, '_cta_0_cta_products_2_title', 'field_5b653987b0ce4'),
(453, 2, 'cta_0_cta_products_3_img', '76'),
(454, 2, '_cta_0_cta_products_3_img', 'field_5b653973b0ce3'),
(455, 2, 'cta_0_cta_products_3_title', '<h4>MP3</h4>'),
(456, 2, '_cta_0_cta_products_3_title', 'field_5b653987b0ce4'),
(457, 2, 'cta_0_cta_products_4_img', '77'),
(458, 2, '_cta_0_cta_products_4_img', 'field_5b653973b0ce3'),
(459, 2, 'cta_0_cta_products_4_title', '<h4>GPs</h4>'),
(460, 2, '_cta_0_cta_products_4_title', 'field_5b653987b0ce4'),
(461, 2, 'cta_0_cta_products_5_img', '78'),
(462, 2, '_cta_0_cta_products_5_img', 'field_5b653973b0ce3'),
(463, 2, 'cta_0_cta_products_5_title', '<h4>Camera</h4>'),
(464, 2, '_cta_0_cta_products_5_title', 'field_5b653987b0ce4'),
(465, 2, 'cta_0_cta_products', '6'),
(466, 2, '_cta_0_cta_products', 'field_5b653953b0ce2'),
(467, 79, 'banner', '1'),
(468, 79, '_banner', 'field_5b630a0622d1e'),
(469, 79, 'banner_0_background', '39'),
(470, 79, '_banner_0_background', 'field_5b630a2522d1f'),
(471, 79, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(472, 79, '_banner_0_left_heading', 'field_5b630a3422d20'),
(473, 79, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(474, 79, '_banner_0_left_text', 'field_5b630a4922d21'),
(475, 79, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(476, 79, '_banner_0_left_button', 'field_5b630a5122d22'),
(477, 79, 'content_slider_0_img', '63'),
(478, 79, '_content_slider_0_img', 'field_5b641215938e5'),
(479, 79, 'content_slider_1_img', '64'),
(480, 79, '_content_slider_1_img', 'field_5b641215938e5'),
(481, 79, 'content_slider_2_img', '65'),
(482, 79, '_content_slider_2_img', 'field_5b641215938e5'),
(483, 79, 'content_slider', '3'),
(484, 79, '_content_slider', 'field_5b6411d5938e4'),
(485, 79, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(486, 79, '_cta_0_heading', 'field_5b6429f828de4'),
(487, 79, 'cta', '1'),
(488, 79, '_cta', 'field_5b6429e528de3'),
(489, 79, 'cta_0_cta_products_0_img', '73'),
(490, 79, '_cta_0_cta_products_0_img', 'field_5b653973b0ce3'),
(491, 79, 'cta_0_cta_products_0_title', '<h4>Phone</h4>'),
(492, 79, '_cta_0_cta_products_0_title', 'field_5b653987b0ce4'),
(493, 79, 'cta_0_cta_products_1_img', '74'),
(494, 79, '_cta_0_cta_products_1_img', 'field_5b653973b0ce3'),
(495, 79, 'cta_0_cta_products_1_title', '<h4>Tablet</h4>'),
(496, 79, '_cta_0_cta_products_1_title', 'field_5b653987b0ce4'),
(497, 79, 'cta_0_cta_products_2_img', '75'),
(498, 79, '_cta_0_cta_products_2_img', 'field_5b653973b0ce3'),
(499, 79, 'cta_0_cta_products_2_title', '<h4>Laptop</h4>'),
(500, 79, '_cta_0_cta_products_2_title', 'field_5b653987b0ce4'),
(501, 79, 'cta_0_cta_products_3_img', '76'),
(502, 79, '_cta_0_cta_products_3_img', 'field_5b653973b0ce3'),
(503, 79, 'cta_0_cta_products_3_title', '<h4>MP3</h4>'),
(504, 79, '_cta_0_cta_products_3_title', 'field_5b653987b0ce4'),
(505, 79, 'cta_0_cta_products_4_img', '77'),
(506, 79, '_cta_0_cta_products_4_img', 'field_5b653973b0ce3'),
(507, 79, 'cta_0_cta_products_4_title', '<h4>GPs</h4>'),
(508, 79, '_cta_0_cta_products_4_title', 'field_5b653987b0ce4'),
(509, 79, 'cta_0_cta_products_5_img', '78'),
(510, 79, '_cta_0_cta_products_5_img', 'field_5b653973b0ce3'),
(511, 79, 'cta_0_cta_products_5_title', '<h4>Camera</h4>'),
(512, 79, '_cta_0_cta_products_5_title', 'field_5b653987b0ce4'),
(513, 79, 'cta_0_cta_products', '6'),
(514, 79, '_cta_0_cta_products', 'field_5b653953b0ce2'),
(515, 2, 'cta_products_0_img', '88'),
(516, 2, '_cta_products_0_img', 'field_5b653dcb86eb8'),
(517, 2, 'cta_products_0_title', '<h4>Phone</h4>'),
(518, 2, '_cta_products_0_title', 'field_5b653dd686eb9'),
(519, 2, 'cta_products', '6'),
(520, 2, '_cta_products', 'field_5b653db886eb7'),
(521, 83, 'banner', '1'),
(522, 83, '_banner', 'field_5b630a0622d1e'),
(523, 83, 'banner_0_background', '39'),
(524, 83, '_banner_0_background', 'field_5b630a2522d1f'),
(525, 83, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(526, 83, '_banner_0_left_heading', 'field_5b630a3422d20'),
(527, 83, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(528, 83, '_banner_0_left_text', 'field_5b630a4922d21'),
(529, 83, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(530, 83, '_banner_0_left_button', 'field_5b630a5122d22'),
(531, 83, 'content_slider_0_img', '63'),
(532, 83, '_content_slider_0_img', 'field_5b641215938e5'),
(533, 83, 'content_slider_1_img', '64'),
(534, 83, '_content_slider_1_img', 'field_5b641215938e5'),
(535, 83, 'content_slider_2_img', '65'),
(536, 83, '_content_slider_2_img', 'field_5b641215938e5'),
(537, 83, 'content_slider', '3'),
(538, 83, '_content_slider', 'field_5b6411d5938e4'),
(539, 83, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(540, 83, '_cta_0_heading', 'field_5b6429f828de4'),
(541, 83, 'cta', '1'),
(542, 83, '_cta', 'field_5b6429e528de3'),
(543, 83, 'cta_0_cta_products_0_img', '73'),
(544, 83, '_cta_0_cta_products_0_img', 'field_5b653973b0ce3'),
(545, 83, 'cta_0_cta_products_0_title', '<h4>Phone</h4>'),
(546, 83, '_cta_0_cta_products_0_title', 'field_5b653987b0ce4'),
(547, 83, 'cta_0_cta_products_1_img', '74'),
(548, 83, '_cta_0_cta_products_1_img', 'field_5b653973b0ce3'),
(549, 83, 'cta_0_cta_products_1_title', '<h4>Tablet</h4>'),
(550, 83, '_cta_0_cta_products_1_title', 'field_5b653987b0ce4'),
(551, 83, 'cta_0_cta_products_2_img', '75'),
(552, 83, '_cta_0_cta_products_2_img', 'field_5b653973b0ce3'),
(553, 83, 'cta_0_cta_products_2_title', '<h4>Laptop</h4>'),
(554, 83, '_cta_0_cta_products_2_title', 'field_5b653987b0ce4'),
(555, 83, 'cta_0_cta_products_3_img', '76'),
(556, 83, '_cta_0_cta_products_3_img', 'field_5b653973b0ce3'),
(557, 83, 'cta_0_cta_products_3_title', '<h4>MP3</h4>'),
(558, 83, '_cta_0_cta_products_3_title', 'field_5b653987b0ce4'),
(559, 83, 'cta_0_cta_products_4_img', '77'),
(560, 83, '_cta_0_cta_products_4_img', 'field_5b653973b0ce3'),
(561, 83, 'cta_0_cta_products_4_title', '<h4>GPs</h4>'),
(562, 83, '_cta_0_cta_products_4_title', 'field_5b653987b0ce4'),
(563, 83, 'cta_0_cta_products_5_img', '78'),
(564, 83, '_cta_0_cta_products_5_img', 'field_5b653973b0ce3'),
(565, 83, 'cta_0_cta_products_5_title', '<h4>Camera</h4>'),
(566, 83, '_cta_0_cta_products_5_title', 'field_5b653987b0ce4'),
(567, 83, 'cta_0_cta_products', '6'),
(568, 83, '_cta_0_cta_products', 'field_5b653953b0ce2'),
(569, 83, 'cta_products_0_img', '73'),
(570, 83, '_cta_products_0_img', 'field_5b653dcb86eb8'),
(571, 83, 'cta_products_0_title', '<h4>Phone</h4>'),
(572, 83, '_cta_products_0_title', 'field_5b653dd686eb9'),
(573, 83, 'cta_products', '1'),
(574, 83, '_cta_products', 'field_5b653db886eb7'),
(575, 2, 'cta_products_1_img', '89'),
(576, 2, '_cta_products_1_img', 'field_5b653dcb86eb8'),
(577, 2, 'cta_products_1_title', '<h4>Tablet</h4>'),
(578, 2, '_cta_products_1_title', 'field_5b653dd686eb9'),
(579, 2, 'cta_products_2_img', '90'),
(580, 2, '_cta_products_2_img', 'field_5b653dcb86eb8'),
(581, 2, 'cta_products_2_title', '<h4>Laptop</h4>'),
(582, 2, '_cta_products_2_title', 'field_5b653dd686eb9'),
(583, 2, 'cta_products_3_img', '91'),
(584, 2, '_cta_products_3_img', 'field_5b653dcb86eb8'),
(585, 2, 'cta_products_3_title', '<h4>MP3</h4>'),
(586, 2, '_cta_products_3_title', 'field_5b653dd686eb9'),
(587, 2, 'cta_products_4_img', '92'),
(588, 2, '_cta_products_4_img', 'field_5b653dcb86eb8'),
(589, 2, 'cta_products_4_title', '<h4>GPs</h4>'),
(590, 2, '_cta_products_4_title', 'field_5b653dd686eb9'),
(591, 2, 'cta_products_5_img', '93'),
(592, 2, '_cta_products_5_img', 'field_5b653dcb86eb8'),
(593, 2, 'cta_products_5_title', '<h4>Camera</h4>'),
(594, 2, '_cta_products_5_title', 'field_5b653dd686eb9'),
(595, 84, 'banner', '1'),
(596, 84, '_banner', 'field_5b630a0622d1e'),
(597, 84, 'banner_0_background', '39'),
(598, 84, '_banner_0_background', 'field_5b630a2522d1f'),
(599, 84, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(600, 84, '_banner_0_left_heading', 'field_5b630a3422d20'),
(601, 84, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(602, 84, '_banner_0_left_text', 'field_5b630a4922d21'),
(603, 84, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(604, 84, '_banner_0_left_button', 'field_5b630a5122d22'),
(605, 84, 'content_slider_0_img', '63'),
(606, 84, '_content_slider_0_img', 'field_5b641215938e5'),
(607, 84, 'content_slider_1_img', '64'),
(608, 84, '_content_slider_1_img', 'field_5b641215938e5'),
(609, 84, 'content_slider_2_img', '65'),
(610, 84, '_content_slider_2_img', 'field_5b641215938e5'),
(611, 84, 'content_slider', '3'),
(612, 84, '_content_slider', 'field_5b6411d5938e4'),
(613, 84, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(614, 84, '_cta_0_heading', 'field_5b6429f828de4'),
(615, 84, 'cta', '1'),
(616, 84, '_cta', 'field_5b6429e528de3'),
(617, 84, 'cta_0_cta_products_0_img', '73'),
(618, 84, '_cta_0_cta_products_0_img', 'field_5b653973b0ce3'),
(619, 84, 'cta_0_cta_products_0_title', '<h4>Phone</h4>'),
(620, 84, '_cta_0_cta_products_0_title', 'field_5b653987b0ce4'),
(621, 84, 'cta_0_cta_products_1_img', '74'),
(622, 84, '_cta_0_cta_products_1_img', 'field_5b653973b0ce3'),
(623, 84, 'cta_0_cta_products_1_title', '<h4>Tablet</h4>'),
(624, 84, '_cta_0_cta_products_1_title', 'field_5b653987b0ce4'),
(625, 84, 'cta_0_cta_products_2_img', '75'),
(626, 84, '_cta_0_cta_products_2_img', 'field_5b653973b0ce3'),
(627, 84, 'cta_0_cta_products_2_title', '<h4>Laptop</h4>'),
(628, 84, '_cta_0_cta_products_2_title', 'field_5b653987b0ce4'),
(629, 84, 'cta_0_cta_products_3_img', '76'),
(630, 84, '_cta_0_cta_products_3_img', 'field_5b653973b0ce3'),
(631, 84, 'cta_0_cta_products_3_title', '<h4>MP3</h4>'),
(632, 84, '_cta_0_cta_products_3_title', 'field_5b653987b0ce4'),
(633, 84, 'cta_0_cta_products_4_img', '77'),
(634, 84, '_cta_0_cta_products_4_img', 'field_5b653973b0ce3'),
(635, 84, 'cta_0_cta_products_4_title', '<h4>GPs</h4>'),
(636, 84, '_cta_0_cta_products_4_title', 'field_5b653987b0ce4'),
(637, 84, 'cta_0_cta_products_5_img', '78'),
(638, 84, '_cta_0_cta_products_5_img', 'field_5b653973b0ce3'),
(639, 84, 'cta_0_cta_products_5_title', '<h4>Camera</h4>'),
(640, 84, '_cta_0_cta_products_5_title', 'field_5b653987b0ce4'),
(641, 84, 'cta_0_cta_products', '6'),
(642, 84, '_cta_0_cta_products', 'field_5b653953b0ce2'),
(643, 84, 'cta_products_0_img', '73'),
(644, 84, '_cta_products_0_img', 'field_5b653dcb86eb8'),
(645, 84, 'cta_products_0_title', '<h4>Phone</h4>'),
(646, 84, '_cta_products_0_title', 'field_5b653dd686eb9'),
(647, 84, 'cta_products', '6'),
(648, 84, '_cta_products', 'field_5b653db886eb7'),
(649, 84, 'cta_products_1_img', '74'),
(650, 84, '_cta_products_1_img', 'field_5b653dcb86eb8'),
(651, 84, 'cta_products_1_title', '<h4>Tablet</h4>'),
(652, 84, '_cta_products_1_title', 'field_5b653dd686eb9'),
(653, 84, 'cta_products_2_img', '75'),
(654, 84, '_cta_products_2_img', 'field_5b653dcb86eb8'),
(655, 84, 'cta_products_2_title', '<h4>Laptop</h4>'),
(656, 84, '_cta_products_2_title', 'field_5b653dd686eb9'),
(657, 84, 'cta_products_3_img', '76'),
(658, 84, '_cta_products_3_img', 'field_5b653dcb86eb8'),
(659, 84, 'cta_products_3_title', '<h4>MP3</h4>'),
(660, 84, '_cta_products_3_title', 'field_5b653dd686eb9'),
(661, 84, 'cta_products_4_img', '76'),
(662, 84, '_cta_products_4_img', 'field_5b653dcb86eb8'),
(663, 84, 'cta_products_4_title', '<h4>GPs</h4>'),
(664, 84, '_cta_products_4_title', 'field_5b653dd686eb9'),
(665, 84, 'cta_products_5_img', '78'),
(666, 84, '_cta_products_5_img', 'field_5b653dcb86eb8'),
(667, 84, 'cta_products_5_title', '<h4>Camera</h4>'),
(668, 84, '_cta_products_5_title', 'field_5b653dd686eb9'),
(669, 85, '_menu_item_type', 'custom'),
(670, 85, '_menu_item_menu_item_parent', '0'),
(671, 85, '_menu_item_object_id', '85'),
(672, 85, '_menu_item_object', 'custom'),
(673, 85, '_menu_item_target', ''),
(674, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(675, 85, '_menu_item_xfn', ''),
(676, 85, '_menu_item_url', '#'),
(679, 87, '_wp_attached_file', '2018/08/home_bg.jpg'),
(680, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1927;s:6:\"height\";i:655;s:4:\"file\";s:19:\"2018/08/home_bg.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"home_bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"home_bg-300x102.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"home_bg-768x261.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:261;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"home_bg-1024x348.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(681, 88, '_wp_attached_file', '2018/08/iphone.jpg'),
(682, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:65;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2018/08/iphone.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(683, 89, '_wp_attached_file', '2018/08/tablet.jpg'),
(684, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:65;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2018/08/tablet.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(685, 90, '_wp_attached_file', '2018/08/laptop.jpg'),
(686, 90, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:65;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2018/08/laptop.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(687, 91, '_wp_attached_file', '2018/08/mp3.jpg'),
(688, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:65;s:6:\"height\";i:60;s:4:\"file\";s:15:\"2018/08/mp3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(689, 92, '_wp_attached_file', '2018/08/gps.jpg'),
(690, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:65;s:6:\"height\";i:60;s:4:\"file\";s:15:\"2018/08/gps.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(691, 93, '_wp_attached_file', '2018/08/camera.jpg'),
(692, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:65;s:6:\"height\";i:60;s:4:\"file\";s:18:\"2018/08/camera.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(693, 94, 'banner', '1'),
(694, 94, '_banner', 'field_5b630a0622d1e'),
(695, 94, 'banner_0_background', '39'),
(696, 94, '_banner_0_background', 'field_5b630a2522d1f'),
(697, 94, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(698, 94, '_banner_0_left_heading', 'field_5b630a3422d20'),
(699, 94, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(700, 94, '_banner_0_left_text', 'field_5b630a4922d21'),
(701, 94, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(702, 94, '_banner_0_left_button', 'field_5b630a5122d22'),
(703, 94, 'content_slider_0_img', '63'),
(704, 94, '_content_slider_0_img', 'field_5b641215938e5'),
(705, 94, 'content_slider_1_img', '64'),
(706, 94, '_content_slider_1_img', 'field_5b641215938e5'),
(707, 94, 'content_slider_2_img', '65'),
(708, 94, '_content_slider_2_img', 'field_5b641215938e5'),
(709, 94, 'content_slider', '3'),
(710, 94, '_content_slider', 'field_5b6411d5938e4'),
(711, 94, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(712, 94, '_cta_0_heading', 'field_5b6429f828de4'),
(713, 94, 'cta', '1'),
(714, 94, '_cta', 'field_5b6429e528de3'),
(715, 94, 'cta_0_cta_products_0_img', '73'),
(716, 94, '_cta_0_cta_products_0_img', 'field_5b653973b0ce3'),
(717, 94, 'cta_0_cta_products_0_title', '<h4>Phone</h4>'),
(718, 94, '_cta_0_cta_products_0_title', 'field_5b653987b0ce4'),
(719, 94, 'cta_0_cta_products_1_img', '74'),
(720, 94, '_cta_0_cta_products_1_img', 'field_5b653973b0ce3'),
(721, 94, 'cta_0_cta_products_1_title', '<h4>Tablet</h4>'),
(722, 94, '_cta_0_cta_products_1_title', 'field_5b653987b0ce4'),
(723, 94, 'cta_0_cta_products_2_img', '75'),
(724, 94, '_cta_0_cta_products_2_img', 'field_5b653973b0ce3'),
(725, 94, 'cta_0_cta_products_2_title', '<h4>Laptop</h4>'),
(726, 94, '_cta_0_cta_products_2_title', 'field_5b653987b0ce4'),
(727, 94, 'cta_0_cta_products_3_img', '76'),
(728, 94, '_cta_0_cta_products_3_img', 'field_5b653973b0ce3'),
(729, 94, 'cta_0_cta_products_3_title', '<h4>MP3</h4>'),
(730, 94, '_cta_0_cta_products_3_title', 'field_5b653987b0ce4'),
(731, 94, 'cta_0_cta_products_4_img', '77'),
(732, 94, '_cta_0_cta_products_4_img', 'field_5b653973b0ce3'),
(733, 94, 'cta_0_cta_products_4_title', '<h4>GPs</h4>'),
(734, 94, '_cta_0_cta_products_4_title', 'field_5b653987b0ce4'),
(735, 94, 'cta_0_cta_products_5_img', '78'),
(736, 94, '_cta_0_cta_products_5_img', 'field_5b653973b0ce3'),
(737, 94, 'cta_0_cta_products_5_title', '<h4>Camera</h4>'),
(738, 94, '_cta_0_cta_products_5_title', 'field_5b653987b0ce4'),
(739, 94, 'cta_0_cta_products', '6'),
(740, 94, '_cta_0_cta_products', 'field_5b653953b0ce2'),
(741, 94, 'cta_products_0_img', '73'),
(742, 94, '_cta_products_0_img', 'field_5b653dcb86eb8'),
(743, 94, 'cta_products_0_title', '<h4>Phone</h4>'),
(744, 94, '_cta_products_0_title', 'field_5b653dd686eb9'),
(745, 94, 'cta_products', '6'),
(746, 94, '_cta_products', 'field_5b653db886eb7'),
(747, 94, 'cta_products_1_img', '89'),
(748, 94, '_cta_products_1_img', 'field_5b653dcb86eb8'),
(749, 94, 'cta_products_1_title', '<h4>Tablet</h4>'),
(750, 94, '_cta_products_1_title', 'field_5b653dd686eb9'),
(751, 94, 'cta_products_2_img', '90'),
(752, 94, '_cta_products_2_img', 'field_5b653dcb86eb8'),
(753, 94, 'cta_products_2_title', '<h4>Laptop</h4>'),
(754, 94, '_cta_products_2_title', 'field_5b653dd686eb9'),
(755, 94, 'cta_products_3_img', '91'),
(756, 94, '_cta_products_3_img', 'field_5b653dcb86eb8'),
(757, 94, 'cta_products_3_title', '<h4>MP3</h4>'),
(758, 94, '_cta_products_3_title', 'field_5b653dd686eb9'),
(759, 94, 'cta_products_4_img', '92'),
(760, 94, '_cta_products_4_img', 'field_5b653dcb86eb8'),
(761, 94, 'cta_products_4_title', '<h4>GPs</h4>'),
(762, 94, '_cta_products_4_title', 'field_5b653dd686eb9'),
(763, 94, 'cta_products_5_img', '93'),
(764, 94, '_cta_products_5_img', 'field_5b653dcb86eb8'),
(765, 94, 'cta_products_5_title', '<h4>Camera</h4>'),
(766, 94, '_cta_products_5_title', 'field_5b653dd686eb9'),
(767, 95, '_wp_attached_file', '2018/08/slider-img-1.jpg'),
(768, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:163;s:4:\"file\";s:24:\"2018/08/slider-img-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"slider-img-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"slider-img-1-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(769, 96, '_wp_attached_file', '2018/08/slider-img-2.jpg'),
(770, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:163;s:4:\"file\";s:24:\"2018/08/slider-img-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"slider-img-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"slider-img-2-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(771, 97, '_wp_attached_file', '2018/08/slider-img-3.jpg'),
(772, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:350;s:6:\"height\";i:163;s:4:\"file\";s:24:\"2018/08/slider-img-3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"slider-img-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"slider-img-3-300x140.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:140;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(773, 98, 'banner', '1'),
(774, 98, '_banner', 'field_5b630a0622d1e'),
(775, 98, 'banner_0_background', '39'),
(776, 98, '_banner_0_background', 'field_5b630a2522d1f'),
(777, 98, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(778, 98, '_banner_0_left_heading', 'field_5b630a3422d20'),
(779, 98, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(780, 98, '_banner_0_left_text', 'field_5b630a4922d21'),
(781, 98, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(782, 98, '_banner_0_left_button', 'field_5b630a5122d22'),
(783, 98, 'content_slider_0_img', '95'),
(784, 98, '_content_slider_0_img', 'field_5b641215938e5'),
(785, 98, 'content_slider_1_img', '96'),
(786, 98, '_content_slider_1_img', 'field_5b641215938e5'),
(787, 98, 'content_slider_2_img', '97'),
(788, 98, '_content_slider_2_img', 'field_5b641215938e5'),
(789, 98, 'content_slider', '3'),
(790, 98, '_content_slider', 'field_5b6411d5938e4'),
(791, 98, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(792, 98, '_cta_0_heading', 'field_5b6429f828de4'),
(793, 98, 'cta', '1'),
(794, 98, '_cta', 'field_5b6429e528de3'),
(795, 98, 'cta_0_cta_products_0_img', '73'),
(796, 98, '_cta_0_cta_products_0_img', 'field_5b653973b0ce3'),
(797, 98, 'cta_0_cta_products_0_title', '<h4>Phone</h4>'),
(798, 98, '_cta_0_cta_products_0_title', 'field_5b653987b0ce4'),
(799, 98, 'cta_0_cta_products_1_img', '74'),
(800, 98, '_cta_0_cta_products_1_img', 'field_5b653973b0ce3'),
(801, 98, 'cta_0_cta_products_1_title', '<h4>Tablet</h4>'),
(802, 98, '_cta_0_cta_products_1_title', 'field_5b653987b0ce4'),
(803, 98, 'cta_0_cta_products_2_img', '75'),
(804, 98, '_cta_0_cta_products_2_img', 'field_5b653973b0ce3'),
(805, 98, 'cta_0_cta_products_2_title', '<h4>Laptop</h4>'),
(806, 98, '_cta_0_cta_products_2_title', 'field_5b653987b0ce4'),
(807, 98, 'cta_0_cta_products_3_img', '76'),
(808, 98, '_cta_0_cta_products_3_img', 'field_5b653973b0ce3'),
(809, 98, 'cta_0_cta_products_3_title', '<h4>MP3</h4>'),
(810, 98, '_cta_0_cta_products_3_title', 'field_5b653987b0ce4'),
(811, 98, 'cta_0_cta_products_4_img', '77'),
(812, 98, '_cta_0_cta_products_4_img', 'field_5b653973b0ce3'),
(813, 98, 'cta_0_cta_products_4_title', '<h4>GPs</h4>'),
(814, 98, '_cta_0_cta_products_4_title', 'field_5b653987b0ce4'),
(815, 98, 'cta_0_cta_products_5_img', '78'),
(816, 98, '_cta_0_cta_products_5_img', 'field_5b653973b0ce3'),
(817, 98, 'cta_0_cta_products_5_title', '<h4>Camera</h4>'),
(818, 98, '_cta_0_cta_products_5_title', 'field_5b653987b0ce4'),
(819, 98, 'cta_0_cta_products', '6'),
(820, 98, '_cta_0_cta_products', 'field_5b653953b0ce2'),
(821, 98, 'cta_products_0_img', '73'),
(822, 98, '_cta_products_0_img', 'field_5b653dcb86eb8'),
(823, 98, 'cta_products_0_title', '<h4>Phone</h4>'),
(824, 98, '_cta_products_0_title', 'field_5b653dd686eb9'),
(825, 98, 'cta_products', '6'),
(826, 98, '_cta_products', 'field_5b653db886eb7'),
(827, 98, 'cta_products_1_img', '89'),
(828, 98, '_cta_products_1_img', 'field_5b653dcb86eb8'),
(829, 98, 'cta_products_1_title', '<h4>Tablet</h4>'),
(830, 98, '_cta_products_1_title', 'field_5b653dd686eb9'),
(831, 98, 'cta_products_2_img', '90'),
(832, 98, '_cta_products_2_img', 'field_5b653dcb86eb8'),
(833, 98, 'cta_products_2_title', '<h4>Laptop</h4>'),
(834, 98, '_cta_products_2_title', 'field_5b653dd686eb9'),
(835, 98, 'cta_products_3_img', '91'),
(836, 98, '_cta_products_3_img', 'field_5b653dcb86eb8'),
(837, 98, 'cta_products_3_title', '<h4>MP3</h4>'),
(838, 98, '_cta_products_3_title', 'field_5b653dd686eb9'),
(839, 98, 'cta_products_4_img', '92'),
(840, 98, '_cta_products_4_img', 'field_5b653dcb86eb8'),
(841, 98, 'cta_products_4_title', '<h4>GPs</h4>'),
(842, 98, '_cta_products_4_title', 'field_5b653dd686eb9'),
(843, 98, 'cta_products_5_img', '93'),
(844, 98, '_cta_products_5_img', 'field_5b653dcb86eb8'),
(845, 98, 'cta_products_5_title', '<h4>Camera</h4>'),
(846, 98, '_cta_products_5_title', 'field_5b653dd686eb9'),
(847, 99, '_wp_attached_file', '2018/08/icon.jpg'),
(848, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2018/08/icon.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"icon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"icon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(849, 100, '_wp_attached_file', '2018/08/cropped-icon.jpg'),
(850, 100, '_wp_attachment_context', 'site-icon'),
(851, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2018/08/cropped-icon.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-icon-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-icon-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-icon-270x270.jpg\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-icon-192x192.jpg\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-icon-180x180.jpg\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-icon-32x32.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(852, 101, '_wp_trash_meta_status', 'publish'),
(853, 101, '_wp_trash_meta_time', '1533486037'),
(854, 102, '_wp_attached_file', '2018/08/logo-footer.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(855, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:71;s:6:\"height\";i:34;s:4:\"file\";s:23:\"2018/08/logo-footer.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(856, 103, '_wp_attached_file', '2018/08/logo.svg'),
(857, 104, '_wp_trash_meta_status', 'publish'),
(858, 104, '_wp_trash_meta_time', '1533488416'),
(886, 108, '_menu_item_type', 'custom'),
(887, 108, '_menu_item_menu_item_parent', '0'),
(888, 108, '_menu_item_object_id', '108'),
(889, 108, '_menu_item_object', 'custom'),
(890, 108, '_menu_item_target', '_blank'),
(891, 108, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(892, 108, '_menu_item_xfn', ''),
(893, 108, '_menu_item_url', '#'),
(895, 109, '_menu_item_type', 'custom'),
(896, 109, '_menu_item_menu_item_parent', '0'),
(897, 109, '_menu_item_object_id', '109'),
(898, 109, '_menu_item_object', 'custom'),
(899, 109, '_menu_item_target', '_blank'),
(900, 109, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(901, 109, '_menu_item_xfn', ''),
(902, 109, '_menu_item_url', '#'),
(904, 110, '_menu_item_type', 'custom'),
(905, 110, '_menu_item_menu_item_parent', '0'),
(906, 110, '_menu_item_object_id', '110'),
(907, 110, '_menu_item_object', 'custom'),
(908, 110, '_menu_item_target', '_blank'),
(909, 110, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(910, 110, '_menu_item_xfn', ''),
(911, 110, '_menu_item_url', '#'),
(914, 111, 'banner', '1'),
(915, 111, '_banner', 'field_5b630a0622d1e'),
(916, 111, 'banner_0_background', '87'),
(917, 111, '_banner_0_background', 'field_5b630a2522d1f'),
(918, 111, 'banner_0_left_heading', '<h1>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</h1>'),
(919, 111, '_banner_0_left_heading', 'field_5b630a3422d20'),
(920, 111, 'banner_0_left_text', 'Etiam ac sodales orci, id tristique magna. Etiam sit amet lacus eu diam faucibus mattis. Nam convallis lobortis sapien, et consequat volutpat in.'),
(921, 111, '_banner_0_left_text', 'field_5b630a4922d21'),
(922, 111, 'banner_0_left_button', '<a href=\"#\" class=\"btn btn-primary btn-cta\">Submit</a>'),
(923, 111, '_banner_0_left_button', 'field_5b630a5122d22'),
(924, 111, 'content_slider_0_img', '95'),
(925, 111, '_content_slider_0_img', 'field_5b641215938e5'),
(926, 111, 'content_slider_1_img', '96'),
(927, 111, '_content_slider_1_img', 'field_5b641215938e5'),
(928, 111, 'content_slider_2_img', '97'),
(929, 111, '_content_slider_2_img', 'field_5b641215938e5'),
(930, 111, 'content_slider', '3'),
(931, 111, '_content_slider', 'field_5b6411d5938e4'),
(932, 111, 'cta_0_heading', '<h3>Please select what kind of products do you prefer</h3>'),
(933, 111, '_cta_0_heading', 'field_5b6429f828de4'),
(934, 111, 'cta', '1'),
(935, 111, '_cta', 'field_5b6429e528de3'),
(936, 111, 'cta_0_cta_products_0_img', '73'),
(937, 111, '_cta_0_cta_products_0_img', 'field_5b653973b0ce3'),
(938, 111, 'cta_0_cta_products_0_title', '<h4>Phone</h4>'),
(939, 111, '_cta_0_cta_products_0_title', 'field_5b653987b0ce4'),
(940, 111, 'cta_0_cta_products_1_img', '74'),
(941, 111, '_cta_0_cta_products_1_img', 'field_5b653973b0ce3'),
(942, 111, 'cta_0_cta_products_1_title', '<h4>Tablet</h4>'),
(943, 111, '_cta_0_cta_products_1_title', 'field_5b653987b0ce4'),
(944, 111, 'cta_0_cta_products_2_img', '75'),
(945, 111, '_cta_0_cta_products_2_img', 'field_5b653973b0ce3'),
(946, 111, 'cta_0_cta_products_2_title', '<h4>Laptop</h4>'),
(947, 111, '_cta_0_cta_products_2_title', 'field_5b653987b0ce4'),
(948, 111, 'cta_0_cta_products_3_img', '76'),
(949, 111, '_cta_0_cta_products_3_img', 'field_5b653973b0ce3'),
(950, 111, 'cta_0_cta_products_3_title', '<h4>MP3</h4>'),
(951, 111, '_cta_0_cta_products_3_title', 'field_5b653987b0ce4'),
(952, 111, 'cta_0_cta_products_4_img', '77'),
(953, 111, '_cta_0_cta_products_4_img', 'field_5b653973b0ce3'),
(954, 111, 'cta_0_cta_products_4_title', '<h4>GPs</h4>'),
(955, 111, '_cta_0_cta_products_4_title', 'field_5b653987b0ce4'),
(956, 111, 'cta_0_cta_products_5_img', '78'),
(957, 111, '_cta_0_cta_products_5_img', 'field_5b653973b0ce3'),
(958, 111, 'cta_0_cta_products_5_title', '<h4>Camera</h4>'),
(959, 111, '_cta_0_cta_products_5_title', 'field_5b653987b0ce4'),
(960, 111, 'cta_0_cta_products', '6'),
(961, 111, '_cta_0_cta_products', 'field_5b653953b0ce2'),
(962, 111, 'cta_products_0_img', '88'),
(963, 111, '_cta_products_0_img', 'field_5b653dcb86eb8'),
(964, 111, 'cta_products_0_title', '<h4>Phone</h4>'),
(965, 111, '_cta_products_0_title', 'field_5b653dd686eb9'),
(966, 111, 'cta_products', '6'),
(967, 111, '_cta_products', 'field_5b653db886eb7'),
(968, 111, 'cta_products_1_img', '89'),
(969, 111, '_cta_products_1_img', 'field_5b653dcb86eb8'),
(970, 111, 'cta_products_1_title', '<h4>Tablet</h4>'),
(971, 111, '_cta_products_1_title', 'field_5b653dd686eb9'),
(972, 111, 'cta_products_2_img', '90'),
(973, 111, '_cta_products_2_img', 'field_5b653dcb86eb8'),
(974, 111, 'cta_products_2_title', '<h4>Laptop</h4>'),
(975, 111, '_cta_products_2_title', 'field_5b653dd686eb9'),
(976, 111, 'cta_products_3_img', '91'),
(977, 111, '_cta_products_3_img', 'field_5b653dcb86eb8'),
(978, 111, 'cta_products_3_title', '<h4>MP3</h4>'),
(979, 111, '_cta_products_3_title', 'field_5b653dd686eb9'),
(980, 111, 'cta_products_4_img', '92'),
(981, 111, '_cta_products_4_img', 'field_5b653dcb86eb8'),
(982, 111, 'cta_products_4_title', '<h4>GPs</h4>'),
(983, 111, '_cta_products_4_title', 'field_5b653dd686eb9'),
(984, 111, 'cta_products_5_img', '93'),
(985, 111, '_cta_products_5_img', 'field_5b653dcb86eb8'),
(986, 111, 'cta_products_5_title', '<h4>Camera</h4>'),
(987, 111, '_cta_products_5_title', 'field_5b653dd686eb9'),
(988, 112, 'inline_featured_image', '0'),
(989, 113, 'inline_featured_image', '0'),
(990, 114, 'inline_featured_image', '0'),
(991, 115, 'inline_featured_image', '0'),
(992, 116, 'inline_featured_image', '0'),
(993, 116, '_wc_review_count', '0'),
(994, 116, '_wc_rating_count', 'a:0:{}'),
(995, 116, '_wc_average_rating', '0'),
(996, 116, '_edit_last', '1'),
(997, 116, '_edit_lock', '1533803273:1'),
(998, 88, '_wp_attachment_image_alt', 'iPhone'),
(999, 116, '_thumbnail_id', '88'),
(1000, 116, '_sku', ''),
(1001, 116, '_regular_price', ''),
(1002, 116, '_sale_price', ''),
(1003, 116, '_sale_price_dates_from', ''),
(1004, 116, '_sale_price_dates_to', ''),
(1005, 116, 'total_sales', '0'),
(1006, 116, '_tax_status', 'taxable'),
(1007, 116, '_tax_class', ''),
(1008, 116, '_manage_stock', 'no'),
(1009, 116, '_backorders', 'no'),
(1010, 116, '_sold_individually', 'no'),
(1011, 116, '_weight', ''),
(1012, 116, '_length', ''),
(1013, 116, '_width', ''),
(1014, 116, '_height', ''),
(1015, 116, '_upsell_ids', 'a:0:{}'),
(1016, 116, '_crosssell_ids', 'a:0:{}'),
(1017, 116, '_purchase_note', ''),
(1018, 116, '_default_attributes', 'a:0:{}'),
(1019, 116, '_virtual', 'no'),
(1020, 116, '_downloadable', 'no'),
(1021, 116, '_product_image_gallery', ''),
(1022, 116, '_download_limit', '-1'),
(1023, 116, '_download_expiry', '-1'),
(1024, 116, '_stock', NULL),
(1025, 116, '_stock_status', 'instock'),
(1026, 116, '_product_version', '3.4.4'),
(1027, 116, '_price', ''),
(1028, 117, 'inline_featured_image', '0'),
(1029, 117, '_wc_review_count', '0'),
(1030, 117, '_wc_rating_count', 'a:0:{}'),
(1031, 117, '_wc_average_rating', '0'),
(1032, 117, '_edit_last', '1'),
(1033, 117, '_edit_lock', '1533803265:1'),
(1034, 117, '_thumbnail_id', '90'),
(1035, 117, '_sku', ''),
(1036, 117, '_regular_price', ''),
(1037, 117, '_sale_price', ''),
(1038, 117, '_sale_price_dates_from', ''),
(1039, 117, '_sale_price_dates_to', ''),
(1040, 117, 'total_sales', '0'),
(1041, 117, '_tax_status', 'taxable'),
(1042, 117, '_tax_class', ''),
(1043, 117, '_manage_stock', 'no'),
(1044, 117, '_backorders', 'no'),
(1045, 117, '_sold_individually', 'no'),
(1046, 117, '_weight', ''),
(1047, 117, '_length', ''),
(1048, 117, '_width', ''),
(1049, 117, '_height', ''),
(1050, 117, '_upsell_ids', 'a:0:{}'),
(1051, 117, '_crosssell_ids', 'a:0:{}'),
(1052, 117, '_purchase_note', ''),
(1053, 117, '_default_attributes', 'a:0:{}'),
(1054, 117, '_virtual', 'no'),
(1055, 117, '_downloadable', 'no'),
(1056, 117, '_product_image_gallery', ''),
(1057, 117, '_download_limit', '-1'),
(1058, 117, '_download_expiry', '-1'),
(1059, 117, '_stock', NULL),
(1060, 117, '_stock_status', 'instock'),
(1061, 117, '_product_version', '3.4.4'),
(1062, 117, '_price', ''),
(1063, 118, 'inline_featured_image', '0'),
(1064, 118, '_wc_review_count', '0'),
(1065, 118, '_wc_rating_count', 'a:0:{}'),
(1066, 118, '_wc_average_rating', '0'),
(1067, 118, '_edit_last', '1'),
(1068, 118, '_edit_lock', '1533803259:1'),
(1069, 118, '_thumbnail_id', '89'),
(1070, 118, '_sku', ''),
(1071, 118, '_regular_price', ''),
(1072, 118, '_sale_price', ''),
(1073, 118, '_sale_price_dates_from', ''),
(1074, 118, '_sale_price_dates_to', ''),
(1075, 118, 'total_sales', '0'),
(1076, 118, '_tax_status', 'taxable'),
(1077, 118, '_tax_class', ''),
(1078, 118, '_manage_stock', 'no'),
(1079, 118, '_backorders', 'no'),
(1080, 118, '_sold_individually', 'no'),
(1081, 118, '_weight', ''),
(1082, 118, '_length', ''),
(1083, 118, '_width', ''),
(1084, 118, '_height', ''),
(1085, 118, '_upsell_ids', 'a:0:{}'),
(1086, 118, '_crosssell_ids', 'a:0:{}'),
(1087, 118, '_purchase_note', ''),
(1088, 118, '_default_attributes', 'a:0:{}'),
(1089, 118, '_virtual', 'no'),
(1090, 118, '_downloadable', 'no'),
(1091, 118, '_product_image_gallery', ''),
(1092, 118, '_download_limit', '-1'),
(1093, 118, '_download_expiry', '-1'),
(1094, 118, '_stock', NULL),
(1095, 118, '_stock_status', 'instock'),
(1096, 118, '_product_version', '3.4.4'),
(1097, 118, '_price', ''),
(1098, 119, 'inline_featured_image', '0'),
(1099, 119, '_wc_review_count', '0'),
(1100, 119, '_wc_rating_count', 'a:0:{}'),
(1101, 119, '_wc_average_rating', '0'),
(1102, 119, '_edit_last', '1'),
(1103, 119, '_edit_lock', '1533803253:1'),
(1104, 119, '_thumbnail_id', '91'),
(1105, 119, '_sku', ''),
(1106, 119, '_regular_price', ''),
(1107, 119, '_sale_price', ''),
(1108, 119, '_sale_price_dates_from', ''),
(1109, 119, '_sale_price_dates_to', ''),
(1110, 119, 'total_sales', '0'),
(1111, 119, '_tax_status', 'taxable'),
(1112, 119, '_tax_class', ''),
(1113, 119, '_manage_stock', 'no'),
(1114, 119, '_backorders', 'no'),
(1115, 119, '_sold_individually', 'no'),
(1116, 119, '_weight', ''),
(1117, 119, '_length', ''),
(1118, 119, '_width', ''),
(1119, 119, '_height', ''),
(1120, 119, '_upsell_ids', 'a:0:{}'),
(1121, 119, '_crosssell_ids', 'a:0:{}'),
(1122, 119, '_purchase_note', ''),
(1123, 119, '_default_attributes', 'a:0:{}'),
(1124, 119, '_virtual', 'no'),
(1125, 119, '_downloadable', 'no'),
(1126, 119, '_product_image_gallery', ''),
(1127, 119, '_download_limit', '-1'),
(1128, 119, '_download_expiry', '-1'),
(1129, 119, '_stock', NULL),
(1130, 119, '_stock_status', 'instock'),
(1131, 119, '_product_version', '3.4.4'),
(1132, 119, '_price', ''),
(1133, 120, 'inline_featured_image', '0'),
(1134, 120, '_wc_review_count', '0'),
(1135, 120, '_wc_rating_count', 'a:0:{}'),
(1136, 120, '_wc_average_rating', '0'),
(1137, 120, '_edit_last', '1'),
(1138, 120, '_edit_lock', '1533803246:1'),
(1139, 120, '_thumbnail_id', '92'),
(1140, 120, '_sku', ''),
(1141, 120, '_regular_price', ''),
(1142, 120, '_sale_price', ''),
(1143, 120, '_sale_price_dates_from', ''),
(1144, 120, '_sale_price_dates_to', ''),
(1145, 120, 'total_sales', '0'),
(1146, 120, '_tax_status', 'taxable'),
(1147, 120, '_tax_class', ''),
(1148, 120, '_manage_stock', 'no'),
(1149, 120, '_backorders', 'no'),
(1150, 120, '_sold_individually', 'no'),
(1151, 120, '_weight', ''),
(1152, 120, '_length', ''),
(1153, 120, '_width', ''),
(1154, 120, '_height', ''),
(1155, 120, '_upsell_ids', 'a:0:{}'),
(1156, 120, '_crosssell_ids', 'a:0:{}'),
(1157, 120, '_purchase_note', ''),
(1158, 120, '_default_attributes', 'a:0:{}'),
(1159, 120, '_virtual', 'no'),
(1160, 120, '_downloadable', 'no'),
(1161, 120, '_product_image_gallery', ''),
(1162, 120, '_download_limit', '-1'),
(1163, 120, '_download_expiry', '-1'),
(1164, 120, '_stock', NULL),
(1165, 120, '_stock_status', 'instock'),
(1166, 120, '_product_version', '3.4.4'),
(1167, 120, '_price', ''),
(1168, 121, 'inline_featured_image', '0'),
(1169, 121, '_wc_review_count', '0'),
(1170, 121, '_wc_rating_count', 'a:0:{}'),
(1171, 121, '_wc_average_rating', '0'),
(1172, 121, '_edit_last', '1'),
(1173, 121, '_edit_lock', '1533803236:1'),
(1174, 121, '_sku', ''),
(1175, 121, '_regular_price', ''),
(1176, 121, '_sale_price', ''),
(1177, 121, '_sale_price_dates_from', ''),
(1178, 121, '_sale_price_dates_to', ''),
(1179, 121, 'total_sales', '0'),
(1180, 121, '_tax_status', 'taxable'),
(1181, 121, '_tax_class', ''),
(1182, 121, '_manage_stock', 'no'),
(1183, 121, '_backorders', 'no'),
(1184, 121, '_sold_individually', 'no'),
(1185, 121, '_weight', ''),
(1186, 121, '_length', ''),
(1187, 121, '_width', ''),
(1188, 121, '_height', ''),
(1189, 121, '_upsell_ids', 'a:0:{}'),
(1190, 121, '_crosssell_ids', 'a:0:{}'),
(1191, 121, '_purchase_note', ''),
(1192, 121, '_default_attributes', 'a:0:{}'),
(1193, 121, '_virtual', 'no'),
(1194, 121, '_downloadable', 'no'),
(1195, 121, '_product_image_gallery', ''),
(1196, 121, '_download_limit', '-1'),
(1197, 121, '_download_expiry', '-1'),
(1198, 121, '_stock', NULL),
(1199, 121, '_stock_status', 'instock'),
(1200, 121, '_product_version', '3.4.4'),
(1201, 121, '_price', ''),
(1202, 121, '_thumbnail_id', '93'),
(1203, 122, '_menu_item_type', 'taxonomy'),
(1204, 122, '_menu_item_menu_item_parent', '0'),
(1205, 122, '_menu_item_object_id', '21'),
(1206, 122, '_menu_item_object', 'product_cat'),
(1207, 122, '_menu_item_target', ''),
(1208, 122, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1209, 122, '_menu_item_xfn', ''),
(1210, 122, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-02 09:22:11', '2018-08-02 09:22:11', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-02 09:22:11', '2018-08-02 09:22:11', '', 0, 'http://localhost/intech-test/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-02 09:22:11', '2018-08-02 09:22:11', '', 'Index', '', 'publish', 'closed', 'closed', '', 'index', '', '', '2018-08-10 12:37:28', '2018-08-10 12:37:28', '', 0, 'http://localhost/intech-test/?page_id=2', 0, 'page', '', 0),
(4, 1, '2018-08-02 09:35:45', '2018-08-02 09:35:45', '', '<i class=\"fa fa-mobile-alt\" aria-hidden=\"true\"></i> (800) 508-2265', '', 'publish', 'closed', 'closed', '', '800-508-2265', '', '', '2018-08-08 09:11:50', '2018-08-08 09:11:50', '', 0, 'http://localhost/intech-test/?p=4', 1, 'nav_menu_item', '', 0),
(9, 1, '2018-08-02 09:38:34', '2018-08-02 09:38:34', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/intech-test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-02 09:38:34', '2018-08-02 09:38:34', '', 2, 'http://localhost/intech-test/2018/08/02/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-08-02 09:48:07', '2018-08-02 09:48:07', '{\n    \"inTech::wp_bootstrap_starter_logo\": {\n        \"value\": \"http://localhost/intech-test/wp-content/uploads/2018/08/logo.svg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 09:47:35\"\n    },\n    \"site_icon\": {\n        \"value\": 15,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 09:48:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '93df5e66-f50d-4f0d-bc29-30d5fab34355', '', '', '2018-08-02 09:48:07', '2018-08-02 09:48:07', '', 0, 'http://localhost/intech-test/?p=12', 0, 'customize_changeset', '', 0),
(15, 1, '2018-08-02 09:47:59', '2018-08-02 09:47:59', 'http://localhost/intech-test/wp-content/uploads/2018/08/cropped-icon.jpg', 'cropped-icon.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-icon-jpg', '', '', '2018-08-02 09:47:59', '2018-08-02 09:47:59', '', 0, 'http://localhost/intech-test/wp-content/uploads/2018/08/cropped-icon.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-08-02 09:52:33', '2018-08-02 09:52:33', '{\n    \"inTech::header_banner_visibility\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 09:52:33\"\n    },\n    \"nav_menu[-1339004637]\": {\n        \"value\": {\n            \"name\": \"Footer Menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 09:52:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9e1b6f0d-afdd-48fc-8506-5992d25b188f', '', '', '2018-08-02 09:52:33', '2018-08-02 09:52:33', '', 0, 'http://localhost/intech-test/2018/08/02/9e1b6f0d-afdd-48fc-8506-5992d25b188f/', 0, 'customize_changeset', '', 0),
(17, 1, '2018-08-02 11:15:49', '2018-08-02 11:15:49', '', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2018-08-02 11:15:49', '2018-08-02 11:15:49', '', 0, 'http://localhost/intech-test/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2018-08-02 11:15:49', '2018-08-02 11:15:49', '', 'Terms and Conditions', '', 'publish', 'closed', 'closed', '', 'terms-and-conditions', '', '', '2018-08-02 11:15:49', '2018-08-02 11:15:49', '', 0, 'http://localhost/intech-test/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2018-08-02 11:15:49', '2018-08-02 11:15:49', '', 'Sitemap', '', 'publish', 'closed', 'closed', '', 'sitemap', '', '', '2018-08-02 11:15:49', '2018-08-02 11:15:49', '', 0, 'http://localhost/intech-test/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2018-08-02 11:15:50', '2018-08-02 11:15:50', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-08-02 11:15:50', '2018-08-02 11:15:50', '', 0, 'http://localhost/intech-test/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2018-08-02 11:27:07', '2018-08-02 11:27:07', '', '<i class=\"fa fa-angle-right\"></i> Popular Industries', 'Popular Industries', 'publish', 'closed', 'closed', '', 'popular-industries', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2018-08-02 11:27:07', '2018-08-02 11:27:07', '', '<i class=\"fa fa-angle-right\"></i> Olympic Games', 'Olympic Games', 'publish', 'closed', 'closed', '', 'olympic-games', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2018-08-02 11:27:07', '2018-08-02 11:27:07', '', '<i class=\"fa fa-angle-right\"></i> Live Healthy', 'Live Healthy', 'publish', 'closed', 'closed', '', 'live-healthy', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2018-08-02 11:29:31', '2018-08-02 11:29:31', '', '<i class=\"fa fa-angle-right\"></i> Vegetables', 'Vegetables', 'publish', 'closed', 'closed', '', 'vegetables', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=24', 4, 'nav_menu_item', '', 0),
(25, 1, '2018-08-02 11:29:31', '2018-08-02 11:29:31', '', '<i class=\"fa fa-angle-right\"></i> Top Books 2015', 'Top Books 2015', 'publish', 'closed', 'closed', '', 'top-books-2015', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=25', 5, 'nav_menu_item', '', 0),
(26, 1, '2018-08-02 11:29:31', '2018-08-02 11:29:31', '', '<i class=\"fa fa-angle-right\"></i> Top Music 2015', 'Top Music 2015', 'publish', 'closed', 'closed', '', 'top-music-2015', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=26', 6, 'nav_menu_item', '', 0),
(27, 1, '2018-08-02 11:29:32', '2018-08-02 11:29:32', '', '<i class=\"fa fa-angle-right\"></i> Sport Equipment', 'Sport Equipment', 'publish', 'closed', 'closed', '', 'sport-equipment', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=27', 8, 'nav_menu_item', '', 0),
(28, 1, '2018-08-02 11:29:32', '2018-08-02 11:29:32', '', '<i class=\"fa fa-angle-right\"></i> Technology', 'Technology', 'publish', 'closed', 'closed', '', 'technology', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=28', 9, 'nav_menu_item', '', 0),
(29, 1, '2018-08-02 11:29:32', '2018-08-02 11:29:32', '', '<i class=\"fa fa-angle-right\"></i> Best Jobs', 'Best Jobs', 'publish', 'closed', 'closed', '', 'best-jobs', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=29', 10, 'nav_menu_item', '', 0),
(30, 1, '2018-08-02 11:29:32', '2018-08-02 11:29:32', '', '<i class=\"fa fa-angle-right\"></i> Recepies', 'Recepies', 'publish', 'closed', 'closed', '', 'recepies', '', '', '2018-08-10 12:59:08', '2018-08-10 12:59:08', '', 0, 'http://localhost/intech-test/?p=30', 11, 'nav_menu_item', '', 0),
(31, 1, '2018-08-02 11:29:32', '2018-08-02 11:29:32', '', '<i class=\"fa fa-angle-right\"></i> Nature', 'Nature', 'publish', 'closed', 'closed', '', 'nature', '', '', '2018-08-10 12:59:08', '2018-08-10 12:59:08', '', 0, 'http://localhost/intech-test/?p=31', 12, 'nav_menu_item', '', 0),
(32, 1, '2018-08-02 12:29:47', '2018-08-02 12:29:47', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/intech-test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-02 12:29:47', '2018-08-02 12:29:47', '', 2, 'http://localhost/intech-test/2018/08/02/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-08-02 13:44:05', '2018-08-02 13:44:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Hero slider', 'hero-slider', 'publish', 'closed', 'closed', '', 'group_5b6309ef1083b', '', '', '2018-08-04 07:12:06', '2018-08-04 07:12:06', '', 0, 'http://localhost/intech-test/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2018-08-02 13:44:05', '2018-08-02 13:44:05', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'banner', 'banner', 'publish', 'closed', 'closed', '', 'field_5b630a0622d1e', '', '', '2018-08-02 13:44:05', '2018-08-02 13:44:05', '', 33, 'http://localhost/intech-test/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2018-08-02 13:44:05', '2018-08-02 13:44:05', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'background', 'background', 'publish', 'closed', 'closed', '', 'field_5b630a2522d1f', '', '', '2018-08-02 13:44:05', '2018-08-02 13:44:05', '', 34, 'http://localhost/intech-test/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(36, 1, '2018-08-02 13:44:06', '2018-08-02 13:44:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'left heading', 'left_heading', 'publish', 'closed', 'closed', '', 'field_5b630a3422d20', '', '', '2018-08-02 13:44:06', '2018-08-02 13:44:06', '', 34, 'http://localhost/intech-test/?post_type=acf-field&p=36', 1, 'acf-field', '', 0),
(37, 1, '2018-08-02 13:44:06', '2018-08-02 13:44:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'left text', 'left_text', 'publish', 'closed', 'closed', '', 'field_5b630a4922d21', '', '', '2018-08-02 13:44:06', '2018-08-02 13:44:06', '', 34, 'http://localhost/intech-test/?post_type=acf-field&p=37', 2, 'acf-field', '', 0),
(38, 1, '2018-08-02 13:44:06', '2018-08-02 13:44:06', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'left button', 'left_button', 'publish', 'closed', 'closed', '', 'field_5b630a5122d22', '', '', '2018-08-02 13:44:06', '2018-08-02 13:44:06', '', 34, 'http://localhost/intech-test/?post_type=acf-field&p=38', 3, 'acf-field', '', 0),
(40, 1, '2018-08-02 13:52:02', '2018-08-02 13:52:02', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href=\"http://localhost/intech-test/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-02 13:52:02', '2018-08-02 13:52:02', '', 2, 'http://localhost/intech-test/2018/08/02/2-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-08-02 13:52:17', '2018-08-02 13:52:17', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-02 13:52:17', '2018-08-02 13:52:17', '', 2, 'http://localhost/intech-test/2018/08/02/2-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-08-02 14:29:00', '2018-08-02 14:29:00', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-08-02 14:29:00', '2018-08-02 14:29:00', '', 2, 'http://localhost/intech-test/2018/08/02/2-autosave-v1/', 0, 'revision', '', 0),
(43, 1, '2018-08-02 14:39:52', '2018-08-02 14:39:52', '', 'HOME', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2018-08-08 09:11:50', '2018-08-08 09:11:50', '', 0, 'http://localhost/intech-test/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2018-08-02 14:43:26', '2018-08-02 14:43:26', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-02 14:43:26', '2018-08-02 14:43:26', '', 2, 'http://localhost/intech-test/2018/08/02/2-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-08-02 14:48:14', '2018-08-02 14:48:14', '{\n    \"inTech::header_banner_title_setting\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 14:48:14\"\n    },\n    \"inTech::header_banner_tagline_setting\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 14:48:14\"\n    },\n    \"inTech::header_banner_visibility\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-02 14:48:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f6bc7459-11dd-441a-b67b-aae6998aa5f0', '', '', '2018-08-02 14:48:14', '2018-08-02 14:48:14', '', 0, 'http://localhost/intech-test/2018/08/02/f6bc7459-11dd-441a-b67b-aae6998aa5f0/', 0, 'customize_changeset', '', 0),
(46, 1, '2018-08-03 04:08:14', '2018-08-03 04:08:14', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 04:08:14', '2018-08-03 04:08:14', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-08-03 04:20:23', '2018-08-03 04:20:23', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 04:20:23', '2018-08-03 04:20:23', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-08-03 04:59:59', '2018-08-03 04:59:59', '{\n    \"inTech::preset_style_setting\": {\n        \"value\": \"opensans\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-03 04:59:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7595b7e6-8b0b-42e7-b971-d270c4bc27ed', '', '', '2018-08-03 04:59:59', '2018-08-03 04:59:59', '', 0, 'http://localhost/intech-test/2018/08/03/7595b7e6-8b0b-42e7-b971-d270c4bc27ed/', 0, 'customize_changeset', '', 0),
(51, 1, '2018-08-03 05:17:45', '2018-08-03 05:17:45', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 05:17:45', '2018-08-03 05:17:45', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-08-03 05:21:38', '2018-08-03 05:21:38', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 05:21:38', '2018-08-03 05:21:38', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-08-03 05:22:23', '2018-08-03 05:22:23', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 05:22:23', '2018-08-03 05:22:23', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-08-03 05:23:33', '2018-08-03 05:23:33', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 05:23:33', '2018-08-03 05:23:33', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-08-03 07:54:10', '2018-08-03 07:54:10', '', '<i class=\"fab fa-twitter\"></i>', '', 'publish', 'closed', 'closed', '', '55', '', '', '2018-08-08 09:03:42', '2018-08-08 09:03:42', '', 0, 'http://localhost/intech-test/?p=55', 4, 'nav_menu_item', '', 0),
(56, 1, '2018-08-03 07:54:10', '2018-08-03 07:54:10', '', '<i class=\"fab fa-linkedin-in\"></i>', '', 'publish', 'closed', 'closed', '', '56', '', '', '2018-08-08 09:03:42', '2018-08-08 09:03:42', '', 0, 'http://localhost/intech-test/?p=56', 3, 'nav_menu_item', '', 0),
(57, 1, '2018-08-03 07:54:10', '2018-08-03 07:54:10', '', '<i class=\"fab fa-youtube-square\"></i>', '', 'publish', 'closed', 'closed', '', '57', '', '', '2018-08-08 09:03:41', '2018-08-08 09:03:41', '', 0, 'http://localhost/intech-test/?p=57', 2, 'nav_menu_item', '', 0),
(58, 1, '2018-08-03 07:54:09', '2018-08-03 07:54:09', '', '<i class=\"fab fa-facebook-f\"></i>', '', 'publish', 'closed', 'closed', '', '58', '', '', '2018-08-08 09:03:41', '2018-08-08 09:03:41', '', 0, 'http://localhost/intech-test/?p=58', 1, 'nav_menu_item', '', 0),
(60, 1, '2018-08-03 08:28:27', '2018-08-03 08:28:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:1:\"2\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Content slider', 'content-slider', 'publish', 'closed', 'closed', '', 'group_5b6411cd1df8b', '', '', '2018-08-03 08:28:43', '2018-08-03 08:28:43', '', 0, 'http://localhost/intech-test/?post_type=acf-field-group&#038;p=60', 0, 'acf-field-group', '', 0),
(61, 1, '2018-08-03 08:28:27', '2018-08-03 08:28:27', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Content Slider', 'content_slider', 'publish', 'closed', 'closed', '', 'field_5b6411d5938e4', '', '', '2018-08-03 08:28:43', '2018-08-03 08:28:43', '', 60, 'http://localhost/intech-test/?post_type=acf-field&#038;p=61', 0, 'acf-field', '', 0),
(62, 1, '2018-08-03 08:28:27', '2018-08-03 08:28:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5b641215938e5', '', '', '2018-08-03 08:28:27', '2018-08-03 08:28:27', '', 61, 'http://localhost/intech-test/?post_type=acf-field&p=62', 0, 'acf-field', '', 0),
(66, 1, '2018-08-03 08:29:45', '2018-08-03 08:29:45', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 08:29:45', '2018-08-03 08:29:45', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-08-03 10:10:26', '2018-08-03 10:10:26', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'cta', 'cta', 'publish', 'closed', 'closed', '', 'field_5b6429e528de3', '', '', '2018-08-03 10:10:26', '2018-08-03 10:10:26', '', 33, 'http://localhost/intech-test/?post_type=acf-field&p=67', 1, 'acf-field', '', 0),
(68, 1, '2018-08-03 10:10:26', '2018-08-03 10:10:26', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'heading', 'heading', 'publish', 'closed', 'closed', '', 'field_5b6429f828de4', '', '', '2018-08-03 10:10:26', '2018-08-03 10:10:26', '', 67, 'http://localhost/intech-test/?post_type=acf-field&p=68', 0, 'acf-field', '', 0),
(69, 1, '2018-08-03 10:11:08', '2018-08-03 10:11:08', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-03 10:11:08', '2018-08-03 10:11:08', '', 2, 'http://localhost/intech-test/2018/08/03/2-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-08-04 05:37:22', '2018-08-04 05:37:22', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-04 05:37:22', '2018-08-04 05:37:22', '', 2, 'http://localhost/intech-test/2018/08/04/2-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-08-04 05:47:16', '2018-08-04 05:47:16', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'cta products', 'cta_products', 'publish', 'closed', 'closed', '', 'field_5b653db886eb7', '', '', '2018-08-04 05:47:16', '2018-08-04 05:47:16', '', 33, 'http://localhost/intech-test/?post_type=acf-field&p=80', 2, 'acf-field', '', 0),
(81, 1, '2018-08-04 05:47:17', '2018-08-04 05:47:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5b653dcb86eb8', '', '', '2018-08-04 05:47:17', '2018-08-04 05:47:17', '', 80, 'http://localhost/intech-test/?post_type=acf-field&p=81', 0, 'acf-field', '', 0),
(82, 1, '2018-08-04 05:47:17', '2018-08-04 05:47:17', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'title', 'title', 'publish', 'closed', 'closed', '', 'field_5b653dd686eb9', '', '', '2018-08-04 05:47:17', '2018-08-04 05:47:17', '', 80, 'http://localhost/intech-test/?post_type=acf-field&p=82', 1, 'acf-field', '', 0),
(83, 1, '2018-08-04 05:47:50', '2018-08-04 05:47:50', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-04 05:47:50', '2018-08-04 05:47:50', '', 2, 'http://localhost/intech-test/2018/08/04/2-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-08-04 07:11:51', '2018-08-04 07:11:51', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-04 07:11:51', '2018-08-04 07:11:51', '', 2, 'http://localhost/intech-test/2018/08/04/2-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-08-04 13:33:15', '2018-08-04 13:33:15', '', '<i class=\"fa fa-angle-right\"></i> Exotic Vacations', 'Exotic Vacations', 'publish', 'closed', 'closed', '', 'exotic-vacations', '', '', '2018-08-10 12:59:07', '2018-08-10 12:59:07', '', 0, 'http://localhost/intech-test/?p=85', 7, 'nav_menu_item', '', 0),
(87, 1, '2018-08-05 16:15:21', '2018-08-05 16:15:21', '', 'home_bg', '', 'inherit', 'closed', 'closed', '', 'home_bg-2', '', '', '2018-08-05 16:15:21', '2018-08-05 16:15:21', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/home_bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-08-05 16:15:54', '2018-08-05 16:15:54', '', 'iphone', '', 'inherit', 'closed', 'closed', '', 'iphone-2', '', '', '2018-08-09 08:12:37', '2018-08-09 08:12:37', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/iphone.jpg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2018-08-05 16:16:23', '2018-08-05 16:16:23', '', 'tablet', '', 'inherit', 'closed', 'closed', '', 'tablet-2', '', '', '2018-08-05 16:16:23', '2018-08-05 16:16:23', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/tablet.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-08-05 16:16:41', '2018-08-05 16:16:41', '', 'laptop', '', 'inherit', 'closed', 'closed', '', 'laptop-2', '', '', '2018-08-05 16:16:41', '2018-08-05 16:16:41', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/laptop.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-08-05 16:16:53', '2018-08-05 16:16:53', '', 'mp3', '', 'inherit', 'closed', 'closed', '', 'mp3-2', '', '', '2018-08-05 16:16:53', '2018-08-05 16:16:53', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/mp3.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-08-05 16:17:09', '2018-08-05 16:17:09', '', 'gps', '', 'inherit', 'closed', 'closed', '', 'gps-2', '', '', '2018-08-05 16:17:09', '2018-08-05 16:17:09', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/gps.jpg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2018-08-05 16:17:24', '2018-08-05 16:17:24', '', 'camera', '', 'inherit', 'closed', 'closed', '', 'camera-2', '', '', '2018-08-05 16:17:24', '2018-08-05 16:17:24', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/camera.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-08-05 16:17:34', '2018-08-05 16:17:34', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-05 16:17:34', '2018-08-05 16:17:34', '', 2, 'http://localhost/intech-test/2018/08/05/2-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-08-05 16:18:08', '2018-08-05 16:18:08', '', 'slider-img-1', '', 'inherit', 'closed', 'closed', '', 'slider-img-1-2', '', '', '2018-08-05 16:18:11', '2018-08-05 16:18:11', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/slider-img-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-08-05 16:18:23', '2018-08-05 16:18:23', '', 'slider-img-2', '', 'inherit', 'closed', 'closed', '', 'slider-img-2-2', '', '', '2018-08-05 16:18:28', '2018-08-05 16:18:28', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/slider-img-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-08-05 16:18:42', '2018-08-05 16:18:42', '', 'slider-img-3', '', 'inherit', 'closed', 'closed', '', 'slider-img-3-2', '', '', '2018-08-05 16:18:44', '2018-08-05 16:18:44', '', 2, 'http://localhost/intech-test/wp-content/uploads/2018/08/slider-img-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-08-05 16:18:49', '2018-08-05 16:18:49', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-05 16:18:49', '2018-08-05 16:18:49', '', 2, 'http://localhost/intech-test/2018/08/05/2-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-08-05 16:20:32', '2018-08-05 16:20:32', '', 'icon', '', 'inherit', 'closed', 'closed', '', 'icon-2', '', '', '2018-08-05 16:20:32', '2018-08-05 16:20:32', '', 0, 'http://localhost/intech-test/wp-content/uploads/2018/08/icon.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-08-05 16:20:35', '2018-08-05 16:20:35', 'http://localhost/intech-test/wp-content/uploads/2018/08/cropped-icon.jpg', 'cropped-icon.jpg', '', 'inherit', 'closed', 'closed', '', 'cropped-icon-jpg-2', '', '', '2018-08-05 16:20:35', '2018-08-05 16:20:35', '', 0, 'http://localhost/intech-test/wp-content/uploads/2018/08/cropped-icon.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-08-05 16:20:37', '2018-08-05 16:20:37', '{\n    \"site_icon\": {\n        \"value\": 100,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-05 16:20:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cef7f861-2e0c-47d6-9a65-d4f76feed8d1', '', '', '2018-08-05 16:20:37', '2018-08-05 16:20:37', '', 0, 'http://localhost/intech-test/2018/08/05/cef7f861-2e0c-47d6-9a65-d4f76feed8d1/', 0, 'customize_changeset', '', 0),
(102, 1, '2018-08-05 16:30:59', '2018-08-05 16:30:59', '', 'logo-footer', '', 'inherit', 'closed', 'closed', '', 'logo-footer-2', '', '', '2018-08-05 16:30:59', '2018-08-05 16:30:59', '', 0, 'http://localhost/intech-test/wp-content/uploads/2018/08/logo-footer.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-08-05 17:00:04', '2018-08-05 17:00:04', '', 'logo', '', 'inherit', 'closed', 'closed', '', 'logo-2', '', '', '2018-08-05 17:00:04', '2018-08-05 17:00:04', '', 0, 'http://localhost/intech-test/wp-content/uploads/2018/08/logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(104, 1, '2018-08-05 17:00:16', '2018-08-05 17:00:16', '{\n    \"inTech::wp_bootstrap_starter_logo\": {\n        \"value\": \"http://localhost/intech-test/wp-content/uploads/2018/08/logo.svg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-08-05 17:00:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '59dcc247-2deb-4463-86e4-88697888ddc0', '', '', '2018-08-05 17:00:16', '2018-08-05 17:00:16', '', 0, 'http://localhost/intech-test/2018/08/05/59dcc247-2deb-4463-86e4-88697888ddc0/', 0, 'customize_changeset', '', 0),
(108, 1, '2018-08-08 09:04:51', '2018-08-08 09:04:51', '', 'ABOUT US', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2018-08-08 09:11:50', '2018-08-08 09:11:50', '', 0, 'http://localhost/intech-test/?p=108', 3, 'nav_menu_item', '', 0),
(109, 1, '2018-08-08 09:11:51', '2018-08-08 09:11:51', '', 'SERVICES', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-08-08 09:11:51', '2018-08-08 09:11:51', '', 0, 'http://localhost/intech-test/?p=109', 4, 'nav_menu_item', '', 0),
(110, 1, '2018-08-08 09:11:51', '2018-08-08 09:11:51', '', 'CONTACT US', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-08-08 09:11:51', '2018-08-08 09:11:51', '', 0, 'http://localhost/intech-test/?p=110', 5, 'nav_menu_item', '', 0),
(111, 1, '2018-08-08 13:26:44', '2018-08-08 13:26:44', '', 'Index', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-08 13:26:44', '2018-08-08 13:26:44', '', 2, 'http://localhost/intech-test/2018/08/08/2-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-08-09 08:06:28', '2018-08-09 08:06:28', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-08-10 14:06:17', '2018-08-10 14:06:17', '', 0, 'http://localhost/intech-test/shop/', 0, 'page', '', 0),
(113, 1, '2018-08-09 08:06:29', '2018-08-09 08:06:29', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-08-10 14:06:16', '2018-08-10 14:06:16', '', 0, 'http://localhost/intech-test/cart/', 0, 'page', '', 0),
(114, 1, '2018-08-09 08:06:29', '2018-08-09 08:06:29', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-08-10 14:06:16', '2018-08-10 14:06:16', '', 0, 'http://localhost/intech-test/checkout/', 0, 'page', '', 0),
(115, 1, '2018-08-09 08:06:30', '2018-08-09 08:06:30', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-08-10 14:06:17', '2018-08-10 14:06:17', '', 0, 'http://localhost/intech-test/my-account/', 0, 'page', '', 0),
(116, 1, '2018-08-09 08:13:57', '2018-08-09 08:13:57', '', 'Phone', '', 'publish', 'closed', 'closed', '', 'phone', '', '', '2018-08-09 08:27:53', '2018-08-09 08:27:53', '', 0, 'http://localhost/intech-test/?post_type=product&#038;p=116', 0, 'product', '', 0),
(117, 1, '2018-08-09 08:16:43', '2018-08-09 08:16:43', '', 'Laptop', '', 'publish', 'closed', 'closed', '', 'laptop', '', '', '2018-08-09 08:27:45', '2018-08-09 08:27:45', '', 0, 'http://localhost/intech-test/?post_type=product&#038;p=117', 0, 'product', '', 0),
(118, 1, '2018-08-09 08:17:21', '2018-08-09 08:17:21', '', 'Tablet', '', 'publish', 'closed', 'closed', '', 'tablet', '', '', '2018-08-09 08:27:39', '2018-08-09 08:27:39', '', 0, 'http://localhost/intech-test/?post_type=product&#038;p=118', 0, 'product', '', 0),
(119, 1, '2018-08-09 08:17:56', '2018-08-09 08:17:56', '', 'MP3', '', 'publish', 'closed', 'closed', '', 'mp3', '', '', '2018-08-09 08:27:33', '2018-08-09 08:27:33', '', 0, 'http://localhost/intech-test/?post_type=product&#038;p=119', 0, 'product', '', 0),
(120, 1, '2018-08-09 08:18:25', '2018-08-09 08:18:25', '', 'GPs', '', 'publish', 'closed', 'closed', '', 'gps', '', '', '2018-08-09 08:27:26', '2018-08-09 08:27:26', '', 0, 'http://localhost/intech-test/?post_type=product&#038;p=120', 0, 'product', '', 0),
(121, 1, '2018-08-09 08:21:14', '2018-08-09 08:21:14', '', 'Camera', '', 'publish', 'closed', 'closed', '', 'camera', '', '', '2018-08-09 08:27:15', '2018-08-09 08:27:15', '', 0, 'http://localhost/intech-test/?post_type=product&#038;p=121', 0, 'product', '', 0),
(122, 1, '2018-08-09 08:30:10', '2018-08-09 08:30:10', '', '<i class=\"fa fa-angle-right\"></i> Popular Industries', 'Popular Industries', 'publish', 'closed', 'closed', '', 'popular-industries-2', '', '', '2018-08-10 12:59:08', '2018-08-10 12:59:08', '', 0, 'http://localhost/intech-test/?p=122', 13, 'nav_menu_item', '', 0),
(123, 1, '2018-08-10 14:06:06', '2018-08-10 14:06:06', '[woocommerce_cart]', 'Cart', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2018-08-10 14:06:06', '2018-08-10 14:06:06', '', 113, 'http://localhost/intech-test/2018/08/10/113-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2018-08-10 14:06:06', '2018-08-10 14:06:06', '[woocommerce_checkout]', 'Checkout', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-08-10 14:06:06', '2018-08-10 14:06:06', '', 114, 'http://localhost/intech-test/2018/08/10/114-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-08-10 14:06:06', '2018-08-10 14:06:06', '[woocommerce_my_account]', 'My account', '', 'inherit', 'closed', 'closed', '', '115-revision-v1', '', '', '2018-08-10 14:06:06', '2018-08-10 14:06:06', '', 115, 'http://localhost/intech-test/2018/08/10/115-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2018-08-10 14:06:07', '2018-08-10 14:06:07', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-08-10 14:06:07', '2018-08-10 14:06:07', '', 112, 'http://localhost/intech-test/2018/08/10/112-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 19, 'product_count_product_cat', '0'),
(2, 20, 'order', '10'),
(3, 20, 'product_count_product_cat', '6'),
(4, 21, 'order', '7'),
(5, 22, 'order', '6'),
(6, 23, 'order', '4'),
(7, 24, 'order', '13'),
(8, 25, 'order', '11'),
(9, 26, 'order', '12'),
(10, 27, 'order', '3'),
(11, 28, 'order', '9'),
(12, 29, 'order', '1'),
(14, 31, 'order', '8'),
(15, 32, 'order', '5'),
(16, 29, 'product_count_product_cat', '6'),
(17, 19, 'order', '2');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'Products', 'products', 0),
(5, 'Social Media', 'social-media', 0),
(6, 'simple', 'simple', 0),
(7, 'grouped', 'grouped', 0),
(8, 'variable', 'variable', 0),
(9, 'external', 'external', 0),
(10, 'exclude-from-search', 'exclude-from-search', 0),
(11, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(12, 'featured', 'featured', 0),
(13, 'outofstock', 'outofstock', 0),
(14, 'rated-1', 'rated-1', 0),
(15, 'rated-2', 'rated-2', 0),
(16, 'rated-3', 'rated-3', 0),
(17, 'rated-4', 'rated-4', 0),
(18, 'rated-5', 'rated-5', 0),
(19, 'Uncategorized', 'uncategorized', 0),
(20, 'Technology', 'technology', 0),
(21, 'Popular Industries', 'popular-industries', 0),
(22, 'Olympic Games', 'olympic-games', 0),
(23, 'Live Healthy', 'live-healthy', 0),
(24, 'Vegetables', 'vegetables', 0),
(25, 'Top Books 2015', 'top-books-2015', 0),
(26, 'Top Music 2015', 'top-music-2015', 0),
(27, 'Exotic Vacations', 'exotic-vacations', 0),
(28, 'Sport Equipment', 'sport-equipment', 0),
(29, 'Best Jobs', 'best-jobs', 0),
(31, 'Recepies', 'recepies', 0),
(32, 'Nature', 'nature', 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(4, 2, 0),
(17, 3, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 4, 0),
(22, 4, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(43, 2, 0),
(55, 5, 0),
(56, 5, 0),
(57, 5, 0),
(58, 5, 0),
(85, 4, 0),
(108, 2, 0),
(109, 2, 0),
(110, 2, 0),
(116, 6, 0),
(116, 20, 0),
(116, 29, 0),
(117, 6, 0),
(117, 20, 0),
(117, 29, 0),
(118, 6, 0),
(118, 20, 0),
(118, 29, 0),
(119, 6, 0),
(119, 20, 0),
(119, 29, 0),
(120, 6, 0),
(120, 20, 0),
(120, 29, 0),
(121, 6, 0),
(121, 20, 0),
(121, 29, 0),
(122, 4, 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 13),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'product_type', '', 0, 6),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_type', '', 0, 0),
(9, 9, 'product_type', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_visibility', '', 0, 0),
(18, 18, 'product_visibility', '', 0, 0),
(19, 19, 'product_cat', '', 0, 0),
(20, 20, 'product_cat', '', 0, 6),
(21, 21, 'product_cat', '', 0, 0),
(22, 22, 'product_cat', '', 0, 0),
(23, 23, 'product_cat', '', 0, 0),
(24, 24, 'product_cat', '', 0, 0),
(25, 25, 'product_cat', '', 0, 0),
(26, 26, 'product_cat', '', 0, 0),
(27, 27, 'product_cat', '', 0, 0),
(28, 28, 'product_cat', '', 0, 0),
(29, 29, 'product_cat', '', 0, 6),
(31, 31, 'product_cat', '', 0, 0),
(32, 32, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'intech'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:\"54792aee1bcb2518b8f3b3080f160e45908a6cdf2c357791fb65be72b03d8ee7\";a:4:{s:10:\"expiration\";i:1534411358;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533201758;}s:64:\"b3ac008173eba7678c0c7b14274752fedcc8dd4b92af9251090c66b76229de9a\";a:4:{s:10:\"expiration\";i:1533657222;s:2:\"ip\";s:12:\"92.86.63.168\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533484422;}s:64:\"cf36f4dfc79332c54c8a543005e2ff3e1d49e8d9cd8dc4df537f3ab63ffb35e9\";a:4:{s:10:\"expiration\";i:1533657222;s:2:\"ip\";s:12:\"92.86.63.168\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533484422;}s:64:\"ecd572e2fd79ade9df22fd1464f49f5fa52bec0fd6d59969082423e08620e4dc\";a:4:{s:10:\"expiration\";i:1534736748;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533527148;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'managenav-menuscolumnshidden', 'a:3:{i:0;s:11:\"css-classes\";i:1;s:3:\"xfn\";i:2;s:11:\"description\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1533217923'),
(22, 1, 'nav_menu_recently_edited', '4'),
(23, 1, 'closedpostboxes_page', 'a:1:{i:0;s:23:\"acf-group_5b6411cd1df8b\";}'),
(24, 1, 'metaboxhidden_page', 'a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(25, 1, 'meta-box-order_page', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:107:\"acf-group_5b6309ef1083b,acf-group_5b6411cd1df8b,revisionsdiv,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(26, 1, 'screen_layout_page', '2'),
(27, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"92.86.63.0\";}'),
(28, 1, 'acf_user_settings', 'a:0:{}'),
(29, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(30, 1, 'wp_media_library_mode', 'grid'),
(31, 1, 'plugins_per_page', '999'),
(32, 1, 'jetpack_tracks_anon_id', 'jetpack:N45qEi5CeHixKyVy5+OtPqeR'),
(33, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(34, 1, 'dismissed_no_shipping_methods_notice', '1'),
(35, 1, 'dismissed_template_files_notice', '1'),
(36, 1, 'wc_last_active', '1533859200'),
(37, 1, 'dismissed_no_secure_connection_notice', '1');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'intech', '$P$BHVIbnoQ1ZIcLZRVc6BXXes4SS76Ie/', 'intech', 'criss_gabriel@yahoo.com', '', '2018-08-02 09:22:10', '', 0, 'intech');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Salvarea datelor din tabel `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:715:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"HD\";s:7:\"country\";s:2:\"RO\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"HD\";s:16:\"shipping_country\";s:2:\"RO\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"criss_gabriel@yahoo.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1533974971);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1223;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Restrictii pentru tabele sterse
--

--
-- Restrictii pentru tabele `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
