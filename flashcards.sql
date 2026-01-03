-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02/01/2026 às 14:05
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `flashcards`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2025-12-29 10:54:07', '2025-12-29 13:54:07', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_fsrs_reviews`
--

CREATE TABLE `wp_fsrs_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `card_id` bigint(20) UNSIGNED NOT NULL,
  `rating` varchar(10) NOT NULL,
  `review_date` datetime NOT NULL,
  `next_review` datetime NOT NULL,
  `stability` float NOT NULL,
  `difficulty` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:12:{i:1767192846;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767192848;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1767194646;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767196446;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767232987;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767234450;a:1:{s:30:\"tutor_once_in_day_run_schedule\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767275648;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1767276187;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1767276190;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1767623450;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1767707648;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://localhost/flashcards', 'on'),
(3, 'home', 'http://localhost/flashcards', 'on'),
(4, 'blogname', 'flashcards', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'cguilhermear1999@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '0', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:260:{s:30:\"courses/(.+?)/lessons/(.+?)/?$\";s:43:\"index.php?post_type=lesson&name=$matches[2]\";s:30:\"courses/(.+?)/quizzes/(.+?)/?$\";s:47:\"index.php?post_type=tutor_quiz&name=$matches[2]\";s:34:\"courses/(.+?)/assignments/(.+?)/?$\";s:54:\"index.php?post_type=tutor_assignments&name=$matches[2]\";s:35:\"courses/(.+?)/zoom-lessons/(.+?)/?$\";s:55:\"index.php?post_type=tutor_zoom_meeting&name=$matches[2]\";s:35:\"courses/(.+?)/meet-lessons/(.+?)/?$\";s:54:\"index.php?post_type=tutor-google-meet&name=$matches[2]\";s:18:\"video-url/(.+?)/?$\";s:61:\"index.php?post_type=lesson&lesson_video=true&name=$matches[1]\";s:16:\"profile/(.+?)/?$\";s:44:\"index.php?tutor_profile_username=$matches[1]\";s:17:\"(painel)/index/?$\";s:57:\"index.php?pagename=$matches[1]&tutor_dashboard_page=index\";s:23:\"(painel)/index/(.+?)/?$\";s:94:\"index.php?pagename=$matches[1]&tutor_dashboard_page=index&tutor_dashboard_sub_page=$matches[2]\";s:22:\"(painel)/my-profile/?$\";s:62:\"index.php?pagename=$matches[1]&tutor_dashboard_page=my-profile\";s:28:\"(painel)/my-profile/(.+?)/?$\";s:99:\"index.php?pagename=$matches[1]&tutor_dashboard_page=my-profile&tutor_dashboard_sub_page=$matches[2]\";s:28:\"(painel)/enrolled-courses/?$\";s:68:\"index.php?pagename=$matches[1]&tutor_dashboard_page=enrolled-courses\";s:34:\"(painel)/enrolled-courses/(.+?)/?$\";s:105:\"index.php?pagename=$matches[1]&tutor_dashboard_page=enrolled-courses&tutor_dashboard_sub_page=$matches[2]\";s:19:\"(painel)/reviews/?$\";s:59:\"index.php?pagename=$matches[1]&tutor_dashboard_page=reviews\";s:25:\"(painel)/reviews/(.+?)/?$\";s:96:\"index.php?pagename=$matches[1]&tutor_dashboard_page=reviews&tutor_dashboard_sub_page=$matches[2]\";s:28:\"(painel)/my-quiz-attempts/?$\";s:68:\"index.php?pagename=$matches[1]&tutor_dashboard_page=my-quiz-attempts\";s:34:\"(painel)/my-quiz-attempts/(.+?)/?$\";s:105:\"index.php?pagename=$matches[1]&tutor_dashboard_page=my-quiz-attempts&tutor_dashboard_sub_page=$matches[2]\";s:20:\"(painel)/wishlist/?$\";s:60:\"index.php?pagename=$matches[1]&tutor_dashboard_page=wishlist\";s:26:\"(painel)/wishlist/(.+?)/?$\";s:97:\"index.php?pagename=$matches[1]&tutor_dashboard_page=wishlist&tutor_dashboard_sub_page=$matches[2]\";s:28:\"(painel)/purchase_history/?$\";s:68:\"index.php?pagename=$matches[1]&tutor_dashboard_page=purchase_history\";s:34:\"(painel)/purchase_history/(.+?)/?$\";s:105:\"index.php?pagename=$matches[1]&tutor_dashboard_page=purchase_history&tutor_dashboard_sub_page=$matches[2]\";s:27:\"(painel)/question-answer/?$\";s:67:\"index.php?pagename=$matches[1]&tutor_dashboard_page=question-answer\";s:33:\"(painel)/question-answer/(.+?)/?$\";s:104:\"index.php?pagename=$matches[1]&tutor_dashboard_page=question-answer&tutor_dashboard_sub_page=$matches[2]\";s:23:\"(painel)/separator-1/?$\";s:63:\"index.php?pagename=$matches[1]&tutor_dashboard_page=separator-1\";s:29:\"(painel)/separator-1/(.+?)/?$\";s:100:\"index.php?pagename=$matches[1]&tutor_dashboard_page=separator-1&tutor_dashboard_sub_page=$matches[2]\";s:25:\"(painel)/create-course/?$\";s:65:\"index.php?pagename=$matches[1]&tutor_dashboard_page=create-course\";s:31:\"(painel)/create-course/(.+?)/?$\";s:102:\"index.php?pagename=$matches[1]&tutor_dashboard_page=create-course&tutor_dashboard_sub_page=$matches[2]\";s:25:\"(painel)/create-bundle/?$\";s:65:\"index.php?pagename=$matches[1]&tutor_dashboard_page=create-bundle\";s:31:\"(painel)/create-bundle/(.+?)/?$\";s:102:\"index.php?pagename=$matches[1]&tutor_dashboard_page=create-bundle&tutor_dashboard_sub_page=$matches[2]\";s:22:\"(painel)/my-courses/?$\";s:62:\"index.php?pagename=$matches[1]&tutor_dashboard_page=my-courses\";s:28:\"(painel)/my-courses/(.+?)/?$\";s:99:\"index.php?pagename=$matches[1]&tutor_dashboard_page=my-courses&tutor_dashboard_sub_page=$matches[2]\";s:25:\"(painel)/announcements/?$\";s:65:\"index.php?pagename=$matches[1]&tutor_dashboard_page=announcements\";s:31:\"(painel)/announcements/(.+?)/?$\";s:102:\"index.php?pagename=$matches[1]&tutor_dashboard_page=announcements&tutor_dashboard_sub_page=$matches[2]\";s:20:\"(painel)/withdraw/?$\";s:60:\"index.php?pagename=$matches[1]&tutor_dashboard_page=withdraw\";s:26:\"(painel)/withdraw/(.+?)/?$\";s:97:\"index.php?pagename=$matches[1]&tutor_dashboard_page=withdraw&tutor_dashboard_sub_page=$matches[2]\";s:25:\"(painel)/quiz-attempts/?$\";s:65:\"index.php?pagename=$matches[1]&tutor_dashboard_page=quiz-attempts\";s:31:\"(painel)/quiz-attempts/(.+?)/?$\";s:102:\"index.php?pagename=$matches[1]&tutor_dashboard_page=quiz-attempts&tutor_dashboard_sub_page=$matches[2]\";s:23:\"(painel)/separator-2/?$\";s:63:\"index.php?pagename=$matches[1]&tutor_dashboard_page=separator-2\";s:29:\"(painel)/separator-2/(.+?)/?$\";s:100:\"index.php?pagename=$matches[1]&tutor_dashboard_page=separator-2&tutor_dashboard_sub_page=$matches[2]\";s:20:\"(painel)/settings/?$\";s:60:\"index.php?pagename=$matches[1]&tutor_dashboard_page=settings\";s:26:\"(painel)/settings/(.+?)/?$\";s:97:\"index.php?pagename=$matches[1]&tutor_dashboard_page=settings&tutor_dashboard_sub_page=$matches[2]\";s:18:\"(painel)/logout/?$\";s:58:\"index.php?pagename=$matches[1]&tutor_dashboard_page=logout\";s:24:\"(painel)/logout/(.+?)/?$\";s:95:\"index.php?pagename=$matches[1]&tutor_dashboard_page=logout&tutor_dashboard_sub_page=$matches[2]\";s:29:\"(painel)/retrieve-password/?$\";s:69:\"index.php?pagename=$matches[1]&tutor_dashboard_page=retrieve-password\";s:35:\"(painel)/retrieve-password/(.+?)/?$\";s:106:\"index.php?pagename=$matches[1]&tutor_dashboard_page=retrieve-password&tutor_dashboard_sub_page=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"courses/?$\";s:27:\"index.php?post_type=courses\";s:40:\"courses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=courses&feed=$matches[1]\";s:35:\"courses/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=courses&feed=$matches[1]\";s:27:\"courses/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=courses&paged=$matches[1]\";s:9:\"lesson/?$\";s:37:\"index.php?post_type=tutor_assignments\";s:39:\"lesson/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=tutor_assignments&feed=$matches[1]\";s:34:\"lesson/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?post_type=tutor_assignments&feed=$matches[1]\";s:26:\"lesson/page/([0-9]{1,})/?$\";s:55:\"index.php?post_type=tutor_assignments&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"fsrs_deck/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"fsrs_deck/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"fsrs_deck/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"fsrs_deck/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"fsrs_deck/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"fsrs_deck/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"fsrs_deck/([^/]+)/embed/?$\";s:42:\"index.php?fsrs_deck=$matches[1]&embed=true\";s:30:\"fsrs_deck/([^/]+)/trackback/?$\";s:36:\"index.php?fsrs_deck=$matches[1]&tb=1\";s:38:\"fsrs_deck/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?fsrs_deck=$matches[1]&paged=$matches[2]\";s:45:\"fsrs_deck/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?fsrs_deck=$matches[1]&cpage=$matches[2]\";s:34:\"fsrs_deck/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?fsrs_deck=$matches[1]&page=$matches[2]\";s:26:\"fsrs_deck/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"fsrs_deck/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"fsrs_deck/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"fsrs_deck/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"fsrs_deck/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"fsrs_deck/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"fsrs_card/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"fsrs_card/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"fsrs_card/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"fsrs_card/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"fsrs_card/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"fsrs_card/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"fsrs_card/([^/]+)/embed/?$\";s:42:\"index.php?fsrs_card=$matches[1]&embed=true\";s:30:\"fsrs_card/([^/]+)/trackback/?$\";s:36:\"index.php?fsrs_card=$matches[1]&tb=1\";s:38:\"fsrs_card/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?fsrs_card=$matches[1]&paged=$matches[2]\";s:45:\"fsrs_card/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?fsrs_card=$matches[1]&cpage=$matches[2]\";s:34:\"fsrs_card/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?fsrs_card=$matches[1]&page=$matches[2]\";s:26:\"fsrs_card/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"fsrs_card/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"fsrs_card/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"fsrs_card/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"fsrs_card/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"fsrs_card/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"courses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"courses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"courses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"courses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"courses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"courses/([^/]+)/embed/?$\";s:40:\"index.php?courses=$matches[1]&embed=true\";s:28:\"courses/([^/]+)/trackback/?$\";s:34:\"index.php?courses=$matches[1]&tb=1\";s:48:\"courses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?courses=$matches[1]&feed=$matches[2]\";s:43:\"courses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?courses=$matches[1]&feed=$matches[2]\";s:36:\"courses/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?courses=$matches[1]&paged=$matches[2]\";s:43:\"courses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?courses=$matches[1]&cpage=$matches[2]\";s:32:\"courses/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?courses=$matches[1]&page=$matches[2]\";s:24:\"courses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"courses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"courses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"courses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"courses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"course-category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?course-category=$matches[1]&feed=$matches[2]\";s:51:\"course-category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?course-category=$matches[1]&feed=$matches[2]\";s:32:\"course-category/([^/]+)/embed/?$\";s:48:\"index.php?course-category=$matches[1]&embed=true\";s:44:\"course-category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?course-category=$matches[1]&paged=$matches[2]\";s:26:\"course-category/([^/]+)/?$\";s:37:\"index.php?course-category=$matches[1]\";s:51:\"course-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?course-tag=$matches[1]&feed=$matches[2]\";s:46:\"course-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?course-tag=$matches[1]&feed=$matches[2]\";s:27:\"course-tag/([^/]+)/embed/?$\";s:43:\"index.php?course-tag=$matches[1]&embed=true\";s:39:\"course-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?course-tag=$matches[1]&paged=$matches[2]\";s:21:\"course-tag/([^/]+)/?$\";s:32:\"index.php?course-tag=$matches[1]\";s:34:\"lesson/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"lesson/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"lesson/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"lesson/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"lesson/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"lesson/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"lesson/([^/]+)/embed/?$\";s:50:\"index.php?tutor_assignments=$matches[1]&embed=true\";s:27:\"lesson/([^/]+)/trackback/?$\";s:44:\"index.php?tutor_assignments=$matches[1]&tb=1\";s:47:\"lesson/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?tutor_assignments=$matches[1]&feed=$matches[2]\";s:42:\"lesson/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:56:\"index.php?tutor_assignments=$matches[1]&feed=$matches[2]\";s:35:\"lesson/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?tutor_assignments=$matches[1]&paged=$matches[2]\";s:42:\"lesson/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?tutor_assignments=$matches[1]&cpage=$matches[2]\";s:31:\"lesson/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?tutor_assignments=$matches[1]&page=$matches[2]\";s:23:\"lesson/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"lesson/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"lesson/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"lesson/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"lesson/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"lesson/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"topics/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"topics/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"topics/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"topics/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"topics/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"topics/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"topics/([^/]+)/embed/?$\";s:54:\"index.php?post_type=topics&name=$matches[1]&embed=true\";s:27:\"topics/([^/]+)/trackback/?$\";s:48:\"index.php?post_type=topics&name=$matches[1]&tb=1\";s:35:\"topics/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?post_type=topics&name=$matches[1]&paged=$matches[2]\";s:42:\"topics/([^/]+)/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?post_type=topics&name=$matches[1]&cpage=$matches[2]\";s:31:\"topics/([^/]+)(?:/([0-9]+))?/?$\";s:60:\"index.php?post_type=topics&name=$matches[1]&page=$matches[2]\";s:23:\"topics/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"topics/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"topics/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"topics/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"topics/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"topics/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"tutor_enrolled/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"tutor_enrolled/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"tutor_enrolled/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"tutor_enrolled/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"tutor_enrolled/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"tutor_enrolled/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"tutor_enrolled/([^/]+)/embed/?$\";s:62:\"index.php?post_type=tutor_enrolled&name=$matches[1]&embed=true\";s:35:\"tutor_enrolled/([^/]+)/trackback/?$\";s:56:\"index.php?post_type=tutor_enrolled&name=$matches[1]&tb=1\";s:43:\"tutor_enrolled/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?post_type=tutor_enrolled&name=$matches[1]&paged=$matches[2]\";s:50:\"tutor_enrolled/([^/]+)/comment-page-([0-9]{1,})/?$\";s:69:\"index.php?post_type=tutor_enrolled&name=$matches[1]&cpage=$matches[2]\";s:39:\"tutor_enrolled/([^/]+)(?:/([0-9]+))?/?$\";s:68:\"index.php?post_type=tutor_enrolled&name=$matches[1]&page=$matches[2]\";s:31:\"tutor_enrolled/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"tutor_enrolled/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"tutor_enrolled/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"tutor_enrolled/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"tutor_enrolled/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"tutor_enrolled/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:2:{i:0;s:47:\"fsrs-flashcards-tutor/fsrs-flashcards-tutor.php\";i:1;s:15:\"tutor/tutor.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'twentytwentyfive', 'on'),
(42, 'stylesheet', 'twentytwentyfive', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60717', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '0', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:0:{}', 'on'),
(78, 'widget_text', 'a:0:{}', 'on'),
(79, 'widget_rss', 'a:0:{}', 'on'),
(80, 'uninstall_plugins', 'a:2:{s:47:\"fsrs-flashcards-tutor/fsrs-flashcards-tutor.php\";s:21:\"fsrs_uninstall_plugin\";s:15:\"tutor/tutor.php\";a:2:{i:0;s:11:\"TUTOR\\Tutor\";i:1;s:15:\"tutor_uninstall\";}}', 'off'),
(81, 'timezone_string', 'America/Sao_Paulo', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1782568446', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '60717', 'on'),
(103, 'wp_user_roles', 'a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:95:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"manage_tutor\";b:1;s:23:\"manage_tutor_instructor\";b:1;s:17:\"edit_tutor_course\";b:1;s:17:\"read_tutor_course\";b:1;s:19:\"delete_tutor_course\";b:1;s:20:\"delete_tutor_courses\";b:1;s:18:\"edit_tutor_courses\";b:1;s:25:\"edit_others_tutor_courses\";b:1;s:26:\"read_private_tutor_courses\";b:1;s:17:\"edit_tutor_lesson\";b:1;s:17:\"read_tutor_lesson\";b:1;s:19:\"delete_tutor_lesson\";b:1;s:20:\"delete_tutor_lessons\";b:1;s:18:\"edit_tutor_lessons\";b:1;s:25:\"edit_others_tutor_lessons\";b:1;s:26:\"read_private_tutor_lessons\";b:1;s:21:\"publish_tutor_lessons\";b:1;s:15:\"edit_tutor_quiz\";b:1;s:15:\"read_tutor_quiz\";b:1;s:17:\"delete_tutor_quiz\";b:1;s:20:\"delete_tutor_quizzes\";b:1;s:18:\"edit_tutor_quizzes\";b:1;s:25:\"edit_others_tutor_quizzes\";b:1;s:26:\"read_private_tutor_quizzes\";b:1;s:21:\"publish_tutor_quizzes\";b:1;s:19:\"edit_tutor_question\";b:1;s:19:\"read_tutor_question\";b:1;s:21:\"delete_tutor_question\";b:1;s:22:\"delete_tutor_questions\";b:1;s:20:\"edit_tutor_questions\";b:1;s:27:\"edit_others_tutor_questions\";b:1;s:23:\"publish_tutor_questions\";b:1;s:28:\"read_private_tutor_questions\";b:1;s:21:\"publish_tutor_courses\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:16:\"tutor_instructor\";a:2:{s:4:\"name\";s:23:\"Instrutor da plataforma\";s:12:\"capabilities\";a:35:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:12:\"upload_files\";b:1;s:23:\"manage_tutor_instructor\";b:1;s:17:\"edit_tutor_course\";b:1;s:17:\"read_tutor_course\";b:1;s:19:\"delete_tutor_course\";b:1;s:20:\"delete_tutor_courses\";b:1;s:18:\"edit_tutor_courses\";b:1;s:25:\"edit_others_tutor_courses\";b:1;s:26:\"read_private_tutor_courses\";b:1;s:17:\"edit_tutor_lesson\";b:1;s:17:\"read_tutor_lesson\";b:1;s:19:\"delete_tutor_lesson\";b:1;s:20:\"delete_tutor_lessons\";b:1;s:18:\"edit_tutor_lessons\";b:1;s:25:\"edit_others_tutor_lessons\";b:1;s:26:\"read_private_tutor_lessons\";b:1;s:21:\"publish_tutor_lessons\";b:1;s:15:\"edit_tutor_quiz\";b:1;s:15:\"read_tutor_quiz\";b:1;s:17:\"delete_tutor_quiz\";b:1;s:20:\"delete_tutor_quizzes\";b:1;s:18:\"edit_tutor_quizzes\";b:1;s:25:\"edit_others_tutor_quizzes\";b:1;s:26:\"read_private_tutor_quizzes\";b:1;s:21:\"publish_tutor_quizzes\";b:1;s:19:\"edit_tutor_question\";b:1;s:19:\"read_tutor_question\";b:1;s:21:\"delete_tutor_question\";b:1;s:22:\"delete_tutor_questions\";b:1;s:20:\"edit_tutor_questions\";b:1;s:27:\"edit_others_tutor_questions\";b:1;s:23:\"publish_tutor_questions\";b:1;s:28:\"read_private_tutor_questions\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'WPLANG', 'pt_BR', 'auto'),
(106, 'user_count', '1', 'off'),
(107, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:3:\"6.9\";s:5:\"files\";a:584:{i:0;s:27:\"accordion-heading/style.css\";i:1;s:31:\"accordion-heading/style.min.css\";i:2;s:31:\"accordion-heading/style-rtl.css\";i:3;s:35:\"accordion-heading/style-rtl.min.css\";i:4;s:24:\"accordion-item/style.css\";i:5;s:28:\"accordion-item/style.min.css\";i:6;s:28:\"accordion-item/style-rtl.css\";i:7;s:32:\"accordion-item/style-rtl.min.css\";i:8;s:25:\"accordion-panel/style.css\";i:9;s:29:\"accordion-panel/style.min.css\";i:10;s:29:\"accordion-panel/style-rtl.css\";i:11;s:33:\"accordion-panel/style-rtl.min.css\";i:12;s:19:\"accordion/style.css\";i:13;s:23:\"accordion/style.min.css\";i:14;s:23:\"accordion/style-rtl.css\";i:15;s:27:\"accordion/style-rtl.min.css\";i:16;s:19:\"archives/editor.css\";i:17;s:23:\"archives/editor.min.css\";i:18;s:23:\"archives/editor-rtl.css\";i:19;s:27:\"archives/editor-rtl.min.css\";i:20;s:18:\"archives/style.css\";i:21;s:22:\"archives/style.min.css\";i:22;s:22:\"archives/style-rtl.css\";i:23;s:26:\"archives/style-rtl.min.css\";i:24;s:16:\"audio/editor.css\";i:25;s:20:\"audio/editor.min.css\";i:26;s:20:\"audio/editor-rtl.css\";i:27;s:24:\"audio/editor-rtl.min.css\";i:28;s:15:\"audio/style.css\";i:29;s:19:\"audio/style.min.css\";i:30;s:19:\"audio/style-rtl.css\";i:31;s:23:\"audio/style-rtl.min.css\";i:32;s:15:\"audio/theme.css\";i:33;s:19:\"audio/theme.min.css\";i:34;s:19:\"audio/theme-rtl.css\";i:35;s:23:\"audio/theme-rtl.min.css\";i:36;s:17:\"avatar/editor.css\";i:37;s:21:\"avatar/editor.min.css\";i:38;s:21:\"avatar/editor-rtl.css\";i:39;s:25:\"avatar/editor-rtl.min.css\";i:40;s:16:\"avatar/style.css\";i:41;s:20:\"avatar/style.min.css\";i:42;s:20:\"avatar/style-rtl.css\";i:43;s:24:\"avatar/style-rtl.min.css\";i:44;s:17:\"button/editor.css\";i:45;s:21:\"button/editor.min.css\";i:46;s:21:\"button/editor-rtl.css\";i:47;s:25:\"button/editor-rtl.min.css\";i:48;s:18:\"buttons/editor.css\";i:49;s:22:\"buttons/editor.min.css\";i:50;s:22:\"buttons/editor-rtl.css\";i:51;s:26:\"buttons/editor-rtl.min.css\";i:52;s:17:\"buttons/style.css\";i:53;s:21:\"buttons/style.min.css\";i:54;s:21:\"buttons/style-rtl.css\";i:55;s:25:\"buttons/style-rtl.min.css\";i:56;s:16:\"button/style.css\";i:57;s:20:\"button/style.min.css\";i:58;s:20:\"button/style-rtl.css\";i:59;s:24:\"button/style-rtl.min.css\";i:60;s:18:\"calendar/style.css\";i:61;s:22:\"calendar/style.min.css\";i:62;s:22:\"calendar/style-rtl.css\";i:63;s:26:\"calendar/style-rtl.min.css\";i:64;s:21:\"categories/editor.css\";i:65;s:25:\"categories/editor.min.css\";i:66;s:25:\"categories/editor-rtl.css\";i:67;s:29:\"categories/editor-rtl.min.css\";i:68;s:20:\"categories/style.css\";i:69;s:24:\"categories/style.min.css\";i:70;s:24:\"categories/style-rtl.css\";i:71;s:28:\"categories/style-rtl.min.css\";i:72;s:15:\"code/editor.css\";i:73;s:19:\"code/editor.min.css\";i:74;s:19:\"code/editor-rtl.css\";i:75;s:23:\"code/editor-rtl.min.css\";i:76;s:14:\"code/style.css\";i:77;s:18:\"code/style.min.css\";i:78;s:18:\"code/style-rtl.css\";i:79;s:22:\"code/style-rtl.min.css\";i:80;s:14:\"code/theme.css\";i:81;s:18:\"code/theme.min.css\";i:82;s:18:\"code/theme-rtl.css\";i:83;s:22:\"code/theme-rtl.min.css\";i:84;s:18:\"columns/editor.css\";i:85;s:22:\"columns/editor.min.css\";i:86;s:22:\"columns/editor-rtl.css\";i:87;s:26:\"columns/editor-rtl.min.css\";i:88;s:17:\"columns/style.css\";i:89;s:21:\"columns/style.min.css\";i:90;s:21:\"columns/style-rtl.css\";i:91;s:25:\"columns/style-rtl.min.css\";i:92;s:29:\"comment-author-name/style.css\";i:93;s:33:\"comment-author-name/style.min.css\";i:94;s:33:\"comment-author-name/style-rtl.css\";i:95;s:37:\"comment-author-name/style-rtl.min.css\";i:96;s:25:\"comment-content/style.css\";i:97;s:29:\"comment-content/style.min.css\";i:98;s:29:\"comment-content/style-rtl.css\";i:99;s:33:\"comment-content/style-rtl.min.css\";i:100;s:22:\"comment-date/style.css\";i:101;s:26:\"comment-date/style.min.css\";i:102;s:26:\"comment-date/style-rtl.css\";i:103;s:30:\"comment-date/style-rtl.min.css\";i:104;s:27:\"comment-edit-link/style.css\";i:105;s:31:\"comment-edit-link/style.min.css\";i:106;s:31:\"comment-edit-link/style-rtl.css\";i:107;s:35:\"comment-edit-link/style-rtl.min.css\";i:108;s:28:\"comment-reply-link/style.css\";i:109;s:32:\"comment-reply-link/style.min.css\";i:110;s:32:\"comment-reply-link/style-rtl.css\";i:111;s:36:\"comment-reply-link/style-rtl.min.css\";i:112;s:19:\"comments/editor.css\";i:113;s:23:\"comments/editor.min.css\";i:114;s:23:\"comments/editor-rtl.css\";i:115;s:27:\"comments/editor-rtl.min.css\";i:116;s:30:\"comments-pagination/editor.css\";i:117;s:34:\"comments-pagination/editor.min.css\";i:118;s:34:\"comments-pagination/editor-rtl.css\";i:119;s:38:\"comments-pagination/editor-rtl.min.css\";i:120;s:38:\"comments-pagination-numbers/editor.css\";i:121;s:42:\"comments-pagination-numbers/editor.min.css\";i:122;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:123;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:124;s:29:\"comments-pagination/style.css\";i:125;s:33:\"comments-pagination/style.min.css\";i:126;s:33:\"comments-pagination/style-rtl.css\";i:127;s:37:\"comments-pagination/style-rtl.min.css\";i:128;s:18:\"comments/style.css\";i:129;s:22:\"comments/style.min.css\";i:130;s:22:\"comments/style-rtl.css\";i:131;s:26:\"comments/style-rtl.min.css\";i:132;s:25:\"comments-title/editor.css\";i:133;s:29:\"comments-title/editor.min.css\";i:134;s:29:\"comments-title/editor-rtl.css\";i:135;s:33:\"comments-title/editor-rtl.min.css\";i:136;s:26:\"comment-template/style.css\";i:137;s:30:\"comment-template/style.min.css\";i:138;s:30:\"comment-template/style-rtl.css\";i:139;s:34:\"comment-template/style-rtl.min.css\";i:140;s:16:\"cover/editor.css\";i:141;s:20:\"cover/editor.min.css\";i:142;s:20:\"cover/editor-rtl.css\";i:143;s:24:\"cover/editor-rtl.min.css\";i:144;s:15:\"cover/style.css\";i:145;s:19:\"cover/style.min.css\";i:146;s:19:\"cover/style-rtl.css\";i:147;s:23:\"cover/style-rtl.min.css\";i:148;s:18:\"details/editor.css\";i:149;s:22:\"details/editor.min.css\";i:150;s:22:\"details/editor-rtl.css\";i:151;s:26:\"details/editor-rtl.min.css\";i:152;s:17:\"details/style.css\";i:153;s:21:\"details/style.min.css\";i:154;s:21:\"details/style-rtl.css\";i:155;s:25:\"details/style-rtl.min.css\";i:156;s:16:\"embed/editor.css\";i:157;s:20:\"embed/editor.min.css\";i:158;s:20:\"embed/editor-rtl.css\";i:159;s:24:\"embed/editor-rtl.min.css\";i:160;s:15:\"embed/style.css\";i:161;s:19:\"embed/style.min.css\";i:162;s:19:\"embed/style-rtl.css\";i:163;s:23:\"embed/style-rtl.min.css\";i:164;s:15:\"embed/theme.css\";i:165;s:19:\"embed/theme.min.css\";i:166;s:19:\"embed/theme-rtl.css\";i:167;s:23:\"embed/theme-rtl.min.css\";i:168;s:15:\"file/editor.css\";i:169;s:19:\"file/editor.min.css\";i:170;s:19:\"file/editor-rtl.css\";i:171;s:23:\"file/editor-rtl.min.css\";i:172;s:14:\"file/style.css\";i:173;s:18:\"file/style.min.css\";i:174;s:18:\"file/style-rtl.css\";i:175;s:22:\"file/style-rtl.min.css\";i:176;s:19:\"footnotes/style.css\";i:177;s:23:\"footnotes/style.min.css\";i:178;s:23:\"footnotes/style-rtl.css\";i:179;s:27:\"footnotes/style-rtl.min.css\";i:180;s:19:\"freeform/editor.css\";i:181;s:23:\"freeform/editor.min.css\";i:182;s:23:\"freeform/editor-rtl.css\";i:183;s:27:\"freeform/editor-rtl.min.css\";i:184;s:18:\"gallery/editor.css\";i:185;s:22:\"gallery/editor.min.css\";i:186;s:22:\"gallery/editor-rtl.css\";i:187;s:26:\"gallery/editor-rtl.min.css\";i:188;s:17:\"gallery/style.css\";i:189;s:21:\"gallery/style.min.css\";i:190;s:21:\"gallery/style-rtl.css\";i:191;s:25:\"gallery/style-rtl.min.css\";i:192;s:17:\"gallery/theme.css\";i:193;s:21:\"gallery/theme.min.css\";i:194;s:21:\"gallery/theme-rtl.css\";i:195;s:25:\"gallery/theme-rtl.min.css\";i:196;s:16:\"group/editor.css\";i:197;s:20:\"group/editor.min.css\";i:198;s:20:\"group/editor-rtl.css\";i:199;s:24:\"group/editor-rtl.min.css\";i:200;s:15:\"group/style.css\";i:201;s:19:\"group/style.min.css\";i:202;s:19:\"group/style-rtl.css\";i:203;s:23:\"group/style-rtl.min.css\";i:204;s:15:\"group/theme.css\";i:205;s:19:\"group/theme.min.css\";i:206;s:19:\"group/theme-rtl.css\";i:207;s:23:\"group/theme-rtl.min.css\";i:208;s:17:\"heading/style.css\";i:209;s:21:\"heading/style.min.css\";i:210;s:21:\"heading/style-rtl.css\";i:211;s:25:\"heading/style-rtl.min.css\";i:212;s:15:\"html/editor.css\";i:213;s:19:\"html/editor.min.css\";i:214;s:19:\"html/editor-rtl.css\";i:215;s:23:\"html/editor-rtl.min.css\";i:216;s:16:\"image/editor.css\";i:217;s:20:\"image/editor.min.css\";i:218;s:20:\"image/editor-rtl.css\";i:219;s:24:\"image/editor-rtl.min.css\";i:220;s:15:\"image/style.css\";i:221;s:19:\"image/style.min.css\";i:222;s:19:\"image/style-rtl.css\";i:223;s:23:\"image/style-rtl.min.css\";i:224;s:15:\"image/theme.css\";i:225;s:19:\"image/theme.min.css\";i:226;s:19:\"image/theme-rtl.css\";i:227;s:23:\"image/theme-rtl.min.css\";i:228;s:25:\"latest-comments/style.css\";i:229;s:29:\"latest-comments/style.min.css\";i:230;s:29:\"latest-comments/style-rtl.css\";i:231;s:33:\"latest-comments/style-rtl.min.css\";i:232;s:23:\"latest-posts/editor.css\";i:233;s:27:\"latest-posts/editor.min.css\";i:234;s:27:\"latest-posts/editor-rtl.css\";i:235;s:31:\"latest-posts/editor-rtl.min.css\";i:236;s:22:\"latest-posts/style.css\";i:237;s:26:\"latest-posts/style.min.css\";i:238;s:26:\"latest-posts/style-rtl.css\";i:239;s:30:\"latest-posts/style-rtl.min.css\";i:240;s:14:\"list/style.css\";i:241;s:18:\"list/style.min.css\";i:242;s:18:\"list/style-rtl.css\";i:243;s:22:\"list/style-rtl.min.css\";i:244;s:18:\"loginout/style.css\";i:245;s:22:\"loginout/style.min.css\";i:246;s:22:\"loginout/style-rtl.css\";i:247;s:26:\"loginout/style-rtl.min.css\";i:248;s:15:\"math/editor.css\";i:249;s:19:\"math/editor.min.css\";i:250;s:19:\"math/editor-rtl.css\";i:251;s:23:\"math/editor-rtl.min.css\";i:252;s:14:\"math/style.css\";i:253;s:18:\"math/style.min.css\";i:254;s:18:\"math/style-rtl.css\";i:255;s:22:\"math/style-rtl.min.css\";i:256;s:21:\"media-text/editor.css\";i:257;s:25:\"media-text/editor.min.css\";i:258;s:25:\"media-text/editor-rtl.css\";i:259;s:29:\"media-text/editor-rtl.min.css\";i:260;s:20:\"media-text/style.css\";i:261;s:24:\"media-text/style.min.css\";i:262;s:24:\"media-text/style-rtl.css\";i:263;s:28:\"media-text/style-rtl.min.css\";i:264;s:15:\"more/editor.css\";i:265;s:19:\"more/editor.min.css\";i:266;s:19:\"more/editor-rtl.css\";i:267;s:23:\"more/editor-rtl.min.css\";i:268;s:21:\"navigation/editor.css\";i:269;s:25:\"navigation/editor.min.css\";i:270;s:25:\"navigation/editor-rtl.css\";i:271;s:29:\"navigation/editor-rtl.min.css\";i:272;s:26:\"navigation-link/editor.css\";i:273;s:30:\"navigation-link/editor.min.css\";i:274;s:30:\"navigation-link/editor-rtl.css\";i:275;s:34:\"navigation-link/editor-rtl.min.css\";i:276;s:25:\"navigation-link/style.css\";i:277;s:29:\"navigation-link/style.min.css\";i:278;s:29:\"navigation-link/style-rtl.css\";i:279;s:33:\"navigation-link/style-rtl.min.css\";i:280;s:20:\"navigation/style.css\";i:281;s:24:\"navigation/style.min.css\";i:282;s:24:\"navigation/style-rtl.css\";i:283;s:28:\"navigation/style-rtl.min.css\";i:284;s:29:\"navigation-submenu/editor.css\";i:285;s:33:\"navigation-submenu/editor.min.css\";i:286;s:33:\"navigation-submenu/editor-rtl.css\";i:287;s:37:\"navigation-submenu/editor-rtl.min.css\";i:288;s:19:\"nextpage/editor.css\";i:289;s:23:\"nextpage/editor.min.css\";i:290;s:23:\"nextpage/editor-rtl.css\";i:291;s:27:\"nextpage/editor-rtl.min.css\";i:292;s:20:\"page-list/editor.css\";i:293;s:24:\"page-list/editor.min.css\";i:294;s:24:\"page-list/editor-rtl.css\";i:295;s:28:\"page-list/editor-rtl.min.css\";i:296;s:19:\"page-list/style.css\";i:297;s:23:\"page-list/style.min.css\";i:298;s:23:\"page-list/style-rtl.css\";i:299;s:27:\"page-list/style-rtl.min.css\";i:300;s:20:\"paragraph/editor.css\";i:301;s:24:\"paragraph/editor.min.css\";i:302;s:24:\"paragraph/editor-rtl.css\";i:303;s:28:\"paragraph/editor-rtl.min.css\";i:304;s:19:\"paragraph/style.css\";i:305;s:23:\"paragraph/style.min.css\";i:306;s:23:\"paragraph/style-rtl.css\";i:307;s:27:\"paragraph/style-rtl.min.css\";i:308;s:31:\"post-author-biography/style.css\";i:309;s:35:\"post-author-biography/style.min.css\";i:310;s:35:\"post-author-biography/style-rtl.css\";i:311;s:39:\"post-author-biography/style-rtl.min.css\";i:312;s:26:\"post-author-name/style.css\";i:313;s:30:\"post-author-name/style.min.css\";i:314;s:30:\"post-author-name/style-rtl.css\";i:315;s:34:\"post-author-name/style-rtl.min.css\";i:316;s:21:\"post-author/style.css\";i:317;s:25:\"post-author/style.min.css\";i:318;s:25:\"post-author/style-rtl.css\";i:319;s:29:\"post-author/style-rtl.min.css\";i:320;s:29:\"post-comments-count/style.css\";i:321;s:33:\"post-comments-count/style.min.css\";i:322;s:33:\"post-comments-count/style-rtl.css\";i:323;s:37:\"post-comments-count/style-rtl.min.css\";i:324;s:29:\"post-comments-form/editor.css\";i:325;s:33:\"post-comments-form/editor.min.css\";i:326;s:33:\"post-comments-form/editor-rtl.css\";i:327;s:37:\"post-comments-form/editor-rtl.min.css\";i:328;s:28:\"post-comments-form/style.css\";i:329;s:32:\"post-comments-form/style.min.css\";i:330;s:32:\"post-comments-form/style-rtl.css\";i:331;s:36:\"post-comments-form/style-rtl.min.css\";i:332;s:28:\"post-comments-link/style.css\";i:333;s:32:\"post-comments-link/style.min.css\";i:334;s:32:\"post-comments-link/style-rtl.css\";i:335;s:36:\"post-comments-link/style-rtl.min.css\";i:336;s:22:\"post-content/style.css\";i:337;s:26:\"post-content/style.min.css\";i:338;s:26:\"post-content/style-rtl.css\";i:339;s:30:\"post-content/style-rtl.min.css\";i:340;s:19:\"post-date/style.css\";i:341;s:23:\"post-date/style.min.css\";i:342;s:23:\"post-date/style-rtl.css\";i:343;s:27:\"post-date/style-rtl.min.css\";i:344;s:23:\"post-excerpt/editor.css\";i:345;s:27:\"post-excerpt/editor.min.css\";i:346;s:27:\"post-excerpt/editor-rtl.css\";i:347;s:31:\"post-excerpt/editor-rtl.min.css\";i:348;s:22:\"post-excerpt/style.css\";i:349;s:26:\"post-excerpt/style.min.css\";i:350;s:26:\"post-excerpt/style-rtl.css\";i:351;s:30:\"post-excerpt/style-rtl.min.css\";i:352;s:30:\"post-featured-image/editor.css\";i:353;s:34:\"post-featured-image/editor.min.css\";i:354;s:34:\"post-featured-image/editor-rtl.css\";i:355;s:38:\"post-featured-image/editor-rtl.min.css\";i:356;s:29:\"post-featured-image/style.css\";i:357;s:33:\"post-featured-image/style.min.css\";i:358;s:33:\"post-featured-image/style-rtl.css\";i:359;s:37:\"post-featured-image/style-rtl.min.css\";i:360;s:30:\"post-navigation-link/style.css\";i:361;s:34:\"post-navigation-link/style.min.css\";i:362;s:34:\"post-navigation-link/style-rtl.css\";i:363;s:38:\"post-navigation-link/style-rtl.min.css\";i:364;s:23:\"post-template/style.css\";i:365;s:27:\"post-template/style.min.css\";i:366;s:27:\"post-template/style-rtl.css\";i:367;s:31:\"post-template/style-rtl.min.css\";i:368;s:20:\"post-terms/style.css\";i:369;s:24:\"post-terms/style.min.css\";i:370;s:24:\"post-terms/style-rtl.css\";i:371;s:28:\"post-terms/style-rtl.min.css\";i:372;s:27:\"post-time-to-read/style.css\";i:373;s:31:\"post-time-to-read/style.min.css\";i:374;s:31:\"post-time-to-read/style-rtl.css\";i:375;s:35:\"post-time-to-read/style-rtl.min.css\";i:376;s:20:\"post-title/style.css\";i:377;s:24:\"post-title/style.min.css\";i:378;s:24:\"post-title/style-rtl.css\";i:379;s:28:\"post-title/style-rtl.min.css\";i:380;s:22:\"preformatted/style.css\";i:381;s:26:\"preformatted/style.min.css\";i:382;s:26:\"preformatted/style-rtl.css\";i:383;s:30:\"preformatted/style-rtl.min.css\";i:384;s:20:\"pullquote/editor.css\";i:385;s:24:\"pullquote/editor.min.css\";i:386;s:24:\"pullquote/editor-rtl.css\";i:387;s:28:\"pullquote/editor-rtl.min.css\";i:388;s:19:\"pullquote/style.css\";i:389;s:23:\"pullquote/style.min.css\";i:390;s:23:\"pullquote/style-rtl.css\";i:391;s:27:\"pullquote/style-rtl.min.css\";i:392;s:19:\"pullquote/theme.css\";i:393;s:23:\"pullquote/theme.min.css\";i:394;s:23:\"pullquote/theme-rtl.css\";i:395;s:27:\"pullquote/theme-rtl.min.css\";i:396;s:16:\"query/editor.css\";i:397;s:20:\"query/editor.min.css\";i:398;s:20:\"query/editor-rtl.css\";i:399;s:24:\"query/editor-rtl.min.css\";i:400;s:27:\"query-pagination/editor.css\";i:401;s:31:\"query-pagination/editor.min.css\";i:402;s:31:\"query-pagination/editor-rtl.css\";i:403;s:35:\"query-pagination/editor-rtl.min.css\";i:404;s:35:\"query-pagination-numbers/editor.css\";i:405;s:39:\"query-pagination-numbers/editor.min.css\";i:406;s:39:\"query-pagination-numbers/editor-rtl.css\";i:407;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:408;s:26:\"query-pagination/style.css\";i:409;s:30:\"query-pagination/style.min.css\";i:410;s:30:\"query-pagination/style-rtl.css\";i:411;s:34:\"query-pagination/style-rtl.min.css\";i:412;s:21:\"query-title/style.css\";i:413;s:25:\"query-title/style.min.css\";i:414;s:25:\"query-title/style-rtl.css\";i:415;s:29:\"query-title/style-rtl.min.css\";i:416;s:21:\"query-total/style.css\";i:417;s:25:\"query-total/style.min.css\";i:418;s:25:\"query-total/style-rtl.css\";i:419;s:29:\"query-total/style-rtl.min.css\";i:420;s:15:\"quote/style.css\";i:421;s:19:\"quote/style.min.css\";i:422;s:19:\"quote/style-rtl.css\";i:423;s:23:\"quote/style-rtl.min.css\";i:424;s:15:\"quote/theme.css\";i:425;s:19:\"quote/theme.min.css\";i:426;s:19:\"quote/theme-rtl.css\";i:427;s:23:\"quote/theme-rtl.min.css\";i:428;s:19:\"read-more/style.css\";i:429;s:23:\"read-more/style.min.css\";i:430;s:23:\"read-more/style-rtl.css\";i:431;s:27:\"read-more/style-rtl.min.css\";i:432;s:14:\"rss/editor.css\";i:433;s:18:\"rss/editor.min.css\";i:434;s:18:\"rss/editor-rtl.css\";i:435;s:22:\"rss/editor-rtl.min.css\";i:436;s:13:\"rss/style.css\";i:437;s:17:\"rss/style.min.css\";i:438;s:17:\"rss/style-rtl.css\";i:439;s:21:\"rss/style-rtl.min.css\";i:440;s:17:\"search/editor.css\";i:441;s:21:\"search/editor.min.css\";i:442;s:21:\"search/editor-rtl.css\";i:443;s:25:\"search/editor-rtl.min.css\";i:444;s:16:\"search/style.css\";i:445;s:20:\"search/style.min.css\";i:446;s:20:\"search/style-rtl.css\";i:447;s:24:\"search/style-rtl.min.css\";i:448;s:16:\"search/theme.css\";i:449;s:20:\"search/theme.min.css\";i:450;s:20:\"search/theme-rtl.css\";i:451;s:24:\"search/theme-rtl.min.css\";i:452;s:20:\"separator/editor.css\";i:453;s:24:\"separator/editor.min.css\";i:454;s:24:\"separator/editor-rtl.css\";i:455;s:28:\"separator/editor-rtl.min.css\";i:456;s:19:\"separator/style.css\";i:457;s:23:\"separator/style.min.css\";i:458;s:23:\"separator/style-rtl.css\";i:459;s:27:\"separator/style-rtl.min.css\";i:460;s:19:\"separator/theme.css\";i:461;s:23:\"separator/theme.min.css\";i:462;s:23:\"separator/theme-rtl.css\";i:463;s:27:\"separator/theme-rtl.min.css\";i:464;s:20:\"shortcode/editor.css\";i:465;s:24:\"shortcode/editor.min.css\";i:466;s:24:\"shortcode/editor-rtl.css\";i:467;s:28:\"shortcode/editor-rtl.min.css\";i:468;s:20:\"site-logo/editor.css\";i:469;s:24:\"site-logo/editor.min.css\";i:470;s:24:\"site-logo/editor-rtl.css\";i:471;s:28:\"site-logo/editor-rtl.min.css\";i:472;s:19:\"site-logo/style.css\";i:473;s:23:\"site-logo/style.min.css\";i:474;s:23:\"site-logo/style-rtl.css\";i:475;s:27:\"site-logo/style-rtl.min.css\";i:476;s:23:\"site-tagline/editor.css\";i:477;s:27:\"site-tagline/editor.min.css\";i:478;s:27:\"site-tagline/editor-rtl.css\";i:479;s:31:\"site-tagline/editor-rtl.min.css\";i:480;s:22:\"site-tagline/style.css\";i:481;s:26:\"site-tagline/style.min.css\";i:482;s:26:\"site-tagline/style-rtl.css\";i:483;s:30:\"site-tagline/style-rtl.min.css\";i:484;s:21:\"site-title/editor.css\";i:485;s:25:\"site-title/editor.min.css\";i:486;s:25:\"site-title/editor-rtl.css\";i:487;s:29:\"site-title/editor-rtl.min.css\";i:488;s:20:\"site-title/style.css\";i:489;s:24:\"site-title/style.min.css\";i:490;s:24:\"site-title/style-rtl.css\";i:491;s:28:\"site-title/style-rtl.min.css\";i:492;s:22:\"social-link/editor.css\";i:493;s:26:\"social-link/editor.min.css\";i:494;s:26:\"social-link/editor-rtl.css\";i:495;s:30:\"social-link/editor-rtl.min.css\";i:496;s:23:\"social-links/editor.css\";i:497;s:27:\"social-links/editor.min.css\";i:498;s:27:\"social-links/editor-rtl.css\";i:499;s:31:\"social-links/editor-rtl.min.css\";i:500;s:22:\"social-links/style.css\";i:501;s:26:\"social-links/style.min.css\";i:502;s:26:\"social-links/style-rtl.css\";i:503;s:30:\"social-links/style-rtl.min.css\";i:504;s:17:\"spacer/editor.css\";i:505;s:21:\"spacer/editor.min.css\";i:506;s:21:\"spacer/editor-rtl.css\";i:507;s:25:\"spacer/editor-rtl.min.css\";i:508;s:16:\"spacer/style.css\";i:509;s:20:\"spacer/style.min.css\";i:510;s:20:\"spacer/style-rtl.css\";i:511;s:24:\"spacer/style-rtl.min.css\";i:512;s:16:\"table/editor.css\";i:513;s:20:\"table/editor.min.css\";i:514;s:20:\"table/editor-rtl.css\";i:515;s:24:\"table/editor-rtl.min.css\";i:516;s:15:\"table/style.css\";i:517;s:19:\"table/style.min.css\";i:518;s:19:\"table/style-rtl.css\";i:519;s:23:\"table/style-rtl.min.css\";i:520;s:15:\"table/theme.css\";i:521;s:19:\"table/theme.min.css\";i:522;s:19:\"table/theme-rtl.css\";i:523;s:23:\"table/theme-rtl.min.css\";i:524;s:20:\"tag-cloud/editor.css\";i:525;s:24:\"tag-cloud/editor.min.css\";i:526;s:24:\"tag-cloud/editor-rtl.css\";i:527;s:28:\"tag-cloud/editor-rtl.min.css\";i:528;s:19:\"tag-cloud/style.css\";i:529;s:23:\"tag-cloud/style.min.css\";i:530;s:23:\"tag-cloud/style-rtl.css\";i:531;s:27:\"tag-cloud/style-rtl.min.css\";i:532;s:24:\"template-part/editor.css\";i:533;s:28:\"template-part/editor.min.css\";i:534;s:28:\"template-part/editor-rtl.css\";i:535;s:32:\"template-part/editor-rtl.min.css\";i:536;s:23:\"template-part/theme.css\";i:537;s:27:\"template-part/theme.min.css\";i:538;s:27:\"template-part/theme-rtl.css\";i:539;s:31:\"template-part/theme-rtl.min.css\";i:540;s:20:\"term-count/style.css\";i:541;s:24:\"term-count/style.min.css\";i:542;s:24:\"term-count/style-rtl.css\";i:543;s:28:\"term-count/style-rtl.min.css\";i:544;s:26:\"term-description/style.css\";i:545;s:30:\"term-description/style.min.css\";i:546;s:30:\"term-description/style-rtl.css\";i:547;s:34:\"term-description/style-rtl.min.css\";i:548;s:19:\"term-name/style.css\";i:549;s:23:\"term-name/style.min.css\";i:550;s:23:\"term-name/style-rtl.css\";i:551;s:27:\"term-name/style-rtl.min.css\";i:552;s:24:\"term-template/editor.css\";i:553;s:28:\"term-template/editor.min.css\";i:554;s:28:\"term-template/editor-rtl.css\";i:555;s:32:\"term-template/editor-rtl.min.css\";i:556;s:23:\"term-template/style.css\";i:557;s:27:\"term-template/style.min.css\";i:558;s:27:\"term-template/style-rtl.css\";i:559;s:31:\"term-template/style-rtl.min.css\";i:560;s:23:\"text-columns/editor.css\";i:561;s:27:\"text-columns/editor.min.css\";i:562;s:27:\"text-columns/editor-rtl.css\";i:563;s:31:\"text-columns/editor-rtl.min.css\";i:564;s:22:\"text-columns/style.css\";i:565;s:26:\"text-columns/style.min.css\";i:566;s:26:\"text-columns/style-rtl.css\";i:567;s:30:\"text-columns/style-rtl.min.css\";i:568;s:15:\"verse/style.css\";i:569;s:19:\"verse/style.min.css\";i:570;s:19:\"verse/style-rtl.css\";i:571;s:23:\"verse/style-rtl.min.css\";i:572;s:16:\"video/editor.css\";i:573;s:20:\"video/editor.min.css\";i:574;s:20:\"video/editor-rtl.css\";i:575;s:24:\"video/editor-rtl.min.css\";i:576;s:15:\"video/style.css\";i:577;s:19:\"video/style.min.css\";i:578;s:19:\"video/style-rtl.css\";i:579;s:23:\"video/style-rtl.min.css\";i:580;s:15:\"video/theme.css\";i:581;s:19:\"video/theme.min.css\";i:582;s:19:\"video/theme-rtl.css\";i:583;s:23:\"video/theme-rtl.min.css\";}}', 'on'),
(126, 'theme_mods_twentytwentyfive', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'auto'),
(127, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"4252001a9c884676789016dfc8ad49be\";s:6:\"blocks\";a:53:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:18:\"core/term-template\";s:0:\"\";s:12:\"core/columns\";s:769:\":root :where(.wp-block-columns-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-columns-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--50);margin-block-end: 0;}:root :where(.wp-block-columns-is-layout-flex){gap: var(--wp--preset--spacing--50);}:root :where(.wp-block-columns-is-layout-grid){gap: var(--wp--preset--spacing--50);}\";s:14:\"core/pullquote\";s:306:\":root :where(.wp-block-pullquote){font-size: var(--wp--preset--font-size--xx-large);font-weight: 300;line-height: 1.2;padding-top: var(--wp--preset--spacing--30);padding-bottom: var(--wp--preset--spacing--30);}:root :where(.wp-block-pullquote p:last-of-type){margin-bottom: var(--wp--preset--spacing--30);}\";s:32:\"c48738dcb285a3f6ab83acff204fc486\";s:106:\":root :where(.wp-block-pullquote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;}\";s:11:\"core/avatar\";s:57:\":root :where(.wp-block-avatar img){border-radius: 100px;}\";s:12:\"core/buttons\";s:665:\":root :where(.wp-block-buttons-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flow) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-constrained) > *{margin-block-start: 16px;margin-block-end: 0;}:root :where(.wp-block-buttons-is-layout-flex){gap: 16px;}:root :where(.wp-block-buttons-is-layout-grid){gap: 16px;}\";s:9:\"core/code\";s:427:\":root :where(.wp-block-code){background-color: var(--wp--preset--color--accent-5);color: var(--wp--preset--color--contrast);font-family: var(--wp--preset--font-family--fira-code);font-size: var(--wp--preset--font-size--medium);font-weight: 300;padding-top: var(--wp--preset--spacing--40);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);padding-left: var(--wp--preset--spacing--40);}\";s:24:\"core/comment-author-name\";s:169:\":root :where(.wp-block-comment-author-name){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);margin-top: 5px;margin-bottom: 0px;}\";s:32:\"c0002c260f8238c4212f3e4c369fc4f7\";s:143:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"1e7c38b45537b325dbbbaec17a301676\";s:112:\":root :where(.wp-block-comment-author-name a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:20:\"core/comment-content\";s:178:\":root :where(.wp-block-comment-content){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--30);margin-bottom: var(--wp--preset--spacing--30);}\";s:17:\"core/comment-date\";s:127:\":root :where(.wp-block-comment-date){color: var(--wp--preset--color--contrast);font-size: var(--wp--preset--font-size--small);}\";s:32:\"c83ca7b3e52884c70f7830c54f99b318\";s:114:\":root :where(.wp-block-comment-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:22:\"core/comment-edit-link\";s:90:\":root :where(.wp-block-comment-edit-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"41d70710612536a90e368c12bcb0efea\";s:119:\":root :where(.wp-block-comment-edit-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/comment-reply-link\";s:91:\":root :where(.wp-block-comment-reply-link){font-size: var(--wp--preset--font-size--small);}\";s:32:\"13c96340dbf37700add1f4c5cae19f3e\";s:120:\":root :where(.wp-block-comment-reply-link a:where(:not(.wp-element-button))){color: var(--wp--preset--color--contrast);}\";s:23:\"core/post-comments-form\";s:565:\":root :where(.wp-block-post-comments-form){font-size: var(--wp--preset--font-size--medium);padding-top: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--40);}:root :where(.wp-block-post-comments-form textarea, .wp-block-post-comments-form input:not([type=submit])){border-radius:.25rem; border-color: var(--wp--preset--color--accent-6) !important;}:root :where(.wp-block-post-comments-form input[type=checkbox]){margin:0 .2rem 0 0 !important;}:root :where(.wp-block-post-comments-form label){font-size: var(--wp--preset--font-size--small);}\";s:24:\"core/comments-pagination\";s:182:\":root :where(.wp-block-comments-pagination){font-size: var(--wp--preset--font-size--medium);margin-top: var(--wp--preset--spacing--40);margin-bottom: var(--wp--preset--spacing--40);}\";s:29:\"core/comments-pagination-next\";s:98:\":root :where(.wp-block-comments-pagination-next){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"core/comments-pagination-numbers\";s:101:\":root :where(.wp-block-comments-pagination-numbers){font-size: var(--wp--preset--font-size--medium);}\";s:33:\"core/comments-pagination-previous\";s:102:\":root :where(.wp-block-comments-pagination-previous){font-size: var(--wp--preset--font-size--medium);}\";s:14:\"core/post-date\";s:124:\":root :where(.wp-block-post-date){color: var(--wp--preset--color--accent-4);font-size: var(--wp--preset--font-size--small);}\";s:32:\"ac0d4e00f5ec22d14451759983e5bd43\";s:133:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button))){color: var(--wp--preset--color--accent-4);text-decoration: none;}\";s:32:\"0ae6ffd1b886044c2da62d75d05ab13d\";s:102:\":root :where(.wp-block-post-date a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:25:\"core/post-navigation-link\";s:94:\":root :where(.wp-block-post-navigation-link){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/post-terms\";s:158:\":root :where(.wp-block-post-terms){font-size: var(--wp--preset--font-size--small);font-weight: 600;}:root :where(.wp-block-post-terms a){white-space: nowrap;}\";s:15:\"core/post-title\";s:0:\"\";s:32:\"bb496d3fcd9be3502ce57ff8281e5687\";s:92:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"12380ab98fdc81351bb32a39bbfc9249\";s:103:\":root :where(.wp-block-post-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:10:\"core/quote\";s:1315:\":root :where(.wp-block-quote){border-color: currentColor;border-width: 0 0 0 2px;border-style: solid;font-size: var(--wp--preset--font-size--large);font-weight: 300;margin-right: 0;margin-left: 0;padding-top: var(--wp--preset--spacing--30);padding-right: var(--wp--preset--spacing--40);padding-bottom: var(--wp--preset--spacing--30);padding-left: var(--wp--preset--spacing--40);}:root :where(.wp-block-quote-is-layout-flow) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-flow) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flow) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :first-child{margin-block-start: 0;}:root :where(.wp-block-quote-is-layout-constrained) > :last-child{margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-constrained) > *{margin-block-start: var(--wp--preset--spacing--30);margin-block-end: 0;}:root :where(.wp-block-quote-is-layout-flex){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote-is-layout-grid){gap: var(--wp--preset--spacing--30);}:root :where(.wp-block-quote.has-text-align-right ){border-width: 0 2px 0 0;}:root :where(.wp-block-quote.has-text-align-center ){border-width: 0;border-inline: 0; padding-inline: 0;}\";s:32:\"1de7a22e22013106efc5be82788cb6c0\";s:176:\":root :where(.wp-block-quote cite){font-size: var(--wp--preset--font-size--small);font-style: normal;font-weight: 300;}:root :where(.wp-block-quote cite sub){font-size: 0.65em}\";s:21:\"core/query-pagination\";s:107:\":root :where(.wp-block-query-pagination){font-size: var(--wp--preset--font-size--medium);font-weight: 500;}\";s:11:\"core/search\";s:380:\":root :where(.wp-block-search .wp-block-search__label, .wp-block-search .wp-block-search__input, .wp-block-search .wp-block-search__button){font-size: var(--wp--preset--font-size--medium);line-height: 1.6;}:root :where(.wp-block-search .wp-block-search__input){border-radius:3.125rem;padding-left:1.5625rem;padding-right:1.5625rem;border-color:var(--wp--preset--color--accent-6);}\";s:32:\"14fa6a3d0cfbde171cbc0fb04aa8a6cf\";s:138:\":root :where(.wp-block-search .wp-element-button,.wp-block-search  .wp-block-button__link){border-radius: 3.125rem;margin-left: 1.125rem;}\";s:32:\"05993ee2f3de94b5d1350998a7e9b6b0\";s:130:\":root :where(.wp-block-search .wp-element-button:hover,.wp-block-search  .wp-block-button__link:hover){border-color: transparent;}\";s:14:\"core/separator\";s:148:\":root :where(.wp-block-separator){border-color: currentColor;border-width: 0 0 1px 0;border-style: solid;color: var(--wp--preset--color--accent-6);}\";s:17:\"core/site-tagline\";s:86:\":root :where(.wp-block-site-tagline){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/site-title\";s:75:\":root :where(.wp-block-site-title){font-weight: 700;letter-spacing: -.5px;}\";s:32:\"f513d889cf971b13995cc3fffed2f39b\";s:92:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"22c37a317cc0ebd50155b5ad78564f37\";s:103:\":root :where(.wp-block-site-title a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:21:\"core/term-description\";s:90:\":root :where(.wp-block-term-description){font-size: var(--wp--preset--font-size--medium);}\";s:15:\"core/navigation\";s:84:\":root :where(.wp-block-navigation){font-size: var(--wp--preset--font-size--medium);}\";s:32:\"25289a01850f5a0264ddb79a9a3baf3d\";s:92:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button))){text-decoration: none;}\";s:32:\"026c04da08398d655a95047f1f235d97\";s:103:\":root :where(.wp-block-navigation a:where(:not(.wp-element-button)):hover){text-decoration: underline;}\";s:9:\"core/list\";s:52:\":root :where(.wp-block-list li){margin-top: 0.5rem;}\";s:12:\"core/heading\";s:0:\"\";s:14:\"core/paragraph\";s:0:\"\";s:10:\"core/group\";s:0:\"\";s:11:\"core/column\";s:0:\"\";}}', 'on'),
(129, 'recovery_keys', 'a:0:{}', 'off'),
(137, '_site_transient_timeout_browser_9873c6057fa956ba6ab482e012df4018', '1767621789', 'off'),
(138, '_site_transient_browser_9873c6057fa956ba6ab482e012df4018', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"146.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(139, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1767621790', 'off'),
(140, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(145, 'can_compress_scripts', '1', 'on'),
(157, 'finished_updating_comment_type', '1', 'auto'),
(160, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(161, 'recently_activated', 'a:0:{}', 'off'),
(185, 'tutor_option', 'a:35:{s:19:\"pagination_per_page\";s:2:\"20\";s:33:\"course_allow_upload_private_files\";s:1:\"1\";s:26:\"display_course_instructors\";s:1:\"1\";s:24:\"enable_q_and_a_on_course\";s:2:\"on\";s:19:\"courses_col_per_row\";s:1:\"3\";s:16:\"courses_per_page\";s:2:\"12\";s:21:\"course_permalink_base\";s:7:\"courses\";s:21:\"lesson_permalink_base\";s:7:\"lessons\";s:22:\"quiz_when_time_expires\";s:10:\"autosubmit\";s:21:\"quiz_attempts_allowed\";s:2:\"10\";s:17:\"quiz_grade_method\";s:13:\"highest_grade\";s:21:\"enable_public_profile\";s:1:\"1\";s:17:\"email_to_students\";a:2:{s:14:\"quiz_completed\";s:1:\"1\";s:16:\"completed_course\";s:1:\"1\";}s:20:\"email_to_instructors\";a:4:{s:28:\"a_student_enrolled_in_course\";s:1:\"1\";s:26:\"a_student_completed_course\";s:1:\"1\";s:26:\"a_student_completed_lesson\";s:1:\"1\";s:25:\"a_student_placed_question\";s:1:\"1\";}s:15:\"email_from_name\";s:10:\"flashcards\";s:18:\"email_from_address\";s:26:\"cguilhermear1999@gmail.com\";s:17:\"email_footer_text\";s:0:\"\";s:24:\"earning_admin_commission\";s:2:\"20\";s:29:\"earning_instructor_commission\";s:2:\"80\";s:17:\"color_preset_type\";s:7:\"default\";s:11:\"monetize_by\";s:5:\"tutor\";s:13:\"currency_code\";s:3:\"USD\";s:17:\"currency_position\";s:4:\"left\";s:18:\"thousand_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:18:\"number_of_decimals\";s:1:\"2\";s:20:\"is_coupon_applicable\";s:2:\"on\";s:23:\"supported_video_sources\";a:6:{i:0;s:5:\"html5\";i:1;s:12:\"external_url\";i:2;s:7:\"youtube\";i:3;s:5:\"vimeo\";i:4;s:8:\"embedded\";i:5;s:9:\"shortcode\";}s:23:\"tutor_dashboard_page_id\";i:6;s:21:\"student_register_page\";i:7;s:24:\"instructor_register_page\";i:8;s:18:\"tutor_cart_page_id\";i:9;s:22:\"tutor_checkout_page_id\";i:10;s:22:\"enable_revenue_sharing\";s:3:\"off\";s:24:\"tutor_withdrawal_methods\";a:0:{}}', 'auto'),
(188, 'tutor_version', '3.9.4', 'auto'),
(189, 'tutor_first_activation_time', '1767018450', 'auto'),
(190, 'tutor_wizard', 'active', 'auto'),
(192, 'widget_tutor_course_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(197, 'tutor_default_option', 'a:10:{s:21:\"course_permalink_base\";s:7:\"courses\";s:21:\"lesson_permalink_base\";s:7:\"lessons\";s:24:\"enable_q_and_a_on_course\";s:2:\"on\";s:19:\"courses_col_per_row\";s:1:\"3\";s:16:\"courses_per_page\";s:2:\"12\";s:22:\"enable_revenue_sharing\";s:3:\"off\";s:29:\"earning_instructor_commission\";s:2:\"80\";s:24:\"earning_admin_commission\";s:2:\"20\";s:13:\"currency_code\";s:3:\"USD\";s:17:\"currency_position\";s:4:\"left\";}', 'auto'),
(201, 'tutor_batch_processor_quiz_attempt_migrator', 'a:7:{s:6:\"offset\";i:0;s:9:\"completed\";b:1;s:11:\"total_items\";i:0;s:11:\"total_batch\";i:0;s:9:\"per_batch\";i:100;s:13:\"current_batch\";i:1;s:12:\"completed_at\";s:19:\"2025-12-29 17:32:08\";}', 'auto'),
(202, 'tutor_welcome_page_visited', '1', 'auto'),
(217, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.9.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.9.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.9\";s:7:\"version\";s:3:\"6.9\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1767178826;s:15:\"version_checked\";s:3:\"6.9\";s:12:\"translations\";a:0:{}}', 'off'),
(219, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1767178827;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"tutor/tutor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:19:\"w.org/plugins/tutor\";s:4:\"slug\";s:5:\"tutor\";s:6:\"plugin\";s:15:\"tutor/tutor.php\";s:11:\"new_version\";s:5:\"3.9.4\";s:3:\"url\";s:36:\"https://wordpress.org/plugins/tutor/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/tutor.3.9.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:58:\"https://ps.w.org/tutor/assets/icon-256x256.gif?rev=3193875\";s:2:\"1x\";s:58:\"https://ps.w.org/tutor/assets/icon-128x128.gif?rev=3193875\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:61:\"https://ps.w.org/tutor/assets/banner-1544x500.jpg?rev=3192898\";s:2:\"1x\";s:60:\"https://ps.w.org/tutor/assets/banner-772x250.jpg?rev=3192898\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.3\";}}s:7:\"checked\";a:2:{s:47:\"fsrs-flashcards-tutor/fsrs-flashcards-tutor.php\";s:5:\"0.1.0\";s:15:\"tutor/tutor.php\";s:5:\"3.9.4\";}}', 'off'),
(222, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":7,\"critical\":1}', 'on'),
(262, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1767178828;s:7:\"checked\";a:3:{s:16:\"twentytwentyfive\";s:3:\"1.2\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:2:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.4.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.4.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}}s:9:\"no_update\";a:1:{s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(267, '_site_transient_timeout_wp_theme_files_patterns-6bad6c3f5d60e073d46f24536f4f7fe5', '1767193108', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(268, '_site_transient_wp_theme_files_patterns-6bad6c3f5d60e073d46f24536f4f7fe5', 'a:2:{s:7:\"version\";s:3:\"1.2\";s:8:\"patterns\";a:98:{s:21:\"banner-about-book.php\";a:4:{s:5:\"title\";s:28:\"Banner with book description\";s:4:\"slug\";s:34:\"twentytwentyfive/banner-about-book\";s:11:\"description\";s:66:\"Banner with book description and accompanying image for promotion.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:28:\"banner-cover-big-heading.php\";a:4:{s:5:\"title\";s:22:\"Cover with big heading\";s:4:\"slug\";s:41:\"twentytwentyfive/banner-cover-big-heading\";s:11:\"description\";s:82:\"A full-width cover section with a large background image and an oversized heading.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}}s:22:\"banner-intro-image.php\";a:4:{s:5:\"title\";s:49:\"Short heading and paragraph and image on the left\";s:4:\"slug\";s:35:\"twentytwentyfive/banner-intro-image\";s:11:\"description\";s:68:\"A Intro pattern with Short heading, paragraph and image on the left.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:16:\"banner-intro.php\";a:4:{s:5:\"title\";s:35:\"Intro with left-aligned description\";s:4:\"slug\";s:29:\"twentytwentyfive/banner-intro\";s:11:\"description\";s:66:\"A large left-aligned heading with a brand name emphasized in bold.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:17:\"banner-poster.php\";a:4:{s:5:\"title\";s:19:\"Poster-like section\";s:4:\"slug\";s:30:\"twentytwentyfive/banner-poster\";s:11:\"description\";s:78:\"A section that can be used as a banner or a landing page to announce an event.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:5:\"media\";}}s:43:\"banner-with-description-and-images-grid.php\";a:4:{s:5:\"title\";s:39:\"Banner with description and images grid\";s:4:\"slug\";s:47:\"twentytwentyfive/banner-description-images-grid\";s:11:\"description\";s:75:\"A banner with a short paragraph, and two images displayed in a grid layout.\";s:10:\"categories\";a:2:{i:0;s:6:\"banner\";i:1;s:8:\"featured\";}}s:18:\"binding-format.php\";a:4:{s:5:\"title\";s:16:\"Post format name\";s:4:\"slug\";s:31:\"twentytwentyfive/binding-format\";s:11:\"description\";s:75:\"Prints the name of the post format with the help of the Block Bindings API.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:12:\"comments.php\";a:5:{s:5:\"title\";s:8:\"Comments\";s:4:\"slug\";s:25:\"twentytwentyfive/comments\";s:11:\"description\";s:63:\"Comments area with comments list, pagination, and comment form.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:13:\"core/comments\";}}s:32:\"contact-centered-social-link.php\";a:5:{s:5:\"title\";s:30:\"Centered link and social links\";s:4:\"slug\";s:45:\"twentytwentyfive/contact-centered-social-link\";s:11:\"description\";s:73:\"Centered contact section with a prominent message and social media links.\";s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:3:{i:0;s:7:\"contact\";i:1;s:3:\"faq\";i:2;s:9:\"questions\";}}s:26:\"contact-info-locations.php\";a:6:{s:5:\"title\";s:27:\"Contact, info and locations\";s:4:\"slug\";s:39:\"twentytwentyfive/contact-info-locations\";s:11:\"description\";s:78:\"Contact section with social media links, email, and multiple location details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:7:\"contact\";}s:8:\"keywords\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"location\";}}s:29:\"contact-location-and-link.php\";a:4:{s:5:\"title\";s:25:\"Contact location and link\";s:4:\"slug\";s:42:\"twentytwentyfive/contact-location-and-link\";s:11:\"description\";s:89:\"Contact section with a location address, a directions link, and an image of the location.\";s:10:\"categories\";a:2:{i:0;s:7:\"contact\";i:1;s:8:\"featured\";}}s:18:\"cta-book-links.php\";a:4:{s:5:\"title\";s:30:\"Call to action with book links\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-book-links\";s:11:\"description\";s:74:\"A call to action section with links to get the book in different websites.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:22:\"cta-book-locations.php\";a:4:{s:5:\"title\";s:29:\"Call to action with locations\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-book-locations\";s:11:\"description\";s:82:\"A call to action section with links to get the book in the most popular locations.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:24:\"cta-centered-heading.php\";a:4:{s:5:\"title\";s:16:\"Centered heading\";s:4:\"slug\";s:37:\"twentytwentyfive/cta-centered-heading\";s:11:\"description\";s:53:\"A hero with a centered heading, paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:19:\"cta-events-list.php\";a:4:{s:5:\"title\";s:11:\"Events list\";s:4:\"slug\";s:32:\"twentytwentyfive/cta-events-list\";s:11:\"description\";s:37:\"A list of events with call to action.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:26:\"cta-grid-products-link.php\";a:5:{s:5:\"title\";s:54:\"Call to action with grid layout with products and link\";s:4:\"slug\";s:39:\"twentytwentyfive/cta-grid-products-link\";s:11:\"description\";s:42:\"A call to action featuring product images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"featured\";}}s:22:\"cta-heading-search.php\";a:4:{s:5:\"title\";s:23:\"Heading and search form\";s:4:\"slug\";s:35:\"twentytwentyfive/cta-heading-search\";s:11:\"description\";s:54:\"Large heading with a search form for quick navigation.\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:18:\"cta-newsletter.php\";a:5:{s:5:\"title\";s:18:\"Newsletter sign-up\";s:4:\"slug\";s:31:\"twentytwentyfive/cta-newsletter\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:10:\"newsletter\";}}s:15:\"event-3-col.php\";a:5:{s:5:\"title\";s:46:\"Events, 3 columns with event images and titles\";s:4:\"slug\";s:28:\"twentytwentyfive/event-3-col\";s:11:\"description\";s:95:\"A header with title and text and three columns that show 3 events with their images and titles.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:6:\"events\";i:1;s:7:\"columns\";i:2;s:6:\"images\";}}s:14:\"event-rsvp.php\";a:7:{s:5:\"title\";s:10:\"Event RSVP\";s:4:\"slug\";s:27:\"twentytwentyfive/event-rsvp\";s:11:\"description\";s:64:\"RSVP for an upcoming event with a cover image and event details.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}s:8:\"keywords\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:4:\"rsvp\";i:2;s:5:\"event\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:18:\"event-schedule.php\";a:5:{s:5:\"title\";s:14:\"Event schedule\";s:4:\"slug\";s:31:\"twentytwentyfive/event-schedule\";s:11:\"description\";s:54:\"A section with specified dates and times for an event.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}s:8:\"keywords\";a:4:{i:0;s:6:\"events\";i:1;s:6:\"agenda\";i:2;s:8:\"schedule\";i:3;s:8:\"lectures\";}}s:19:\"footer-centered.php\";a:5:{s:5:\"title\";s:15:\"Centered footer\";s:4:\"slug\";s:32:\"twentytwentyfive/footer-centered\";s:11:\"description\";s:44:\"Footer with centered site title and tagline.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:18:\"footer-columns.php\";a:5:{s:5:\"title\";s:19:\"Footer with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/footer-columns\";s:11:\"description\";s:45:\"Footer columns with title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:21:\"footer-newsletter.php\";a:5:{s:5:\"title\";s:29:\"Footer with newsletter signup\";s:4:\"slug\";s:34:\"twentytwentyfive/footer-newsletter\";s:11:\"description\";s:51:\"Footer with large site title and newsletter signup.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:10:\"footer.php\";a:5:{s:5:\"title\";s:6:\"Footer\";s:4:\"slug\";s:23:\"twentytwentyfive/footer\";s:11:\"description\";s:51:\"Footer columns with logo, title, tagline and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:17:\"footer-social.php\";a:5:{s:5:\"title\";s:33:\"Centered footer with social links\";s:4:\"slug\";s:30:\"twentytwentyfive/footer-social\";s:11:\"description\";s:49:\"Footer with centered site title and social links.\";s:10:\"categories\";a:1:{i:0;s:6:\"footer\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/footer\";}}s:16:\"format-audio.php\";a:4:{s:5:\"title\";s:12:\"Audio format\";s:4:\"slug\";s:29:\"twentytwentyfive/format-audio\";s:11:\"description\";s:73:\"An audio post format with an image, title, audio player, and description.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"format-link.php\";a:4:{s:5:\"title\";s:11:\"Link format\";s:4:\"slug\";s:28:\"twentytwentyfive/format-link\";s:11:\"description\";s:77:\"A link post format with a description and an emphasized link for key content.\";s:10:\"categories\";a:1:{i:0;s:28:\"twentytwentyfive_post-format\";}}s:15:\"grid-videos.php\";a:4:{s:5:\"title\";s:16:\"Grid with videos\";s:4:\"slug\";s:28:\"twentytwentyfive/grid-videos\";s:11:\"description\";s:19:\"A grid with videos.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:24:\"grid-with-categories.php\";a:5:{s:5:\"title\";s:20:\"Grid with categories\";s:4:\"slug\";s:37:\"twentytwentyfive/grid-with-categories\";s:11:\"description\";s:41:\"A grid section with different categories.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:19:\"header-centered.php\";a:5:{s:5:\"title\";s:20:\"Centered site header\";s:4:\"slug\";s:32:\"twentytwentyfive/header-centered\";s:11:\"description\";s:52:\"Site header with centered site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:18:\"header-columns.php\";a:5:{s:5:\"title\";s:19:\"Header with columns\";s:4:\"slug\";s:31:\"twentytwentyfive/header-columns\";s:11:\"description\";s:54:\"Site header with site title and navigation in columns.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:22:\"header-large-title.php\";a:5:{s:5:\"title\";s:23:\"Header with large title\";s:4:\"slug\";s:35:\"twentytwentyfive/header-large-title\";s:11:\"description\";s:63:\"Site header with large site title and right-aligned navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:10:\"header.php\";a:5:{s:5:\"title\";s:6:\"Header\";s:4:\"slug\";s:23:\"twentytwentyfive/header\";s:11:\"description\";s:43:\"Site header with site title and navigation.\";s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/template-part/header\";}}s:36:\"heading-and-paragraph-with-image.php\";a:4:{s:5:\"title\";s:45:\"Heading and paragraph with image on the right\";s:4:\"slug\";s:49:\"twentytwentyfive/heading-and-paragraph-with-image\";s:11:\"description\";s:89:\"A two-column section with a heading and paragraph on the left, and an image on the right.\";s:10:\"categories\";a:1:{i:0;s:5:\"about\";}}s:13:\"hero-book.php\";a:5:{s:5:\"title\";s:9:\"Hero book\";s:4:\"slug\";s:26:\"twentytwentyfive/hero-book\";s:11:\"description\";s:66:\"A hero section for the book with a description and pre-order link.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:25:\"hero-full-width-image.php\";a:4:{s:5:\"title\";s:22:\"Hero, full width image\";s:4:\"slug\";s:38:\"twentytwentyfive/hero-full-width-image\";s:11:\"description\";s:68:\"A hero with a full width image, heading, short paragraph and button.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:41:\"hero-overlapped-book-cover-with-links.php\";a:4:{s:5:\"title\";s:38:\"Hero, overlapped book cover with links\";s:4:\"slug\";s:54:\"twentytwentyfive/hero-overlapped-book-cover-with-links\";s:11:\"description\";s:47:\"A hero with an overlapped book cover and links.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:16:\"hero-podcast.php\";a:5:{s:5:\"title\";s:12:\"Hero podcast\";s:4:\"slug\";s:29:\"twentytwentyfive/hero-podcast\";s:11:\"description\";s:0:\"\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}s:8:\"keywords\";a:3:{i:0;s:7:\"podcast\";i:1;s:4:\"hero\";i:2;s:7:\"stories\";}}s:14:\"hidden-404.php\";a:4:{s:5:\"title\";s:3:\"404\";s:4:\"slug\";s:27:\"twentytwentyfive/hidden-404\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:23:\"hidden-blog-heading.php\";a:4:{s:5:\"title\";s:19:\"Hidden blog heading\";s:4:\"slug\";s:36:\"twentytwentyfive/hidden-blog-heading\";s:11:\"description\";s:52:\"Hidden heading for the home page and index template.\";s:8:\"inserter\";b:0;}s:17:\"hidden-search.php\";a:4:{s:5:\"title\";s:6:\"Search\";s:4:\"slug\";s:30:\"twentytwentyfive/hidden-search\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:18:\"hidden-sidebar.php\";a:4:{s:5:\"title\";s:7:\"Sidebar\";s:4:\"slug\";s:31:\"twentytwentyfive/hidden-sidebar\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:21:\"hidden-written-by.php\";a:4:{s:5:\"title\";s:10:\"Written by\";s:4:\"slug\";s:34:\"twentytwentyfive/hidden-written-by\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:9:\"logos.php\";a:4:{s:5:\"title\";s:5:\"Logos\";s:4:\"slug\";s:22:\"twentytwentyfive/logos\";s:11:\"description\";s:77:\"Showcasing the podcast\'s clients with a heading and a series of client logos.\";s:10:\"categories\";a:1:{i:0;s:6:\"banner\";}}s:24:\"media-instagram-grid.php\";a:5:{s:5:\"title\";s:14:\"Instagram grid\";s:4:\"slug\";s:37:\"twentytwentyfive/media-instagram-grid\";s:11:\"description\";s:62:\"A grid section with photos and a link to an Instagram profile.\";s:13:\"viewportWidth\";i:1440;s:10:\"categories\";a:3:{i:0;s:5:\"media\";i:1;s:7:\"gallery\";i:2;s:8:\"featured\";}}s:14:\"more-posts.php\";a:5:{s:5:\"title\";s:10:\"More posts\";s:4:\"slug\";s:27:\"twentytwentyfive/more-posts\";s:11:\"description\";s:45:\"Displays a list of posts with title and date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:21:\"overlapped-images.php\";a:4:{s:5:\"title\";s:41:\"Overlapping images and paragraph on right\";s:4:\"slug\";s:34:\"twentytwentyfive/overlapped-images\";s:11:\"description\";s:53:\"A section with overlapping images, and a description.\";s:10:\"categories\";a:2:{i:0;s:5:\"about\";i:1;s:8:\"featured\";}}s:22:\"page-business-home.php\";a:8:{s:5:\"title\";s:17:\"Business homepage\";s:4:\"slug\";s:35:\"twentytwentyfive/page-business-home\";s:11:\"description\";s:28:\"A business homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:20:\"page-coming-soon.php\";a:8:{s:5:\"title\";s:11:\"Coming soon\";s:4:\"slug\";s:33:\"twentytwentyfive/page-coming-soon\";s:11:\"description\";s:96:\"A full-width cover banner that can be applied to a page or it can work as a single landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:15:\"page-cv-bio.php\";a:7:{s:5:\"title\";s:6:\"CV/bio\";s:4:\"slug\";s:28:\"twentytwentyfive/page-cv-bio\";s:11:\"description\";s:36:\"A pattern for a CV/Bio landing page.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"about\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:21:\"page-landing-book.php\";a:8:{s:5:\"title\";s:21:\"Landing page for book\";s:4:\"slug\";s:34:\"twentytwentyfive/page-landing-book\";s:11:\"description\";s:104:\"A landing page for the book with a hero section, pre-order links, locations, FAQs and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:22:\"page-landing-event.php\";a:8:{s:5:\"title\";s:22:\"Landing page for event\";s:4:\"slug\";s:35:\"twentytwentyfive/page-landing-event\";s:11:\"description\";s:87:\"A landing page for the event with a hero section, description, FAQs and call to action.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:24:\"page-landing-podcast.php\";a:8:{s:5:\"title\";s:24:\"Landing page for podcast\";s:4:\"slug\";s:37:\"twentytwentyfive/page-landing-podcast\";s:11:\"description\";s:111:\"A landing page for the podcast with a hero section, description, logos, grid with videos and newsletter signup.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:50:\"page-link-in-bio-heading-paragraph-links-image.php\";a:7:{s:5:\"title\";s:59:\"Link in bio heading, paragraph, links and full-height image\";s:4:\"slug\";s:63:\"twentytwentyfive/page-link-in-bio-heading-paragraph-links-image\";s:11:\"description\";s:84:\"A link in bio landing page with a heading, paragraph, links and a full height image.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:33:\"page-link-in-bio-wide-margins.php\";a:7:{s:5:\"title\";s:48:\"Link in bio with profile, links and wide margins\";s:4:\"slug\";s:46:\"twentytwentyfive/page-link-in-bio-wide-margins\";s:11:\"description\";s:86:\"A link in bio landing page with social links, a profile photo and a brief description.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:3:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";i:2;s:8:\"featured\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}}s:39:\"page-link-in-bio-with-tight-margins.php\";a:8:{s:5:\"title\";s:30:\"Link in bio with tight margins\";s:4:\"slug\";s:52:\"twentytwentyfive/page-link-in-bio-with-tight-margins\";s:11:\"description\";s:90:\"A full-width, full-height link in bio section with an image, a paragraph and social links.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:6:\"banner\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:23:\"page-portfolio-home.php\";a:8:{s:5:\"title\";s:18:\"Portfolio homepage\";s:4:\"slug\";s:36:\"twentytwentyfive/page-portfolio-home\";s:11:\"description\";s:29:\"A portfolio homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:21:\"twentytwentyfive_page\";i:1;s:5:\"posts\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:18:\"page-shop-home.php\";a:8:{s:5:\"title\";s:13:\"Shop homepage\";s:4:\"slug\";s:31:\"twentytwentyfive/page-shop-home\";s:11:\"description\";s:24:\"A shop homepage pattern.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:21:\"twentytwentyfive_page\";}s:8:\"keywords\";a:1:{i:0;s:7:\"starter\";}s:10:\"blockTypes\";a:1:{i:0;s:17:\"core/post-content\";}s:9:\"postTypes\";a:2:{i:0;s:4:\"page\";i:1;s:11:\"wp_template\";}}s:19:\"post-navigation.php\";a:5:{s:5:\"title\";s:15:\"Post navigation\";s:4:\"slug\";s:32:\"twentytwentyfive/post-navigation\";s:11:\"description\";s:29:\"Next and previous post links.\";s:10:\"categories\";a:1:{i:0;s:4:\"text\";}s:10:\"blockTypes\";a:1:{i:0;s:25:\"core/post-navigation-link\";}}s:17:\"pricing-2-col.php\";a:5:{s:5:\"title\";s:18:\"Pricing, 2 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-2-col\";s:11:\"description\";s:88:\"Pricing section with two columns, pricing plan, description, and call-to-action buttons.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:14:\"call-to-action\";}}s:17:\"pricing-3-col.php\";a:4:{s:5:\"title\";s:18:\"Pricing, 3 columns\";s:4:\"slug\";s:30:\"twentytwentyfive/pricing-3-col\";s:11:\"description\";s:100:\"A three-column boxed pricing table designed to showcase services, descriptions, and pricing options.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:18:\"services-3-col.php\";a:4:{s:5:\"title\";s:19:\"Services, 3 columns\";s:4:\"slug\";s:31:\"twentytwentyfive/services-3-col\";s:11:\"description\";s:56:\"Three columns with images and text to showcase services.\";s:10:\"categories\";a:3:{i:0;s:14:\"call-to-action\";i:1;s:6:\"banner\";i:2;s:8:\"services\";}}s:36:\"services-subscriber-only-section.php\";a:4:{s:5:\"title\";s:33:\"Services, subscriber only section\";s:4:\"slug\";s:49:\"twentytwentyfive/services-subscriber-only-section\";s:11:\"description\";s:72:\"A subscriber-only section highlighting exclusive services and offerings.\";s:10:\"categories\";a:2:{i:0;s:14:\"call-to-action\";i:1;s:8:\"services\";}}s:24:\"services-team-photos.php\";a:4:{s:5:\"title\";s:21:\"Services, team photos\";s:4:\"slug\";s:37:\"twentytwentyfive/services-team-photos\";s:11:\"description\";s:59:\"Display team photos in a services section with grid layout.\";s:10:\"categories\";a:3:{i:0;s:6:\"banner\";i:1;s:14:\"call-to-action\";i:2;s:8:\"featured\";}}s:37:\"template-404-vertical-header-blog.php\";a:5:{s:5:\"title\";s:17:\"Right-aligned 404\";s:4:\"slug\";s:50:\"twentytwentyfive/template-404-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:3:\"404\";}}s:30:\"template-archive-news-blog.php\";a:6:{s:5:\"title\";s:17:\"News blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:31:\"template-archive-photo-blog.php\";a:6:{s:5:\"title\";s:18:\"Photo blog archive\";s:4:\"slug\";s:44:\"twentytwentyfive/template-archive-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:30:\"template-archive-text-blog.php\";a:6:{s:5:\"title\";s:17:\"Text blog archive\";s:4:\"slug\";s:43:\"twentytwentyfive/template-archive-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:41:\"template-archive-vertical-header-blog.php\";a:6:{s:5:\"title\";s:21:\"Right-aligned archive\";s:4:\"slug\";s:54:\"twentytwentyfive/template-archive-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:7:\"archive\";}}s:27:\"template-home-news-blog.php\";a:6:{s:5:\"title\";s:14:\"News blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-home-photo-blog.php\";a:6:{s:5:\"title\";s:15:\"Photo blog home\";s:4:\"slug\";s:41:\"twentytwentyfive/template-home-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:38:\"template-home-posts-grid-news-blog.php\";a:5:{s:5:\"title\";s:34:\"News blog with featured posts grid\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-posts-grid-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:27:\"template-home-text-blog.php\";a:6:{s:5:\"title\";s:14:\"Text blog home\";s:4:\"slug\";s:40:\"twentytwentyfive/template-home-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:10:\"front-page\";i:1;s:4:\"home\";}}s:38:\"template-home-vertical-header-blog.php\";a:6:{s:5:\"title\";s:18:\"Right-aligned home\";s:4:\"slug\";s:51:\"twentytwentyfive/template-home-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:40:\"template-home-with-sidebar-news-blog.php\";a:6:{s:5:\"title\";s:22:\"News blog with sidebar\";s:4:\"slug\";s:53:\"twentytwentyfive/template-home-with-sidebar-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:3:{i:0;s:10:\"front-page\";i:1;s:5:\"index\";i:2;s:4:\"home\";}}s:28:\"template-page-photo-blog.php\";a:5:{s:5:\"title\";s:15:\"Photo blog page\";s:4:\"slug\";s:41:\"twentytwentyfive/template-page-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:38:\"template-page-vertical-header-blog.php\";a:5:{s:5:\"title\";s:18:\"Right-aligned page\";s:4:\"slug\";s:51:\"twentytwentyfive/template-page-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:13:\"templateTypes\";a:1:{i:0;s:4:\"page\";}}s:33:\"template-query-loop-news-blog.php\";a:4:{s:5:\"title\";s:20:\"News blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-news-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:34:\"template-query-loop-photo-blog.php\";a:6:{s:5:\"title\";s:16:\"Photo blog posts\";s:4:\"slug\";s:47:\"twentytwentyfive/template-query-loop-photo-blog\";s:11:\"description\";s:54:\"A list of posts, 3 columns, with only featured images.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:23:\"template-query-loop.php\";a:5:{s:5:\"title\";s:23:\"List of posts, 1 column\";s:4:\"slug\";s:36:\"twentytwentyfive/template-query-loop\";s:11:\"description\";s:61:\"A list of posts, 1 column, with featured image and post date.\";s:10:\"categories\";a:1:{i:0;s:5:\"query\";}s:10:\"blockTypes\";a:1:{i:0;s:10:\"core/query\";}}s:33:\"template-query-loop-text-blog.php\";a:4:{s:5:\"title\";s:20:\"Text blog query loop\";s:4:\"slug\";s:46:\"twentytwentyfive/template-query-loop-text-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:44:\"template-query-loop-vertical-header-blog.php\";a:4:{s:5:\"title\";s:24:\"Right-aligned query loop\";s:4:\"slug\";s:57:\"twentytwentyfive/template-query-loop-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:8:\"inserter\";b:0;}s:29:\"template-search-news-blog.php\";a:6:{s:5:\"title\";s:24:\"News blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:30:\"template-search-photo-blog.php\";a:6:{s:5:\"title\";s:25:\"Photo blog search results\";s:4:\"slug\";s:43:\"twentytwentyfive/template-search-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:29:\"template-search-text-blog.php\";a:6:{s:5:\"title\";s:24:\"Text blog search results\";s:4:\"slug\";s:42:\"twentytwentyfive/template-search-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-search-vertical-header-blog.php\";a:6:{s:5:\"title\";s:26:\"Right-aligned blog, search\";s:4:\"slug\";s:53:\"twentytwentyfive/template-search-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:1:{i:0;s:6:\"search\";}}s:40:\"template-single-left-aligned-content.php\";a:6:{s:5:\"title\";s:30:\"Post with left-aligned content\";s:4:\"slug\";s:47:\"twentytwentyfive/post-with-left-aligned-content\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-news-blog.php\";a:6:{s:5:\"title\";s:34:\"News blog single post with sidebar\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-news-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:26:\"template-single-offset.php\";a:6:{s:5:\"title\";s:34:\"Offset post without featured image\";s:4:\"slug\";s:39:\"twentytwentyfive/template-single-offset\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:30:\"template-single-photo-blog.php\";a:6:{s:5:\"title\";s:22:\"Photo blog single post\";s:4:\"slug\";s:43:\"twentytwentyfive/template-single-photo-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:29:\"template-single-text-blog.php\";a:6:{s:5:\"title\";s:21:\"Text blog single post\";s:4:\"slug\";s:42:\"twentytwentyfive/template-single-text-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:40:\"template-single-vertical-header-blog.php\";a:6:{s:5:\"title\";s:25:\"Right-aligned single post\";s:4:\"slug\";s:53:\"twentytwentyfive/template-single-vertical-header-blog\";s:11:\"description\";s:0:\"\";s:13:\"viewportWidth\";i:1400;s:8:\"inserter\";b:0;s:13:\"templateTypes\";a:2:{i:0;s:5:\"posts\";i:1;s:6:\"single\";}}s:22:\"testimonials-2-col.php\";a:5:{s:5:\"title\";s:21:\"2 columns with avatar\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-2-col\";s:11:\"description\";s:42:\"Two columns with testimonials and avatars.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-6-col.php\";a:5:{s:5:\"title\";s:35:\"3 column layout with 6 testimonials\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-6-col\";s:11:\"description\";s:86:\"A section with three columns and two rows, each containing a testimonial and citation.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:22:\"testimonials-large.php\";a:5:{s:5:\"title\";s:32:\"Review with large image on right\";s:4:\"slug\";s:35:\"twentytwentyfive/testimonials-large\";s:11:\"description\";s:46:\"A testimonial with a large image on the right.\";s:10:\"categories\";a:1:{i:0;s:12:\"testimonials\";}s:8:\"keywords\";a:1:{i:0;s:11:\"testimonial\";}}s:13:\"text-faqs.php\";a:6:{s:5:\"title\";s:4:\"FAQs\";s:4:\"slug\";s:26:\"twentytwentyfive/text-faqs\";s:11:\"description\";s:68:\"A FAQs section with a FAQ heading and list of questions and answers.\";s:13:\"viewportWidth\";i:1400;s:10:\"categories\";a:2:{i:0;s:4:\"text\";i:1;s:5:\"about\";}s:8:\"keywords\";a:5:{i:0;s:3:\"faq\";i:1;s:5:\"about\";i:2;s:10:\"frequently\";i:3;s:5:\"asked\";i:4;s:9:\"questions\";}}s:19:\"vertical-header.php\";a:6:{s:5:\"title\";s:20:\"Vertical site header\";s:4:\"slug\";s:32:\"twentytwentyfive/vertical-header\";s:11:\"description\";s:52:\"Vertical site header with site title and navigation.\";s:13:\"viewportWidth\";i:300;s:10:\"categories\";a:1:{i:0;s:6:\"header\";}s:10:\"blockTypes\";a:1:{i:0;s:34:\"core/template-part/vertical-header\";}}}}', 'off');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 11, '_tutor_course_price_type', 'free'),
(4, 11, '_wp_old_slug', 'new-course'),
(5, 11, '_tutor_course_settings', 'a:9:{s:16:\"maximum_students\";i:0;s:17:\"enrollment_expiry\";s:0:\"\";s:19:\"enable_content_drip\";i:0;s:17:\"content_drip_type\";s:0:\"\";s:15:\"enable_tutor_bp\";i:0;s:24:\"course_enrollment_period\";s:2:\"no\";s:20:\"enrollment_starts_at\";s:0:\"\";s:18:\"enrollment_ends_at\";s:0:\"\";s:16:\"pause_enrollment\";s:2:\"no\";}'),
(6, 11, '_video', 'a:0:{}'),
(7, 11, '_tutor_enable_qa', 'no'),
(8, 11, '_tutor_is_public_course', 'no'),
(9, 11, 'tutor_course_sale_price', '0'),
(10, 11, '_course_duration', 'a:2:{s:5:\"hours\";s:1:\"0\";s:7:\"minutes\";s:1:\"0\";}'),
(11, 11, '_tutor_course_level', 'intermediate'),
(12, 11, '_tutor_course_started', '1767096234');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-12-29 10:54:07', '2025-12-29 13:54:07', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2025-12-29 10:54:07', '2025-12-29 13:54:07', '', 0, 'http://localhost/flashcards/?p=1', 0, 'post', '', 1),
(2, 1, '2025-12-29 10:54:07', '2025-12-29 13:54:07', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/flashcards/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2025-12-29 10:54:07', '2025-12-29 13:54:07', '', 0, 'http://localhost/flashcards/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-12-29 10:54:07', '2025-12-29 13:54:07', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quem somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/flashcards.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentários</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia incorporada de outros sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Com quem compartilhamos seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Por quanto tempo mantemos os seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quais os seus direitos sobre seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Para onde seus dados são enviados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2025-12-29 10:54:07', '2025-12-29 13:54:07', '', 0, 'http://localhost/flashcards/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-12-29 10:54:08', '2025-12-29 13:54:08', '<!-- wp:page-list /-->', 'Navegação', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-12-29 10:54:08', '2025-12-29 13:54:08', '', 0, 'http://localhost/flashcards/index.php/2025/12/29/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-12-29 11:03:10', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-12-29 11:03:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/flashcards/?p=5', 0, 'post', '', 0),
(6, 1, '2025-12-29 14:27:30', '2025-12-29 17:27:30', '', 'Painel', '', 'publish', 'closed', 'closed', '', 'painel', '', '', '2025-12-29 14:27:30', '2025-12-29 17:27:30', '', 0, 'http://localhost/flashcards/index.php/painel/', 0, 'page', '', 0),
(7, 1, '2025-12-29 14:27:30', '2025-12-29 17:27:30', '[tutor_student_registration_form]', 'Cadastro de alunos', '', 'publish', 'closed', 'closed', '', 'cadastro-de-alunos', '', '', '2025-12-29 14:27:30', '2025-12-29 17:27:30', '', 0, 'http://localhost/flashcards/index.php/cadastro-de-alunos/', 0, 'page', '', 0),
(8, 1, '2025-12-29 14:27:30', '2025-12-29 17:27:30', '[tutor_instructor_registration_form]', 'Cadastro de instrutores', '', 'publish', 'closed', 'closed', '', 'cadastro-de-instrutores', '', '', '2025-12-29 14:27:30', '2025-12-29 17:27:30', '', 0, 'http://localhost/flashcards/index.php/cadastro-de-instrutores/', 0, 'page', '', 0),
(9, 1, '2025-12-29 14:27:32', '2025-12-29 17:27:32', '', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2025-12-29 14:27:32', '2025-12-29 17:27:32', '', 0, 'http://localhost/flashcards/cart/', 0, 'page', '', 0),
(10, 1, '2025-12-29 14:27:32', '2025-12-29 17:27:32', '', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2025-12-29 14:27:32', '2025-12-29 17:27:32', '', 0, 'http://localhost/flashcards/checkout/', 0, 'page', '', 0),
(11, 1, '2025-12-29 14:36:29', '2025-12-29 17:36:29', '', 'Nome Qualquer Teste', '', 'publish', 'closed', 'closed', '', 'nome-qualquer-teste', '', '', '2025-12-29 14:36:29', '2025-12-29 17:36:29', '', 0, 'http://localhost/flashcards/?post_type=courses&#038;p=11', 0, 'courses', '', 0),
(12, 1, '2025-12-29 14:42:08', '2025-12-29 17:42:08', 'Sumário do módulo básico', 'Modulo Básico Teste', '', 'publish', 'closed', 'closed', '', 'modulo-basico-teste', '', '', '2025-12-29 14:42:08', '2025-12-29 17:42:08', '', 11, 'http://localhost/flashcards/topics/modulo-basico-teste/', 1, 'topics', '', 0),
(13, 1, '2025-12-29 14:42:56', '2025-12-29 17:42:56', '<p>Introdução a Substântivos.</p>', 'Aula de Grámatica Teste', '', 'publish', 'open', 'closed', '', 'aula-de-gramatica-teste', '', '', '2025-12-29 14:42:56', '2025-12-29 17:42:56', '', 12, 'http://localhost/flashcards/courses/nome-qualquer-teste/lessons/aula-de-gramatica-teste/', 1, 'lesson', '', 0),
(14, 1, '2025-12-30 12:03:42', '2025-12-30 15:03:42', '', 'Curso matriculado &ndash; 30 de December de 2025 @ 15:03', '', 'completed', 'closed', 'closed', '', 'curso-matriculado-30-de-december-de-2025-1503', '', '', '2025-12-30 12:03:42', '2025-12-30 15:03:42', '', 11, 'http://localhost/flashcards/?post_type=tutor_enrolled&p=14', 0, 'tutor_enrolled', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_carts`
--

