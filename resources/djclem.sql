-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  lun. 26 nov. 2018 à 13:46
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `djclem`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-16 01:33:56', '2018-09-15 23:33:56', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://local.djclem', 'yes'),
(2, 'home', 'http://local.djclem', 'yes'),
(3, 'blogname', 'DjClem', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'leo450450@gmail.com', 'yes'),
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
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:139:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:14:\"html5-blank/?$\";s:31:\"index.php?post_type=html5-blank\";s:44:\"html5-blank/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:39:\"html5-blank/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=html5-blank&feed=$matches[1]\";s:31:\"html5-blank/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=html5-blank&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"html5-blank/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"html5-blank/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"html5-blank/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"html5-blank/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"html5-blank/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"html5-blank/(.+?)/embed/?$\";s:44:\"index.php?html5-blank=$matches[1]&embed=true\";s:30:\"html5-blank/(.+?)/trackback/?$\";s:38:\"index.php?html5-blank=$matches[1]&tb=1\";s:50:\"html5-blank/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:45:\"html5-blank/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?html5-blank=$matches[1]&feed=$matches[2]\";s:38:\"html5-blank/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&paged=$matches[2]\";s:45:\"html5-blank/(.+?)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?html5-blank=$matches[1]&cpage=$matches[2]\";s:34:\"html5-blank/(.+?)(?:/([0-9]+))?/?$\";s:50:\"index.php?html5-blank=$matches[1]&page=$matches[2]\";s:36:\"who_am_i/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"who_am_i/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"who_am_i/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"who_am_i/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"who_am_i/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"who_am_i/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"who_am_i/([^/]+)/embed/?$\";s:41:\"index.php?who_am_i=$matches[1]&embed=true\";s:29:\"who_am_i/([^/]+)/trackback/?$\";s:35:\"index.php?who_am_i=$matches[1]&tb=1\";s:37:\"who_am_i/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?who_am_i=$matches[1]&paged=$matches[2]\";s:44:\"who_am_i/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?who_am_i=$matches[1]&cpage=$matches[2]\";s:33:\"who_am_i/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?who_am_i=$matches[1]&page=$matches[2]\";s:25:\"who_am_i/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"who_am_i/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"who_am_i/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"who_am_i/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"who_am_i/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"who_am_i/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"what_i_do/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"what_i_do/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"what_i_do/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"what_i_do/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"what_i_do/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"what_i_do/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"what_i_do/([^/]+)/embed/?$\";s:42:\"index.php?what_i_do=$matches[1]&embed=true\";s:30:\"what_i_do/([^/]+)/trackback/?$\";s:36:\"index.php?what_i_do=$matches[1]&tb=1\";s:38:\"what_i_do/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?what_i_do=$matches[1]&paged=$matches[2]\";s:45:\"what_i_do/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?what_i_do=$matches[1]&cpage=$matches[2]\";s:34:\"what_i_do/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?what_i_do=$matches[1]&page=$matches[2]\";s:26:\"what_i_do/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"what_i_do/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"what_i_do/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"what_i_do/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"what_i_do/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"what_i_do/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'djclem-v1', 'yes'),
(41, 'stylesheet', 'djclem-v1', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"widget-area-1\";a:0:{}s:13:\"widget-area-2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1543239236;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543242335;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543275236;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543277239;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537056526;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '0', 'no'),
(145, 'current_theme', 'DJClem-v1', 'yes'),
(146, 'theme_mods_djclem-v1', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"header-menu\";i:2;s:12:\"sidebar-menu\";i:0;s:10:\"extra-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(147, 'theme_switched', '', 'yes'),
(172, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(238, '_site_transient_timeout_theme_roots', '1543237925', 'no'),
(239, '_site_transient_theme_roots', 'a:4:{s:9:\"djclem-v1\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(241, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543236127;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-10-28 16:02:42\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(242, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543236128;s:7:\"checked\";a:4:{s:9:\"djclem-v1\";s:3:\"1.0\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(243, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1543236129;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.0\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"4.0.8\";s:7:\"updated\";s:19:\"2018-10-03 18:11:49\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.0.8/fr_FR.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"1.6\";s:7:\"updated\";s:19:\"2018-04-27 10:03:32\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.6/fr_FR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1537107552:1'),
(4, 5, '_edit_last', '1'),
(5, 5, '_edit_lock', '1537121590:1'),
(6, 5, '_wp_page_template', 'template-home.php'),
(7, 7, '_wp_attached_file', '2018/09/background.jpg'),
(8, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:22:\"2018/09/background.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"background-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"background-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"background-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"background-700x525.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:21:\"background-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:22:\"background-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 5, '_thumbnail_id', '25'),
(10, 25, '_wp_attached_file', '2018/09/37559791_1729369487179279_3714862259650953216_n2.jpg'),
(11, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:60:\"2018/09/37559791_1729369487179279_3714862259650953216_n2.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:60:\"37559791_1729369487179279_3714862259650953216_n2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:60:\"37559791_1729369487179279_3714862259650953216_n2-250x188.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:60:\"37559791_1729369487179279_3714862259650953216_n2-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"37559791_1729369487179279_3714862259650953216_n2-700x525.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:525;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:59:\"37559791_1729369487179279_3714862259650953216_n2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"custom-size\";a:4:{s:4:\"file\";s:60:\"37559791_1729369487179279_3714862259650953216_n2-700x200.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1537198082\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 26, '_edit_last', '1'),
(13, 26, '_edit_lock', '1537123738:1'),
(14, 26, '_wp_page_template', 'template-content.php'),
(15, 28, '_edit_last', '1'),
(16, 28, '_wp_page_template', 'default'),
(17, 28, '_edit_lock', '1537120134:1'),
(18, 30, '_menu_item_type', 'post_type'),
(19, 30, '_menu_item_menu_item_parent', '0'),
(20, 30, '_menu_item_object_id', '5'),
(21, 30, '_menu_item_object', 'page'),
(22, 30, '_menu_item_target', ''),
(23, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 30, '_menu_item_xfn', ''),
(25, 30, '_menu_item_url', ''),
(27, 31, '_menu_item_type', 'post_type'),
(28, 31, '_menu_item_menu_item_parent', '0'),
(29, 31, '_menu_item_object_id', '26'),
(30, 31, '_menu_item_object', 'page'),
(31, 31, '_menu_item_target', ''),
(32, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 31, '_menu_item_xfn', ''),
(34, 31, '_menu_item_url', ''),
(36, 32, '_menu_item_type', 'post_type'),
(37, 32, '_menu_item_menu_item_parent', '0'),
(38, 32, '_menu_item_object_id', '28'),
(39, 32, '_menu_item_object', 'page'),
(40, 32, '_menu_item_target', ''),
(41, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 32, '_menu_item_xfn', ''),
(43, 32, '_menu_item_url', ''),
(45, 33, '_edit_last', '1'),
(46, 33, '_wp_page_template', 'default'),
(47, 33, '_edit_lock', '1537120337:1'),
(48, 35, '_menu_item_type', 'post_type'),
(49, 35, '_menu_item_menu_item_parent', '0'),
(50, 35, '_menu_item_object_id', '33'),
(51, 35, '_menu_item_object', 'page'),
(52, 35, '_menu_item_target', ''),
(53, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 35, '_menu_item_xfn', ''),
(55, 35, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-16 01:33:56', '2018-09-15 23:33:56', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-09-16 01:33:56', '2018-09-15 23:33:56', '', 0, 'http://local.djclem/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-16 01:33:56', '2018-09-15 23:33:56', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://local.djclem/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-09-16 01:33:56', '2018-09-15 23:33:56', '', 0, 'http://local.djclem/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-16 01:33:56', '2018-09-15 23:33:56', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://local.djclem.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2018-09-16 01:33:56', '2018-09-15 23:33:56', '', 0, 'http://local.djclem/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-09-16 16:25:51', '2018-09-16 14:25:51', '<div class=\"brand\">Music experience</div>\r\n<h1 class=\"title\">CLG<span class=\"dot\">.</span><span class=\"font-bis\">events</span></h1>', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-09-16 20:11:17', '2018-09-16 18:11:17', '', 0, 'http://local.djclem/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-09-16 16:25:51', '2018-09-16 14:25:51', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 16:25:51', '2018-09-16 14:25:51', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-09-16 17:07:00', '2018-09-16 15:07:00', '', 'background', '', 'inherit', 'open', 'closed', '', 'background', '', '', '2018-09-16 17:07:00', '2018-09-16 15:07:00', '', 5, 'http://local.djclem/wp-content/uploads/2018/09/background.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2018-09-16 18:38:09', '2018-09-16 16:38:09', '<h1>CLG EVENTS</h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 18:38:09', '2018-09-16 16:38:09', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-09-16 18:39:58', '2018-09-16 16:39:58', '<h1>CLG EVENTS</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 18:39:58', '2018-09-16 16:39:58', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-09-16 19:06:35', '2018-09-16 17:06:35', '<h1><span>CLG</span> events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:06:35', '2018-09-16 17:06:35', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-09-16 19:09:25', '2018-09-16 17:09:25', '<h1><span>CLG</span>.events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:09:25', '2018-09-16 17:09:25', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-09-16 19:09:36', '2018-09-16 17:09:36', '<h1><span>CLG.</span>events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:09:36', '2018-09-16 17:09:36', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-09-16 19:09:43', '2018-09-16 17:09:43', '<h1><span>CLG</span>events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:09:43', '2018-09-16 17:09:43', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-09-16 19:13:23', '2018-09-16 17:13:23', '<h1><span>CLG</span> events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:13:23', '2018-09-16 17:13:23', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-09-16 19:13:29', '2018-09-16 17:13:29', '<h1><span>CLG.</span> events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:13:29', '2018-09-16 17:13:29', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-09-16 19:13:36', '2018-09-16 17:13:36', '<h1><span>CLG.</span>events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:13:36', '2018-09-16 17:13:36', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-09-16 19:14:06', '2018-09-16 17:14:06', '<h1><span>CLG<span>.</span></span>events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam dictum nunc et ligula tristique fringilla. Mauris purus nunc, elementum vel rutrum ac, iaculis vel nisl. Nullam accumsan id urna nec ornare. Praesent non varius lectus. Pellentesque commodo eget est et varius. Aliquam erat volutpat.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:14:06', '2018-09-16 17:14:06', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-09-16 19:16:15', '2018-09-16 17:16:15', '<h1><span>CLG<span>.</span></span>events</h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:16:15', '2018-09-16 17:16:15', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-09-16 19:21:19', '2018-09-16 17:21:19', '<h1>CLG.events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu neque eu erat pharetra rutrum quis eu tortor. Cras egestas laoreet lorem, eget fringilla velit finibus vitae. Vestibulum ac eleifend sem. Praesent elementum bibendum est at tristique. Morbi varius purus vel ligula maximus, id fringilla elit cursus. Etiam auctor interdum felis, a dapibus lectus vestibulum et. Donec sagittis risus vitae augue pellentesque, a mollis purus fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:21:19', '2018-09-16 17:21:19', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-09-16 19:22:07', '2018-09-16 17:22:07', '<h1><span>CLG<span>.</span></span>events</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu neque eu erat pharetra rutrum quis eu tortor. Cras egestas laoreet lorem, eget fringilla velit finibus vitae. Vestibulum ac eleifend sem. Praesent elementum bibendum est at tristique. Morbi varius purus vel ligula maximus, id fringilla elit cursus. Etiam auctor interdum felis, a dapibus lectus vestibulum et. Donec sagittis risus vitae augue pellentesque, a mollis purus fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:22:07', '2018-09-16 17:22:07', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-09-16 19:22:25', '2018-09-16 17:22:25', '<h1><span>CLG<span>.</span></span>events</h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:22:25', '2018-09-16 17:22:25', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-09-16 19:34:41', '2018-09-16 17:34:41', '<div class=\"brand\">Music experience</div>\r\n<h1><span>CLG<span>.</span></span>events</h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:34:41', '2018-09-16 17:34:41', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-09-16 19:35:55', '2018-09-16 17:35:55', '<h1><span>CLG<span>.</span></span>events</h1>\r\n<div class=\"brand\">Music experience</div>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:35:55', '2018-09-16 17:35:55', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-09-16 19:37:48', '2018-09-16 17:37:48', '<div class=\"brand\">Music experience</div>\r\n<h1><span>CLG<span>.</span></span>events</h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 19:37:48', '2018-09-16 17:37:48', '', 5, 'http://local.djclem/2018/09/16/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2018-09-16 19:46:46', '2018-09-16 17:46:46', '', '37559791_1729369487179279_3714862259650953216_n2', '', 'inherit', 'open', 'closed', '', '37559791_1729369487179279_3714862259650953216_n2', '', '', '2018-09-16 19:46:46', '2018-09-16 17:46:46', '', 5, 'http://local.djclem/wp-content/uploads/2018/09/37559791_1729369487179279_3714862259650953216_n2.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-09-16 19:51:11', '2018-09-16 17:51:11', '<h1>Depuis le temps</h1>\r\n<h2>La musique avant tout</h2>\r\n&nbsp;\r\n\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\n&nbsp;\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-7\" src=\"http://local.djclem/wp-content/uploads/2018/09/background.jpg\" alt=\"\" />', 'A propos', '', 'publish', 'closed', 'closed', '', 'a-propos', '', '', '2018-09-16 20:42:53', '2018-09-16 18:42:53', '', 0, 'http://local.djclem/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-09-16 19:51:11', '2018-09-16 17:51:11', '', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 19:51:11', '2018-09-16 17:51:11', '', 26, 'http://local.djclem/2018/09/16/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-09-16 19:51:16', '2018-09-16 17:51:16', '', 'Prestations', '', 'publish', 'closed', 'closed', '', 'prestations', '', '', '2018-09-16 19:51:16', '2018-09-16 17:51:16', '', 0, 'http://local.djclem/?page_id=28', 0, 'page', '', 0),
(29, 1, '2018-09-16 19:51:16', '2018-09-16 17:51:16', '', 'Prestations', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-09-16 19:51:16', '2018-09-16 17:51:16', '', 28, 'http://local.djclem/2018/09/16/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-09-16 19:52:11', '2018-09-16 17:52:11', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-09-16 19:54:44', '2018-09-16 17:54:44', '', 0, 'http://local.djclem/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2018-09-16 19:52:11', '2018-09-16 17:52:11', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-09-16 19:54:44', '2018-09-16 17:54:44', '', 0, 'http://local.djclem/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2018-09-16 19:52:11', '2018-09-16 17:52:11', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-09-16 19:54:44', '2018-09-16 17:54:44', '', 0, 'http://local.djclem/?p=32', 3, 'nav_menu_item', '', 0),
(33, 1, '2018-09-16 19:54:40', '2018-09-16 17:54:40', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-16 19:54:40', '2018-09-16 17:54:40', '', 0, 'http://local.djclem/?page_id=33', 0, 'page', '', 0),
(34, 1, '2018-09-16 19:54:40', '2018-09-16 17:54:40', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2018-09-16 19:54:40', '2018-09-16 17:54:40', '', 33, 'http://local.djclem/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-09-16 19:54:44', '2018-09-16 17:54:44', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2018-09-16 19:54:44', '2018-09-16 17:54:44', '', 0, 'http://local.djclem/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2018-09-16 20:22:17', '2018-09-16 18:22:17', '<h1>Depuis le temps</h1>\n<h2></h2>\n&nbsp;\n\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\n\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\n\n&nbsp;\n\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\n\n&nbsp;\n\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2018-09-16 20:22:17', '2018-09-16 18:22:17', '', 26, 'http://local.djclem/26-autosave-v1/', 0, 'revision', '', 0),
(37, 1, '2018-09-16 20:04:16', '2018-09-16 18:04:16', '<h1>Test</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu neque eu erat pharetra rutrum quis eu tortor. Cras egestas laoreet lorem, eget fringilla velit finibus vitae. Vestibulum ac eleifend sem. Praesent elementum bibendum est at tristique. Morbi varius purus vel ligula maximus, id fringilla elit cursus. Etiam auctor interdum felis, a dapibus lectus vestibulum et. Donec sagittis risus vitae augue pellentesque, a mollis purus fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:04:16', '2018-09-16 18:04:16', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-09-16 20:07:08', '2018-09-16 18:07:08', '<div class=\"brand\">Music experience</div>\r\n<h1>CLG<span>.</span><span class=\"bis\">events</span></h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 20:07:08', '2018-09-16 18:07:08', '', 5, 'http://local.djclem/5-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-09-16 20:10:33', '2018-09-16 18:10:33', '<div class=\"brand\">Music experience</div>\n<h1 class=\"title\">CLG<span class=\"dot\">.</span><span class=\"bis\">events</span></h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-09-16 20:10:33', '2018-09-16 18:10:33', '', 5, 'http://local.djclem/5-autosave-v1/', 0, 'revision', '', 0),
(40, 1, '2018-09-16 20:08:32', '2018-09-16 18:08:32', '<div class=\"brand\">Music experience</div>\r\n<h1>CLG<span class=\"dot\">.</span><span class=\"bis\">events</span></h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 20:08:32', '2018-09-16 18:08:32', '', 5, 'http://local.djclem/5-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-09-16 20:10:35', '2018-09-16 18:10:35', '<div class=\"brand\">Music experience</div>\r\n<h1 class=\"title\">CLG<span class=\"dot\">.</span><span class=\"bis\">events</span></h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 20:10:35', '2018-09-16 18:10:35', '', 5, 'http://local.djclem/5-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-09-16 20:11:17', '2018-09-16 18:11:17', '<div class=\"brand\">Music experience</div>\r\n<h1 class=\"title\">CLG<span class=\"dot\">.</span><span class=\"font-bis\">events</span></h1>', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-16 20:11:17', '2018-09-16 18:11:17', '', 5, 'http://local.djclem/5-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-09-16 20:12:53', '2018-09-16 18:12:53', '<h1>Depuis le temps</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu neque eu erat pharetra rutrum quis eu tortor. Cras egestas laoreet lorem, eget fringilla velit finibus vitae. Vestibulum ac eleifend sem. Praesent elementum bibendum est at tristique. Morbi varius purus vel ligula maximus, id fringilla elit cursus. Etiam auctor interdum felis, a dapibus lectus vestibulum et. Donec sagittis risus vitae augue pellentesque, a mollis purus fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:12:53', '2018-09-16 18:12:53', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-09-16 20:15:58', '2018-09-16 18:15:58', '<h1>Depuis le temps</h1>\r\n<h2>Je fais de la musique</h2>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus eu neque eu erat pharetra rutrum quis eu tortor. Cras egestas laoreet lorem, eget fringilla velit finibus vitae. Vestibulum ac eleifend sem. Praesent elementum bibendum est at tristique. Morbi varius purus vel ligula maximus, id fringilla elit cursus. Etiam auctor interdum felis, a dapibus lectus vestibulum et. Donec sagittis risus vitae augue pellentesque, a mollis purus fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:15:58', '2018-09-16 18:15:58', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-09-16 20:20:21', '2018-09-16 18:20:21', '<h1>Depuis le temps</h1>\r\n<h2>Je fais de la musique</h2>\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre. L’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam. Ce projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:20:21', '2018-09-16 18:20:21', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-09-16 20:20:28', '2018-09-16 18:20:28', '<h1>Depuis le temps</h1>\r\n<h2>Je fais de la musique</h2>\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre. L’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam. Ce projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:20:28', '2018-09-16 18:20:28', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-09-16 20:20:41', '2018-09-16 18:20:41', '<h1>Depuis le temps</h1>\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre. L’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam. Ce projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:20:41', '2018-09-16 18:20:41', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2018-09-16 20:20:56', '2018-09-16 18:20:56', '<h1>Depuis le temps</h1>\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam. Ce projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:20:56', '2018-09-16 18:20:56', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-09-16 20:21:05', '2018-09-16 18:21:05', '<h1>Depuis le temps</h1>\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:21:05', '2018-09-16 18:21:05', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-09-16 20:21:16', '2018-09-16 18:21:16', '<h1>Depuis le temps</h1>\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\n&nbsp;\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:21:16', '2018-09-16 18:21:16', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-09-16 20:22:25', '2018-09-16 18:22:25', '<h1>Depuis le temps</h1>\r\n<h2>La musique avant tout</h2>\r\n&nbsp;\r\n\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\n&nbsp;\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:22:25', '2018-09-16 18:22:25', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-09-16 20:22:47', '2018-09-16 18:22:47', '<h1>Depuis le temps</h1>\r\n<h2>La musique avant tout</h2>\r\n&nbsp;\r\n\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\n&nbsp;\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-medium wp-image-7\" src=\"http://local.djclem/wp-content/uploads/2018/09/background-250x188.jpg\" alt=\"\" />', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:22:47', '2018-09-16 18:22:47', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2018-09-16 20:23:07', '2018-09-16 18:23:07', '<h1>Depuis le temps</h1>\r\n<h2>La musique avant tout</h2>\r\n&nbsp;\r\n\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\n&nbsp;\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-7\" src=\"http://local.djclem/wp-content/uploads/2018/09/background.jpg\" alt=\"\" />', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:23:07', '2018-09-16 18:23:07', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-09-16 20:42:46', '2018-09-16 18:42:46', '<h1>Depuis le temps</h1>\r\n<h2>La musique avant tout</h2>\r\n&nbsp;\r\n\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\n&nbsp;\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-7\" src=\"http://local.djclem/wp-content/uploads/2018/09/background.jpg\" alt=\"\" />', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:42:46', '2018-09-16 18:42:46', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-09-16 20:42:53', '2018-09-16 18:42:53', '<h1>Depuis le temps</h1>\r\n<h2>La musique avant tout</h2>\r\n&nbsp;\r\n\r\nPassionné par l’univers du djing et de la musique électronique depuis mes 10 ans, je me projette vite dans la peau d’un artiste en écoutant de la musique dans ma chambre.\r\n\r\nL’idée de faire de la scène m’intéresse depuis toujours. Les années passent, j’accumule suffisamment de moyens et de confiance en moi pour faire acquisition de matériel et de contacts. Je démarre des résidences Dj sur Avignon, dans des clubs et d’autres établissements.\r\n\r\n&nbsp;\r\n\r\nTrès vite, mon engouement pour cette pratique mais aussi mon relationnel me permet de jouer sur d’autres formats événement, dans de superbes cadres. Je commence un projet artistique en tant que musicien en 2015 sous le pseudo de Klaam.\r\n\r\n&nbsp;\r\n\r\nCe projet se poursuit toujours aujourd’hui et je serais très heureux qu’il évolue dans le temps. N’oubliant pas ce qui me procure le plus de plaisir dans ce milieu, à savoir partager et rendre les gens heureux, CLG Event est donc la façon de vous proposer mon savoir faire, pour tout type d’événement, pour tout type de personne.\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n<img class=\"alignnone size-full wp-image-7\" src=\"http://local.djclem/wp-content/uploads/2018/09/background.jpg\" alt=\"\" />', 'A propos', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-16 20:42:53', '2018-09-16 18:42:53', '', 26, 'http://local.djclem/26-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(35, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"b69f5d718144ee99b76d9128d9dd98454cac8542605550e73c0815dcb57da286\";a:4:{s:10:\"expiration\";i:1537834272;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:105:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1537661472;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '56'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&imgsize=full'),
(20, 1, 'wp_user-settings-time', '1537122182'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:25:\"add-post-type-html5-blank\";i:1;s:22:\"add-post-type-who_am_i\";i:2;s:23:\"add-post-type-what_i_do\";i:3;s:12:\"add-post_tag\";}'),
(23, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B8apELPjvINgR9Nzj60gnNxNskW5/P.', 'admin', 'leo450450@gmail.com', '', '2018-09-15 23:33:56', '', 0, 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