CREATE TABLE `wp_tutor_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_code` varchar(50) DEFAULT NULL,
  `created_at_gmt` datetime NOT NULL,
  `updated_at_gmt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_cart_items`
--

CREATE TABLE `wp_tutor_cart_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cart_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `item_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`item_details`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_coupons`
--

CREATE TABLE `wp_tutor_coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_status` varchar(50) DEFAULT NULL,
  `coupon_type` varchar(100) DEFAULT 'code',
  `coupon_code` varchar(50) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_description` text DEFAULT NULL,
  `discount_type` enum('percentage','flat') NOT NULL,
  `discount_amount` decimal(13,2) NOT NULL,
  `applies_to` varchar(100) DEFAULT 'all_courses_and_bundles',
  `total_usage_limit` int(10) UNSIGNED DEFAULT NULL,
  `per_user_usage_limit` tinyint(4) UNSIGNED DEFAULT NULL,
  `purchase_requirement` varchar(50) DEFAULT 'no_minimum',
  `purchase_requirement_value` decimal(13,2) DEFAULT NULL,
  `start_date_gmt` datetime NOT NULL,
  `expire_date_gmt` datetime DEFAULT NULL,
  `created_at_gmt` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_at_gmt` datetime DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_coupon_applications`
--

CREATE TABLE `wp_tutor_coupon_applications` (
  `coupon_code` varchar(50) NOT NULL,
  `reference_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_coupon_usages`
--

CREATE TABLE `wp_tutor_coupon_usages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_customers`
--

CREATE TABLE `wp_tutor_customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_first_name` varchar(255) NOT NULL,
  `billing_last_name` varchar(255) NOT NULL,
  `billing_email` varchar(255) NOT NULL,
  `billing_phone` varchar(20) NOT NULL,
  `billing_zip_code` varchar(20) NOT NULL,
  `billing_address` text NOT NULL,
  `billing_country` varchar(100) NOT NULL,
  `billing_state` varchar(100) NOT NULL,
  `billing_city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_earnings`
--

CREATE TABLE `wp_tutor_earnings` (
  `earning_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_status` varchar(50) DEFAULT NULL,
  `course_price_total` decimal(16,2) DEFAULT NULL,
  `course_price_grand_total` decimal(16,2) DEFAULT NULL,
  `instructor_amount` decimal(16,2) DEFAULT NULL,
  `instructor_rate` decimal(16,2) DEFAULT NULL,
  `admin_amount` decimal(16,2) DEFAULT NULL,
  `admin_rate` decimal(16,2) DEFAULT NULL,
  `commission_type` varchar(20) DEFAULT NULL,
  `deduct_fees_amount` decimal(16,2) DEFAULT NULL,
  `deduct_fees_name` varchar(250) DEFAULT NULL,
  `deduct_fees_type` varchar(20) DEFAULT NULL,
  `process_by` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_ordermeta`
--

CREATE TABLE `wp_tutor_ordermeta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL,
  `created_at_gmt` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_at_gmt` datetime DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_orders`
--

CREATE TABLE `wp_tutor_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT 0,
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction id from payment gateway',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_type` varchar(50) NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `subtotal_price` decimal(13,2) NOT NULL,
  `pre_tax_price` decimal(13,2) NOT NULL,
  `tax_type` varchar(50) DEFAULT NULL,
  `tax_rate` decimal(13,2) DEFAULT NULL COMMENT 'Tax percentage',
  `tax_amount` decimal(13,2) DEFAULT NULL,
  `total_price` decimal(13,2) NOT NULL,
  `net_payment` decimal(13,2) NOT NULL,
  `coupon_code` varchar(255) DEFAULT NULL,
  `coupon_amount` decimal(13,2) DEFAULT NULL,
  `discount_type` enum('percentage','flat') DEFAULT NULL,
  `discount_amount` decimal(13,2) DEFAULT NULL,
  `discount_reason` text DEFAULT NULL,
  `fees` decimal(13,2) DEFAULT NULL,
  `earnings` decimal(13,2) DEFAULT NULL,
  `refund_amount` decimal(13,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_payloads` longtext DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at_gmt` datetime NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_at_gmt` datetime DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_order_itemmeta`
--

CREATE TABLE `wp_tutor_order_itemmeta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_order_items`
--

CREATE TABLE `wp_tutor_order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `regular_price` decimal(13,2) NOT NULL,
  `sale_price` varchar(13) DEFAULT NULL,
  `discount_price` varchar(13) DEFAULT NULL,
  `coupon_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_quiz_attempts`
--

CREATE TABLE `wp_tutor_quiz_attempts` (
  `attempt_id` bigint(20) NOT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `quiz_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `total_questions` int(11) DEFAULT NULL,
  `total_answered_questions` int(11) DEFAULT NULL,
  `total_marks` decimal(9,2) DEFAULT NULL,
  `earned_marks` decimal(9,2) DEFAULT NULL,
  `attempt_info` text DEFAULT NULL,
  `attempt_status` varchar(50) DEFAULT NULL,
  `attempt_ip` varchar(250) DEFAULT NULL,
  `attempt_started_at` datetime DEFAULT NULL,
  `attempt_ended_at` datetime DEFAULT NULL,
  `is_manually_reviewed` int(1) DEFAULT NULL,
  `manually_reviewed_at` datetime DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_quiz_attempt_answers`
--

CREATE TABLE `wp_tutor_quiz_attempt_answers` (
  `attempt_answer_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `quiz_id` bigint(20) DEFAULT NULL,
  `question_id` bigint(20) DEFAULT NULL,
  `quiz_attempt_id` bigint(20) DEFAULT NULL,
  `given_answer` longtext DEFAULT NULL,
  `question_mark` decimal(8,2) DEFAULT NULL,
  `achieved_mark` decimal(8,2) DEFAULT NULL,
  `minus_mark` decimal(8,2) DEFAULT NULL,
  `is_correct` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_quiz_questions`
--

CREATE TABLE `wp_tutor_quiz_questions` (
  `question_id` bigint(20) NOT NULL,
  `content_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quiz_id` bigint(20) DEFAULT NULL,
  `question_title` text DEFAULT NULL,
  `question_description` longtext DEFAULT NULL,
  `answer_explanation` longtext DEFAULT '',
  `question_type` varchar(50) DEFAULT NULL,
  `question_mark` decimal(9,2) DEFAULT NULL,
  `question_settings` longtext DEFAULT NULL,
  `question_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_quiz_question_answers`
--

CREATE TABLE `wp_tutor_quiz_question_answers` (
  `answer_id` bigint(20) NOT NULL,
  `belongs_question_id` bigint(20) DEFAULT NULL,
  `belongs_question_type` varchar(250) DEFAULT NULL,
  `answer_title` text DEFAULT NULL,
  `is_correct` tinyint(4) DEFAULT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `answer_two_gap_match` text DEFAULT NULL,
  `answer_view_format` varchar(250) DEFAULT NULL,
  `answer_settings` text DEFAULT NULL,
  `answer_order` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_scheduler`
--

CREATE TABLE `wp_tutor_scheduler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(50) NOT NULL COMMENT 'Type of schedule, e.g., gift, email, reminder',
  `reference_id` varchar(255) NOT NULL COMMENT 'Unique reference id, token, etc',
  `scheduled_at_gmt` datetime NOT NULL COMMENT 'When the action should be executed',
  `status` varchar(255) NOT NULL DEFAULT 'processing',
  `payload` longtext DEFAULT NULL,
  `created_at_gmt` datetime DEFAULT NULL,
  `updated_at_gmt` datetime DEFAULT NULL,
  `scheduled_by` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'User who scheduled the action',
  `scheduled_for` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Target user of the scheduled action'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_tutor_withdraws`
--

CREATE TABLE `wp_tutor_withdraws` (
  `withdraw_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `method_data` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'adminbx'),
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
(12, 1, 'wp_capabilities', 'a:2:{s:13:\"administrator\";b:1;s:16:\"tutor_instructor\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_is_tutor_instructor', '1767018450'),
(20, 1, '_tutor_instructor_status', 'approved'),
(21, 1, '_tutor_instructor_approved', '1767018450'),
(22, 1, '_tutor_instructor_course_id', '11'),
(23, 1, 'session_tokens', 'a:3:{s:64:\"c98707b4b086b3c90e2b853c3eca69d707f0113b6e0de9e9300cc57800c11198\";a:4:{s:10:\"expiration\";i:1768239268;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1767029668;}s:64:\"3142a31433925f1d4337e95c467dad92e52fa42ab0308dea43d16a0c022b94f5\";a:4:{s:10:\"expiration\";i:1767279056;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:146.0) Gecko/20100101 Firefox/146.0\";s:5:\"login\";i:1767106256;}s:64:\"ebb5572a4d5386900a7ae1aec6bed6fe603ca03aac24f38b66e5cf87334ee071\";a:4:{s:10:\"expiration\";i:1768401092;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1767191492;}}'),
(24, 1, 'tutor_last_login', '1767191492'),
(25, 1, '_tutor_timezone', 'America/Sao_Paulo'),
(26, 1, '_is_tutor_student', '1767096222');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'adminbx', '$wp$2y$10$7kjdwKOJsJW49Tkpai160.h3rY60cNGjY87mLVVea0.jAWpRk854i', 'adminbx', 'cguilhermear1999@gmail.com', 'http://localhost/flashcards', '2025-12-29 13:54:07', '', 0, 'adminbx');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_fsrs_reviews`
--
ALTER TABLE `wp_fsrs_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_card` (`user_id`,`card_id`);

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`),
  ADD KEY `type_status_author` (`post_type`,`post_status`,`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_tutor_carts`
--
ALTER TABLE `wp_tutor_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `coupon_code` (`coupon_code`);

--
-- Índices de tabela `wp_tutor_cart_items`
--
ALTER TABLE `wp_tutor_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Índices de tabela `wp_tutor_coupons`
--
ALTER TABLE `wp_tutor_coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupon_code` (`coupon_code`),
  ADD KEY `start_date_gmt` (`start_date_gmt`),
  ADD KEY `expire_date_gmt` (`expire_date_gmt`);

--
-- Índices de tabela `wp_tutor_coupon_applications`
--
ALTER TABLE `wp_tutor_coupon_applications`
  ADD KEY `coupon_code` (`coupon_code`),
  ADD KEY `reference_id` (`reference_id`);

--
-- Índices de tabela `wp_tutor_coupon_usages`
--
ALTER TABLE `wp_tutor_coupon_usages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_code` (`coupon_code`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `wp_tutor_customers`
--
ALTER TABLE `wp_tutor_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `billing_email` (`billing_email`);

--
-- Índices de tabela `wp_tutor_earnings`
--
ALTER TABLE `wp_tutor_earnings`
  ADD PRIMARY KEY (`earning_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `process_by` (`process_by`);

--
-- Índices de tabela `wp_tutor_ordermeta`
--
ALTER TABLE `wp_tutor_ordermeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Índices de tabela `wp_tutor_orders`
--
ALTER TABLE `wp_tutor_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_type` (`order_type`),
  ADD KEY `payment_status` (`payment_status`),
  ADD KEY `order_status` (`order_status`),
  ADD KEY `transaction_id` (`transaction_id`);

--
-- Índices de tabela `wp_tutor_order_itemmeta`
--
ALTER TABLE `wp_tutor_order_itemmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `meta_key` (`meta_key`);

--
-- Índices de tabela `wp_tutor_order_items`
--
ALTER TABLE `wp_tutor_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Índices de tabela `wp_tutor_quiz_attempts`
--
ALTER TABLE `wp_tutor_quiz_attempts`
  ADD PRIMARY KEY (`attempt_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `result` (`result`);

--
-- Índices de tabela `wp_tutor_quiz_attempt_answers`
--
ALTER TABLE `wp_tutor_quiz_attempt_answers`
  ADD PRIMARY KEY (`attempt_answer_id`);

--
-- Índices de tabela `wp_tutor_quiz_questions`
--
ALTER TABLE `wp_tutor_quiz_questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `content_id` (`content_id`);

--
-- Índices de tabela `wp_tutor_quiz_question_answers`
--
ALTER TABLE `wp_tutor_quiz_question_answers`
  ADD PRIMARY KEY (`answer_id`);

--
-- Índices de tabela `wp_tutor_scheduler`
--
ALTER TABLE `wp_tutor_scheduler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_context_status` (`type`,`status`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_scheduled_at_gmt` (`scheduled_at_gmt`);

--
-- Índices de tabela `wp_tutor_withdraws`
--
ALTER TABLE `wp_tutor_withdraws`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_fsrs_reviews`
--
ALTER TABLE `wp_fsrs_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_tutor_carts`
--
ALTER TABLE `wp_tutor_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_cart_items`
--
ALTER TABLE `wp_tutor_cart_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_coupons`
--
ALTER TABLE `wp_tutor_coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_coupon_usages`
--
ALTER TABLE `wp_tutor_coupon_usages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_customers`
--
ALTER TABLE `wp_tutor_customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_earnings`
--
ALTER TABLE `wp_tutor_earnings`
  MODIFY `earning_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_ordermeta`
--
ALTER TABLE `wp_tutor_ordermeta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_orders`
--
ALTER TABLE `wp_tutor_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_order_itemmeta`
--
ALTER TABLE `wp_tutor_order_itemmeta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_order_items`
--
ALTER TABLE `wp_tutor_order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_quiz_attempts`
--
ALTER TABLE `wp_tutor_quiz_attempts`
  MODIFY `attempt_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_quiz_attempt_answers`
--
ALTER TABLE `wp_tutor_quiz_attempt_answers`
  MODIFY `attempt_answer_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_quiz_questions`
--
ALTER TABLE `wp_tutor_quiz_questions`
  MODIFY `question_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_quiz_question_answers`
--
ALTER TABLE `wp_tutor_quiz_question_answers`
  MODIFY `answer_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_scheduler`
--
ALTER TABLE `wp_tutor_scheduler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_tutor_withdraws`
--
ALTER TABLE `wp_tutor_withdraws`
  MODIFY `withdraw_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `wp_tutor_carts`
--
ALTER TABLE `wp_tutor_carts`
  ADD CONSTRAINT `fk_tutor_cart_user_id` FOREIGN KEY (`user_id`) REFERENCES `wp_users` (`ID`) ON DELETE CASCADE;

--
-- Restrições para tabelas `wp_tutor_cart_items`
--
ALTER TABLE `wp_tutor_cart_items`
  ADD CONSTRAINT `fk_tutor_cart_item_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `wp_tutor_carts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tutor_cart_item_course_id` FOREIGN KEY (`course_id`) REFERENCES `wp_posts` (`ID`) ON DELETE CASCADE;

--
-- Restrições para tabelas `wp_tutor_coupon_applications`
--
ALTER TABLE `wp_tutor_coupon_applications`
  ADD CONSTRAINT `fk_tutor_coupon_application_coupon_code` FOREIGN KEY (`coupon_code`) REFERENCES `wp_tutor_coupons` (`coupon_code`) ON DELETE CASCADE;

--
-- Restrições para tabelas `wp_tutor_coupon_usages`
--
ALTER TABLE `wp_tutor_coupon_usages`
  ADD CONSTRAINT `fk_tutor_coupon_usage_coupon_code` FOREIGN KEY (`coupon_code`) REFERENCES `wp_tutor_coupons` (`coupon_code`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_tutor_coupon_usage_user_id` FOREIGN KEY (`user_id`) REFERENCES `wp_users` (`ID`) ON DELETE CASCADE;

--
-- Restrições para tabelas `wp_tutor_ordermeta`
--
ALTER TABLE `wp_tutor_ordermeta`
  ADD CONSTRAINT `fk_tutor_ordermeta_order_id` FOREIGN KEY (`order_id`) REFERENCES `wp_tutor_orders` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `wp_tutor_order_itemmeta`
--
ALTER TABLE `wp_tutor_order_itemmeta`
  ADD CONSTRAINT `fk_tutor_itemmeta` FOREIGN KEY (`item_id`) REFERENCES `wp_tutor_order_items` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `wp_tutor_order_items`
--
ALTER TABLE `wp_tutor_order_items`
  ADD CONSTRAINT `fk_tutor_order_item_order_id` FOREIGN KEY (`order_id`) REFERENCES `wp_tutor_orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
