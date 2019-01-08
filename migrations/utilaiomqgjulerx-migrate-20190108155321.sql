# WordPress MySQL database migration
#
# Generated: Tuesday 8. January 2019 15:53 UTC
# Hostname: utilaiomqgjulerx.mysql.db
# Database: `utilaiomqgjulerx`
# URL: //cohabit.utila.io
# Path: /home/utilaiomqg/www/cohabit
# Tables: wpc_2_commentmeta, wpc_2_comments, wpc_2_links, wpc_2_options, wpc_2_postmeta, wpc_2_posts, wpc_2_term_relationships, wpc_2_term_taxonomy, wpc_2_termmeta, wpc_2_terms, wpc_2_usermeta, wpc_2_users, wpc_3_commentmeta, wpc_3_comments, wpc_3_links, wpc_3_options, wpc_3_postmeta, wpc_3_posts, wpc_3_term_relationships, wpc_3_term_taxonomy, wpc_3_termmeta, wpc_3_terms, wpc_3_usermeta, wpc_3_users, wpc_blog_versions, wpc_blogs, wpc_commentmeta, wpc_comments, wpc_links, wpc_options, wpc_postmeta, wpc_posts, wpc_registration_log, wpc_signups, wpc_site, wpc_sitemeta, wpc_term_relationships, wpc_term_taxonomy, wpc_termmeta, wpc_terms, wpc_usermeta, wpc_users
# Table Prefix: wpc_
# Post Types: revision, page, post, attachment, custom_css, customize_changeset, forum, nav_menu_item, wpforms
# Protocol: http
# Multisite: true
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wpc_2_commentmeta`
#

DROP TABLE IF EXISTS `wpc_2_commentmeta`;


#
# Table structure of table `wpc_2_commentmeta`
#

CREATE TABLE `wpc_2_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_commentmeta`
#

#
# End of data contents of table `wpc_2_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_comments`
#

DROP TABLE IF EXISTS `wpc_2_comments`;


#
# Table structure of table `wpc_2_comments`
#

CREATE TABLE `wpc_2_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_comments`
#
INSERT INTO `wpc_2_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-07 15:55:06', '2019-01-07 14:55:06', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wpc_2_comments`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_links`
#

DROP TABLE IF EXISTS `wpc_2_links`;


#
# Table structure of table `wpc_2_links`
#

CREATE TABLE `wpc_2_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_links`
#

#
# End of data contents of table `wpc_2_links`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_options`
#

DROP TABLE IF EXISTS `wpc_2_options`;


#
# Table structure of table `wpc_2_options`
#

CREATE TABLE `wpc_2_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=378 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_options`
#
INSERT INTO `wpc_2_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://cohabit.utila.io/fablab', 'yes'),
(2, 'home', 'http://cohabit.utila.io/fablab', 'yes'),
(3, 'blogname', 'Fablab', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sebastien.gaya@etu.u-bordeaux.fr', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:19:"bbpress/bbpress.php";i:1;s:37:"user-role-editor/user-role-editor.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";i:3;s:24:"wpforms-lite/wpforms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:70:"/home/utilaiomqg/www/cohabit/wp-content/themes/twentynineteen/style.css";i:2;s:0:"";}', 'no'),
(40, 'template', 'magazine-7', 'yes'),
(41, 'stylesheet', 'featured-news', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '81', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wpc_2_user_roles', 'a:10:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:72:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:14:"ure_edit_roles";b:1;s:16:"ure_create_roles";b:1;s:16:"ure_delete_roles";b:1;s:23:"ure_create_capabilities";b:1;s:23:"ure_delete_capabilities";b:1;s:18:"ure_manage_options";b:1;s:15:"ure_reset_roles";b:1;s:20:"edit_manage_optionss";b:1;s:27:"edit_others_manage_optionss";b:1;s:23:"publish_manage_optionss";b:1;s:28:"read_private_manage_optionss";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"adherent";a:2:{s:4:"name";s:9:"Adhérent";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"professionnel";a:2:{s:4:"name";s:13:"Professionnel";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"bbp_keymaster";a:2:{s:4:"name";s:9:"Keymaster";s:12:"capabilities";a:0:{}}s:13:"bbp_spectator";a:2:{s:4:"name";s:9:"Spectator";s:12:"capabilities";a:0:{}}s:11:"bbp_blocked";a:2:{s:4:"name";s:7:"Blocked";s:12:"capabilities";a:0:{}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wpc_2_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(102, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:1:{i:0;s:6:"text-3";}s:9:"sidebar-1";a:2:{i:0;s:13:"media_image-3";i:1;s:6:"meta-2";}s:24:"express-off-canvas-panel";a:0:{}s:20:"home-content-widgets";a:0:{}s:20:"home-sidebar-widgets";a:0:{}s:28:"footer-first-widgets-section";a:1:{i:0;s:13:"media_image-6";}s:29:"footer-second-widgets-section";a:1:{i:0;s:6:"text-5";}s:28:"footer-third-widgets-section";a:1:{i:0;s:6:"text-6";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1546962906;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1547002506;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1547045733;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547047609;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1546943416;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:8:"search-2";i:1;s:10:"archives-2";i:2;s:6:"meta-2";}}}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(139, 'recently_activated', 'a:1:{s:45:"materialis-companion/materialis-companion.php";i:1546943784;}', 'yes'),
(146, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1546960227;}', 'no'),
(226, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(247, 'wpforms_preview_page', '72', 'yes'),
(248, 'wpforms_version', '1.5.0.4', 'yes'),
(249, 'wpforms_activated', 'a:1:{s:4:"lite";i:1546938052;}', 'yes'),
(252, 'widget_wpforms-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(253, '_amn_wpforms-lite_last_checked', '1546905600', 'yes'),
(254, 'wpforms_review', 'a:2:{s:4:"time";i:1546938053;s:9:"dismissed";b:0;}', 'yes'),
(255, 'wpforms_settings', 'a:5:{s:19:"validation-required";s:20:"Ce champ est requis.";s:14:"validation-url";s:25:"Please enter a valid URL.";s:16:"validation-email";s:49:"Veuillez saisir une adresse de messagerie valide.";s:17:"validation-number";s:33:"Veuillez saisir un nombre valide.";s:18:"validation-confirm";s:26:"Field values do not match.";}', 'yes'),
(263, 'category_children', 'a:0:{}', 'yes'),
(271, 'user_role_editor', 'a:1:{s:11:"ure_version";s:4:"4.48";}', 'yes'),
(272, 'wpc_2_backup_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'no'),
(273, 'ure_tasks_queue', 'a:0:{}', 'yes'),
(275, 'current_theme', 'Featured News', 'yes'),
(276, 'theme_mods_generatepress', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1546950871;s:4:"data";a:11:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:13:"media_image-3";i:1;s:8:"search-2";i:2;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:6:"header";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:8:"footer-5";a:0:{}s:10:"footer-bar";a:1:{i:0;s:6:"text-3";}s:7:"top-bar";a:0:{}}}}', 'yes'),
(277, 'theme_switched', '', 'yes'),
(278, 'generate_dynamic_css_output', 'body{background-color:#efefef;color:#3a3a3a;}a, a:visited{color:#1e73be;}a:hover, a:focus, a:active{color:#000000;}body .grid-container{max-width:1100px;}body, button, input, select, textarea{font-family:-apple-system, system-ui, BlinkMacSystemFont, "Segoe UI", Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";}.entry-content > [class*="wp-block-"]:not(:last-child){margin-bottom:1.5em;}.main-navigation .main-nav ul ul li a{font-size:14px;}@media (max-width:768px){.main-title{font-size:30px;}h1{font-size:30px;}h2{font-size:25px;}}.top-bar{background-color:#636363;color:#ffffff;}.top-bar a,.top-bar a:visited{color:#ffffff;}.top-bar a:hover{color:#303030;}.site-header{background-color:#ffffff;color:#3a3a3a;}.site-header a,.site-header a:visited{color:#3a3a3a;}.main-title a,.main-title a:hover,.main-title a:visited{color:#222222;}.site-description{color:#757575;}.main-navigation,.main-navigation ul ul{background-color:#222222;}.main-navigation .main-nav ul li a,.menu-toggle{color:#ffffff;}.main-navigation .main-nav ul li:hover > a,.main-navigation .main-nav ul li:focus > a, .main-navigation .main-nav ul li.sfHover > a{color:#ffffff;background-color:#3f3f3f;}button.menu-toggle:hover,button.menu-toggle:focus,.main-navigation .mobile-bar-items a,.main-navigation .mobile-bar-items a:hover,.main-navigation .mobile-bar-items a:focus{color:#ffffff;}.main-navigation .main-nav ul li[class*="current-menu-"] > a{color:#ffffff;background-color:#3f3f3f;}.main-navigation .main-nav ul li[class*="current-menu-"] > a:hover,.main-navigation .main-nav ul li[class*="current-menu-"].sfHover > a{color:#ffffff;background-color:#3f3f3f;}.navigation-search input[type="search"],.navigation-search input[type="search"]:active{color:#3f3f3f;background-color:#3f3f3f;}.navigation-search input[type="search"]:focus{color:#ffffff;background-color:#3f3f3f;}.main-navigation ul ul{background-color:#3f3f3f;}.main-navigation .main-nav ul ul li a{color:#ffffff;}.main-navigation .main-nav ul ul li:hover > a,.main-navigation .main-nav ul ul li:focus > a,.main-navigation .main-nav ul ul li.sfHover > a{color:#ffffff;background-color:#4f4f4f;}.main-navigation .main-nav ul ul li[class*="current-menu-"] > a{color:#ffffff;background-color:#4f4f4f;}.main-navigation .main-nav ul ul li[class*="current-menu-"] > a:hover,.main-navigation .main-nav ul ul li[class*="current-menu-"].sfHover > a{color:#ffffff;background-color:#4f4f4f;}.separate-containers .inside-article, .separate-containers .comments-area, .separate-containers .page-header, .one-container .container, .separate-containers .paging-navigation, .inside-page-header{background-color:#ffffff;}.entry-meta{color:#595959;}.entry-meta a,.entry-meta a:visited{color:#595959;}.entry-meta a:hover{color:#1e73be;}.sidebar .widget{background-color:#ffffff;}.sidebar .widget .widget-title{color:#000000;}.footer-widgets{background-color:#ffffff;}.footer-widgets .widget-title{color:#000000;}.site-info{color:#ffffff;background-color:#222222;}.site-info a,.site-info a:visited{color:#ffffff;}.site-info a:hover{color:#606060;}.footer-bar .widget_nav_menu .current-menu-item a{color:#606060;}input[type="text"],input[type="email"],input[type="url"],input[type="password"],input[type="search"],input[type="tel"],input[type="number"],textarea,select{color:#666666;background-color:#fafafa;border-color:#cccccc;}input[type="text"]:focus,input[type="email"]:focus,input[type="url"]:focus,input[type="password"]:focus,input[type="search"]:focus,input[type="tel"]:focus,input[type="number"]:focus,textarea:focus,select:focus{color:#666666;background-color:#ffffff;border-color:#bfbfbf;}button,html input[type="button"],input[type="reset"],input[type="submit"],a.button,a.button:visited,a.wp-block-button__link:not(.has-background){color:#ffffff;background-color:#666666;}button:hover,html input[type="button"]:hover,input[type="reset"]:hover,input[type="submit"]:hover,a.button:hover,button:focus,html input[type="button"]:focus,input[type="reset"]:focus,input[type="submit"]:focus,a.button:focus,a.wp-block-button__link:not(.has-background):active,a.wp-block-button__link:not(.has-background):focus,a.wp-block-button__link:not(.has-background):hover{color:#ffffff;background-color:#3f3f3f;}.generate-back-to-top,.generate-back-to-top:visited{background-color:rgba( 0,0,0,0.4 );color:#ffffff;}.generate-back-to-top:hover,.generate-back-to-top:focus{background-color:rgba( 0,0,0,0.6 );color:#ffffff;}.entry-content .alignwide, body:not(.no-sidebar) .entry-content .alignfull{margin-left:-40px;width:calc(100% + 80px);max-width:calc(100% + 80px);}@media (max-width:768px){.separate-containers .inside-article, .separate-containers .comments-area, .separate-containers .page-header, .separate-containers .paging-navigation, .one-container .site-content, .inside-page-header{padding:30px;}.entry-content .alignwide, body:not(.no-sidebar) .entry-content .alignfull{margin-left:-30px;width:calc(100% + 60px);max-width:calc(100% + 60px);}}.rtl .menu-item-has-children .dropdown-menu-toggle{padding-left:20px;}.rtl .main-navigation .main-nav ul li.menu-item-has-children > a{padding-right:20px;}.one-container .sidebar .widget{padding:0px;}', 'yes'),
(279, 'generate_dynamic_css_cached_version', '2.2.1', 'yes'),
(280, 'generate_migration_settings', 'a:4:{s:31:"font_awesome_essentials_updated";s:4:"true";s:22:"skip_dynamic_css_cache";s:4:"true";s:20:"default_font_updated";s:4:"true";s:25:"blog_post_content_preview";s:4:"true";}', 'yes'),
(281, 'generate_db_version', '2.2.1', 'no'),
(282, 'generate_update_core_typography', 'true', 'yes'),
(290, 'theme_mods_materialis', 'a:6:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:2;}s:20:"theme_default_preset";s:11:"dark-purple";s:18:"custom_css_post_id";i:-1;s:23:"materialis_page_content";s:23754:"<div id="overlappable-8"  style="background-color:#f5fafd"  data-label="Overlappable" data-id="overlappable-5-materialis" data-export-id="overlappable-5-materialis" data-category="overlappable" class="overlappable-5-materialis content-section content-section-spacing-large" data-overlap="true"><div class="gridContainer"> <div data-type="row" class="row spaced-cols "><div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"><div class="row"> <div class="col-sm-fit icon-col"><i class="color1 icon mdi mdi-responsive reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">RESPONSIVE DESIGN</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div> <div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"> <div class="row"> <div class="col-sm-fit icon-col"> <i class="color1 icon mdi mdi-vector-square reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">SUPER FEATURES</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div> <div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"> <div class="row"> <div class="col-sm-fit icon-col"> <i class="color1 icon mdi mdi-arrange-bring-forward reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">DRAG AND DROP</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div></div> </div></div><div id="about-6"  style="background-color:#f5fafd"  data-label="About" data-id="about-4" data-export-id="about-4" data-category="about" class="about-4 content-section content-section-spacing-large"><div class="gridContainer"> <div class="row middle-sm text-center"><div class="col-sm-5 space-bottom-xs " data-type="column"> <h5>LOREM IPSUM DOLOR</h5> <h2>Enjoy the best <br/> <span style="font-family:Playfair Display,sans-serif;font-weight:700;font-style:italic;" href="#">design and functions</span> combined together</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class="button big color1" href="#">GET STARTED NOW</a></div> <div class="col-sm-7 flexbox center-xs middle-xs image-group-2-img padding-top-bottom"> <img class="img-1 rounded mdc-elevation--z10" data-size="250x200" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/apple-1838564.jpg"/> <img class="img-2 rounded mdc-elevation--z10" data-size="220x170" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/computer-2569652.jpg"/></div> </div></div> </div><div id="features-2"  style="background-color:#ffffff"  data-label="Features" data-id="features-10-materialis" data-export-id="features-10-materialis" data-category="features" class="features-10m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row"><div class="section-title-col" data-type="column"> <h2>The Main Features</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row "> <div class="col-md-10 col-md-offset-1 "> <div class="row space-top spaced-cols content-center-sm" data-type="row"> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Popular Uses Of The Internet</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>How To Meet That Special</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div></div> </div></div> </div></div><div id="content-24"  style="background-color:#f5fafd"  data-label="Content" data-id="content-7-materialis" data-export-id="content-7-materialis" data-category="content" class="content-7m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row middle-sm"><div class="col-md-6 col-xs-12 col-sm-6 col-padding-small-xs"> <img class="mdc-elevation--z13 img-rounded" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-6.jpg"></div> <div class="col-md-5 col-md-offset-1 col-xs-12 col-sm-6 content-left-sm col-padding-small-xs" data-type="column"><h6 class="upper">Our story</h6> <h3 class="space-bottom">How To Meet That Special Someone</h3> <p class="space-top">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a href="#" class="button read-more link color1 space-top negative-margin">Read more about us <i class="mdi mdi-arrow-right-thick"></i></a></div> </div></div> </div><div id="content-25"  style="background-color:#ffffff"  data-label="Content" data-id="content-8-materialis" data-export-id="content-8-materialis" data-category="content" class="content-8m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row middle-sm"><div class="col-md-5 col-xs-12 col-sm-6 space-bottom-xs" data-type="column"> <h6 class="upper">Our philosophy</h6> <h3>Protective Preventative Maintenance</h3> <p class="space-top">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a href="#" class="button read-more link color1 space-top negative-margin">Read more <i class="mdi mdi-arrow-right-thick"></i></a> </div> <div class="col-md-6 col-md-offset-1 col-xs-12 col-sm-6"> <img class="mdc-elevation--z9 rounded" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.jpg"></div> </div></div> </div><div id="portfolio-2"  style="background-color:#f5fafd"  data-label="Portfolio" data-id="portfolio-1-materialis" data-export-id="portfolio-1-materialis" data-category="portfolio" class="portfolio-1-materialis content-section"><div> <div class="row text-center" data-type="row" data-fixed="true"><div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"> <div class="contentswap-effect " data-hover-fx="portfolio-1"><div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-1.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-2.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-3.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-5.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-7.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-6.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-1.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> </div></div> </div><div id="testimonials-2"  style="background-color:#ffffff"  data-label="Testimonials" data-id="testimonials-1-materialis" data-export-id="testimonials-1-materialis" data-category="testimonials" class="testimonials-1m content-section content-section-spacing"><div class="gridContainer"> <div class="row space-bottom-small"><div data-type="column" class="section-title-col"> <h2>Testimonials</h2> <p class="lead">Don\'t take our word for it - here\'s what our clients say:</p></div> </div> <div class="row spaced-cols content-left-sm" data-type="row"> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud..</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-8.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">John Doe</h6> <p class="small font-300">Company Name</p></div> </div></div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-1.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">Lucy Pratt</h6> <p class="small font-300">Company name</p></div> </div></div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-7.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">John Doe</h6> <p class="small font-300">Company name</p></div> </div></div> </div></div> </div></div><div id="cta-1"  style="background-color:#f5fafd"  data-label="Cta" data-id="cta-1-materialis" data-export-id="cta-1-materialis" data-category="cta" class="content-relative content-section content-section-spacing-large cta-1-materialis section-title-col-white-text" id="cta-1" data-parallax-depth="20" data-ovid="1"><div class="gridContainer"> <div class="row text-center col-sm-padding-medium"><div class="col-md-6 col-md-offset-3 col-xs-10 col-xs-offset-1 card mdc-elevation--z3 box-padding-lr-small"> <div data-type="column" class=""><h2 class="">Download now</h2> <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a class="button big color1 mdc-elevation--z1 mdc-ripple-upgraded">START NOW</a></div> </div></div> </div></div><div id="team-7"  style="background-color:#ffffff"  data-label="Team" data-id="team-8-materialis" data-export-id="team-8-materialis" data-category="team" class="team-8m content-section content-section-spacing-large"><div class="gridContainer"> <div class="row space-bottom"><div class="section-title-col" data-type="column"> <h2>Our Team</h2> <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row spaced-cols content-left-sm" data-type="row"> <div class="col-sm-12 col-md-6"> <div class="row"> <div class="col-sm-6 col-md-6"> <div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-4.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-2.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-6.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-8.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> </div></div> </div><div id="latest-news-1"  style="background-color:#f5fafd"  data-label="Latest-news" data-id="latest-news-1-materialis" data-export-id="latest-news-1-materialis" data-category="latest_news" class="latest-news-1-materialis content-section content-section-spacing-large"><div class="gridContainer"> <div class="row"><div data-type="column" class="section-title-col"> <h2>Latest News</h2> <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p></div> </div> <div class="row content-left-sm"> <div data-type="row" data-dynamic-columns="handled" data-content-shortcode="materialis_latest_news">[materialis_latest_news]</div></div> <div class="row"><div class="text-center"> <a class="button big color1 mdc-elevation--z3" data-attr-shortcode="href:materialis_blog_link" href="[materialis_blog_link]">VISIT OUR BLOG</a></div> </div></div></div><div id="contact-1"  data-label="Contact" data-id="contact-1" data-export-id="contact-1" data-category="contact" class="contact-1 content-section content-section-spacing-large content-relative white-text" data-parallax-depth="20"><div class="gridContainer"> <div class="row text-center"><div class="section-title-col" data-type="column"> <h2>Contact us</h2> <p class="lead">With the Internet spreading linke wildfire and reaching every part of our daily life, more and more traffic is directed to websites in search for information.</p></div> </div> <div class="row text-center"> <div class="col-xs-12 col-sm-8 col-sm-offset-2 contact-form-wrapper inline-info"> <div class="card mdc-elevation--z3 col-padding-top"> <div class="dark-text" data-content-shortcode="materialis_contact_form" data-editable="true">[materialis_contact_form]</div></div> </div></div> </div></div>";s:16:"sidebars_widgets";a:2:{s:4:"time";i:1546943775;s:4:"data";a:6:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:2:{i:0;s:8:"search-2";i:2;s:6:"meta-2";}s:24:"materialis_pages_sidebar";a:0:{}s:17:"first_box_widgets";a:0:{}s:18:"second_box_widgets";a:0:{}s:17:"third_box_widgets";a:0:{}}}}', 'yes'),
(293, 'materialis_companion_old_show_on_front', 'page', 'yes'),
(294, 'materialis_companion_old_page_on_front', '81', 'yes'),
(295, 'cp_initialize_notifications', '1546943606', 'yes'),
(304, 'generate_settings', 'a:4:{s:21:"footer_layout_setting";s:12:"fluid-footer";s:18:"footer_inner_width";s:9:"contained";s:21:"footer_widget_setting";s:1:"1";s:11:"back_to_top";s:6:"enable";}', 'yes'),
(311, 'theme_mods_featured-news', 'a:1:{s:18:"custom_css_post_id";i:146;}', 'yes'),
(312, 'widget_magazine_7_posts_carousel', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(313, 'widget_magazine_7_single_col_categorised_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(314, 'widget_magazine_7_double_col_categorised_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(315, 'widget_magazine_7_tabbed_posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(316, 'widget_magazine_7_social_contacts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(317, 'widget_magazine_7_author_info', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(338, 'widget_bbp_login_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(339, 'widget_bbp_views_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(340, 'widget_bbp_search_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(341, 'widget_bbp_forums_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(342, 'widget_bbp_topics_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(343, 'widget_bbp_replies_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(344, 'widget_bbp_stats_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(345, '_bbp_private_forums', 'a:0:{}', 'yes'),
(346, '_bbp_hidden_forums', 'a:0:{}', 'yes'),
(348, '_bbp_db_version', '250', 'yes') ;
INSERT INTO `wpc_2_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(350, 'rewrite_rules', 'a:196:{s:9:"forums/?$";s:25:"index.php?post_type=forum";s:39:"forums/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=forum&feed=$matches[1]";s:34:"forums/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=forum&feed=$matches[1]";s:26:"forums/page/([0-9]{1,})/?$";s:43:"index.php?post_type=forum&paged=$matches[1]";s:9:"topics/?$";s:25:"index.php?post_type=topic";s:39:"topics/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=topic&feed=$matches[1]";s:34:"topics/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=topic&feed=$matches[1]";s:26:"topics/page/([0-9]{1,})/?$";s:43:"index.php?post_type=topic&paged=$matches[1]";s:28:"forums/forum/([^/]+)/edit/?$";s:34:"index.php?forum=$matches[1]&edit=1";s:28:"forums/topic/([^/]+)/edit/?$";s:34:"index.php?topic=$matches[1]&edit=1";s:28:"forums/reply/([^/]+)/edit/?$";s:34:"index.php?reply=$matches[1]&edit=1";s:32:"forums/topic-tag/([^/]+)/edit/?$";s:38:"index.php?topic-tag=$matches[1]&edit=1";s:47:"forums/user/([^/]+)/topics/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_tops=1&paged=$matches[2]";s:48:"forums/user/([^/]+)/replies/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_reps=1&paged=$matches[2]";s:50:"forums/user/([^/]+)/favorites/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_favs=1&paged=$matches[2]";s:54:"forums/user/([^/]+)/subscriptions/page/?([0-9]{1,})/?$";s:59:"index.php?bbp_user=$matches[1]&bbp_subs=1&paged=$matches[2]";s:29:"forums/user/([^/]+)/topics/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_tops=1";s:30:"forums/user/([^/]+)/replies/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_reps=1";s:32:"forums/user/([^/]+)/favorites/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_favs=1";s:36:"forums/user/([^/]+)/subscriptions/?$";s:41:"index.php?bbp_user=$matches[1]&bbp_subs=1";s:27:"forums/user/([^/]+)/edit/?$";s:37:"index.php?bbp_user=$matches[1]&edit=1";s:22:"forums/user/([^/]+)/?$";s:30:"index.php?bbp_user=$matches[1]";s:40:"forums/view/([^/]+)/page/?([0-9]{1,})/?$";s:48:"index.php?bbp_view=$matches[1]&paged=$matches[2]";s:27:"forums/view/([^/]+)/feed/?$";s:47:"index.php?bbp_view=$matches[1]&feed=$matches[2]";s:22:"forums/view/([^/]+)/?$";s:30:"index.php?bbp_view=$matches[1]";s:34:"forums/search/page/?([0-9]{1,})/?$";s:27:"index.php?paged=$matches[1]";s:16:"forums/search/?$";s:20:"index.php?bbp_search";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:38:"forums/forum/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"forums/forum/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"forums/forum/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"forums/forum/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"forums/forum/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"forums/forum/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"forums/forum/(.+?)/embed/?$";s:38:"index.php?forum=$matches[1]&embed=true";s:31:"forums/forum/(.+?)/trackback/?$";s:32:"index.php?forum=$matches[1]&tb=1";s:51:"forums/forum/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?forum=$matches[1]&feed=$matches[2]";s:46:"forums/forum/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?forum=$matches[1]&feed=$matches[2]";s:39:"forums/forum/(.+?)/page/?([0-9]{1,})/?$";s:45:"index.php?forum=$matches[1]&paged=$matches[2]";s:46:"forums/forum/(.+?)/comment-page-([0-9]{1,})/?$";s:45:"index.php?forum=$matches[1]&cpage=$matches[2]";s:35:"forums/forum/(.+?)(?:/([0-9]+))?/?$";s:44:"index.php?forum=$matches[1]&page=$matches[2]";s:40:"forums/topic/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"forums/topic/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"forums/topic/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/topic/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/topic/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"forums/topic/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"forums/topic/([^/]+)/embed/?$";s:38:"index.php?topic=$matches[1]&embed=true";s:33:"forums/topic/([^/]+)/trackback/?$";s:32:"index.php?topic=$matches[1]&tb=1";s:53:"forums/topic/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?topic=$matches[1]&feed=$matches[2]";s:48:"forums/topic/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?topic=$matches[1]&feed=$matches[2]";s:41:"forums/topic/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?topic=$matches[1]&paged=$matches[2]";s:48:"forums/topic/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?topic=$matches[1]&cpage=$matches[2]";s:37:"forums/topic/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?topic=$matches[1]&page=$matches[2]";s:29:"forums/topic/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"forums/topic/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"forums/topic/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/topic/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/topic/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"forums/topic/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:40:"forums/reply/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:50:"forums/reply/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:70:"forums/reply/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/reply/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:65:"forums/reply/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:46:"forums/reply/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:29:"forums/reply/([^/]+)/embed/?$";s:38:"index.php?reply=$matches[1]&embed=true";s:33:"forums/reply/([^/]+)/trackback/?$";s:32:"index.php?reply=$matches[1]&tb=1";s:41:"forums/reply/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?reply=$matches[1]&paged=$matches[2]";s:48:"forums/reply/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?reply=$matches[1]&cpage=$matches[2]";s:37:"forums/reply/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?reply=$matches[1]&page=$matches[2]";s:29:"forums/reply/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:39:"forums/reply/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:59:"forums/reply/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/reply/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:54:"forums/reply/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:35:"forums/reply/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:57:"forums/topic-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?topic-tag=$matches[1]&feed=$matches[2]";s:52:"forums/topic-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?topic-tag=$matches[1]&feed=$matches[2]";s:33:"forums/topic-tag/([^/]+)/embed/?$";s:42:"index.php?topic-tag=$matches[1]&embed=true";s:45:"forums/topic-tag/([^/]+)/page/?([0-9]{1,})/?$";s:49:"index.php?topic-tag=$matches[1]&paged=$matches[2]";s:27:"forums/topic-tag/([^/]+)/?$";s:31:"index.php?topic-tag=$matches[1]";s:42:"forums/search/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?bbp_search=$matches[1]&paged=$matches[2]";s:24:"forums/search/([^/]+)/?$";s:32:"index.php?bbp_search=$matches[1]";s:57:"wpforms_log_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]";s:52:"wpforms_log_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:55:"index.php?wpforms_log_type=$matches[1]&feed=$matches[2]";s:33:"wpforms_log_type/([^/]+)/embed/?$";s:49:"index.php?wpforms_log_type=$matches[1]&embed=true";s:45:"wpforms_log_type/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?wpforms_log_type=$matches[1]&paged=$matches[2]";s:27:"wpforms_log_type/([^/]+)/?$";s:38:"index.php?wpforms_log_type=$matches[1]";s:44:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"amn_wpforms-lite/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"amn_wpforms-lite/([^/]+)/embed/?$";s:49:"index.php?amn_wpforms-lite=$matches[1]&embed=true";s:37:"amn_wpforms-lite/([^/]+)/trackback/?$";s:43:"index.php?amn_wpforms-lite=$matches[1]&tb=1";s:45:"amn_wpforms-lite/([^/]+)/page/?([0-9]{1,})/?$";s:56:"index.php?amn_wpforms-lite=$matches[1]&paged=$matches[2]";s:52:"amn_wpforms-lite/([^/]+)/comment-page-([0-9]{1,})/?$";s:56:"index.php?amn_wpforms-lite=$matches[1]&cpage=$matches[2]";s:41:"amn_wpforms-lite/([^/]+)(?:/([0-9]+))?/?$";s:55:"index.php?amn_wpforms-lite=$matches[1]&page=$matches[2]";s:33:"amn_wpforms-lite/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"amn_wpforms-lite/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"amn_wpforms-lite/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"amn_wpforms-lite/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"amn_wpforms-lite/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"amn_wpforms-lite/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=81&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes') ;

#
# End of data contents of table `wpc_2_options`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_postmeta`
#

DROP TABLE IF EXISTS `wpc_2_postmeta`;


#
# Table structure of table `wpc_2_postmeta`
#

CREATE TABLE `wpc_2_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_postmeta`
#
INSERT INTO `wpc_2_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_edit_lock', '1546951659:2'),
(4, 7, '_edit_last', '3'),
(5, 2, '_edit_lock', '1546943101:2'),
(6, 2, '_edit_last', '3'),
(7, 10, '_edit_lock', '1546875599:3'),
(8, 11, '_edit_lock', '1546932612:3'),
(9, 12, '_edit_lock', '1546937207:2'),
(10, 14, '_edit_lock', '1546959381:6'),
(11, 16, '_edit_lock', '1546934009:3'),
(12, 18, '_edit_lock', '1546932724:3'),
(13, 20, '_edit_lock', '1546935733:3'),
(14, 22, '_edit_lock', '1546932904:2'),
(15, 24, '_edit_lock', '1546958340:1'),
(16, 28, '_menu_item_type', 'post_type'),
(17, 28, '_menu_item_menu_item_parent', '0'),
(18, 28, '_menu_item_object_id', '12'),
(19, 28, '_menu_item_object', 'page'),
(20, 28, '_menu_item_target', ''),
(21, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 28, '_menu_item_xfn', ''),
(23, 28, '_menu_item_url', ''),
(25, 29, '_menu_item_type', 'post_type'),
(26, 29, '_menu_item_menu_item_parent', '0'),
(27, 29, '_menu_item_object_id', '11'),
(28, 29, '_menu_item_object', 'page'),
(29, 29, '_menu_item_target', ''),
(30, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 29, '_menu_item_xfn', ''),
(32, 29, '_menu_item_url', ''),
(34, 30, '_menu_item_type', 'post_type'),
(35, 30, '_menu_item_menu_item_parent', '0'),
(36, 30, '_menu_item_object_id', '7'),
(37, 30, '_menu_item_object', 'page'),
(38, 30, '_menu_item_target', ''),
(39, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 30, '_menu_item_xfn', ''),
(41, 30, '_menu_item_url', ''),
(43, 31, '_edit_lock', '1546933565:2'),
(44, 32, '_edit_lock', '1546933588:3'),
(45, 33, '_edit_lock', '1546938570:2'),
(46, 3, '_edit_lock', '1546933688:3'),
(47, 35, '_wp_attached_file', '2019/01/carte1-1.png'),
(48, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:808;s:6:"height";i:477;s:4:"file";s:20:"2019/01/carte1-1.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"carte1-1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:20:"carte1-1-300x177.png";s:5:"width";i:300;s:6:"height";i:177;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:20:"carte1-1-768x453.png";s:5:"width";i:768;s:6:"height";i:453;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 38, '_menu_item_type', 'post_type'),
(59, 38, '_menu_item_menu_item_parent', '29'),
(60, 38, '_menu_item_object_id', '14'),
(61, 38, '_menu_item_object', 'page'),
(62, 38, '_menu_item_target', ''),
(63, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(64, 38, '_menu_item_xfn', ''),
(65, 38, '_menu_item_url', ''),
(67, 39, '_menu_item_type', 'post_type'),
(68, 39, '_menu_item_menu_item_parent', '0'),
(69, 39, '_menu_item_object_id', '33'),
(70, 39, '_menu_item_object', 'page'),
(71, 39, '_menu_item_target', ''),
(72, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(73, 39, '_menu_item_xfn', ''),
(74, 39, '_menu_item_url', ''),
(76, 16, '_edit_last', '3'),
(77, 41, '_menu_item_type', 'post_type'),
(78, 41, '_menu_item_menu_item_parent', '29'),
(79, 41, '_menu_item_object_id', '16'),
(80, 41, '_menu_item_object', 'page'),
(81, 41, '_menu_item_target', ''),
(82, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 41, '_menu_item_xfn', ''),
(84, 41, '_menu_item_url', ''),
(86, 42, '_menu_item_type', 'post_type'),
(87, 42, '_menu_item_menu_item_parent', '0'),
(88, 42, '_menu_item_object_id', '14'),
(89, 42, '_menu_item_object', 'page'),
(90, 42, '_menu_item_target', ''),
(91, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 42, '_menu_item_xfn', ''),
(93, 42, '_menu_item_url', ''),
(94, 42, '_menu_item_orphaned', '1546934064'),
(95, 43, '_menu_item_type', 'post_type'),
(96, 43, '_menu_item_menu_item_parent', '0'),
(97, 43, '_menu_item_object_id', '18'),
(98, 43, '_menu_item_object', 'page'),
(99, 43, '_menu_item_target', ''),
(100, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 43, '_menu_item_xfn', ''),
(102, 43, '_menu_item_url', ''),
(103, 43, '_menu_item_orphaned', '1546934083'),
(104, 44, '_menu_item_type', 'post_type'),
(105, 44, '_menu_item_menu_item_parent', '30'),
(106, 44, '_menu_item_object_id', '32'),
(107, 44, '_menu_item_object', 'page'),
(108, 44, '_menu_item_target', ''),
(109, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(110, 44, '_menu_item_xfn', ''),
(111, 44, '_menu_item_url', ''),
(113, 45, '_menu_item_type', 'post_type'),
(114, 45, '_menu_item_menu_item_parent', '30'),
(115, 45, '_menu_item_object_id', '24'),
(116, 45, '_menu_item_object', 'page') ;
INSERT INTO `wpc_2_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(117, 45, '_menu_item_target', ''),
(118, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(119, 45, '_menu_item_xfn', ''),
(120, 45, '_menu_item_url', ''),
(122, 46, '_menu_item_type', 'post_type'),
(123, 46, '_menu_item_menu_item_parent', '30'),
(124, 46, '_menu_item_object_id', '20'),
(125, 46, '_menu_item_object', 'page'),
(126, 46, '_menu_item_target', ''),
(127, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(128, 46, '_menu_item_xfn', ''),
(129, 46, '_menu_item_url', ''),
(131, 47, '_wp_trash_meta_status', 'publish'),
(132, 47, '_wp_trash_meta_time', '1546934663'),
(133, 48, '_wp_trash_meta_status', 'publish'),
(134, 48, '_wp_trash_meta_time', '1546934689'),
(135, 49, '_wp_trash_meta_status', 'publish'),
(136, 49, '_wp_trash_meta_time', '1546934729'),
(137, 50, '_wp_attached_file', '2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf'),
(138, 50, '_wp_attachment_metadata', 'a:1:{s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:67:"BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1-pdf-106x150.jpg";s:5:"width";i:106;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:67:"BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1-pdf-212x300.jpg";s:5:"width";i:212;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:68:"BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1-pdf-724x1024.jpg";s:5:"width";i:724;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:4:"full";a:4:{s:4:"file";s:59:"BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1-pdf.jpg";s:5:"width";i:1058;s:6:"height";i:1497;s:9:"mime-type";s:10:"image/jpeg";}}}'),
(139, 51, '_edit_lock', '1546960183:6'),
(140, 54, '_menu_item_type', 'post_type'),
(141, 54, '_menu_item_menu_item_parent', '0'),
(142, 54, '_menu_item_object_id', '51'),
(143, 54, '_menu_item_object', 'page'),
(144, 54, '_menu_item_target', ''),
(145, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 54, '_menu_item_xfn', ''),
(147, 54, '_menu_item_url', ''),
(149, 55, '_edit_lock', '1546936415:2'),
(150, 58, '_menu_item_type', 'post_type'),
(151, 58, '_menu_item_menu_item_parent', '0'),
(152, 58, '_menu_item_object_id', '55'),
(153, 58, '_menu_item_object', 'page'),
(154, 58, '_menu_item_target', ''),
(155, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(156, 58, '_menu_item_xfn', ''),
(157, 58, '_menu_item_url', ''),
(159, 65, '_edit_lock', '1546937264:2'),
(160, 65, '_wp_trash_meta_status', 'draft'),
(161, 65, '_wp_trash_meta_time', '1546937422'),
(162, 65, '_wp_desired_post_slug', ''),
(163, 71, '_menu_item_type', 'post_type'),
(164, 71, '_menu_item_menu_item_parent', '0'),
(165, 71, '_menu_item_object_id', '33'),
(166, 71, '_menu_item_object', 'page'),
(167, 71, '_menu_item_target', ''),
(168, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(169, 71, '_menu_item_xfn', ''),
(170, 71, '_menu_item_url', ''),
(171, 71, '_menu_item_orphaned', '1546937670'),
(173, 81, '_customize_changeset_uuid', 'e3c7a19b-cc8f-409e-8fdc-fd8db7ac69df'),
(174, 82, '_wp_trash_meta_status', 'publish'),
(175, 82, '_wp_trash_meta_time', '1546942556'),
(176, 81, '_edit_lock', '1546959076:3'),
(177, 1, '_edit_lock', '1546943085:2'),
(178, 1, '_wp_trash_meta_status', 'publish'),
(179, 1, '_wp_trash_meta_time', '1546943233'),
(180, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(181, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(182, 2, '_wp_trash_meta_status', 'draft'),
(183, 2, '_wp_trash_meta_time', '1546943251'),
(184, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(185, 89, '_wp_page_template', 'default'),
(186, 89, 'is_materialis_front_page', '1'),
(188, 89, '_edit_lock', '1546944052:2'),
(189, 89, '_wp_trash_meta_status', 'publish'),
(190, 89, '_wp_trash_meta_time', '1546944196'),
(191, 89, '_wp_desired_post_slug', 'materialis'),
(192, 91, '_customize_restore_dismissed', '1'),
(193, 93, '_edit_lock', '1546949735:2'),
(194, 93, '_wp_trash_meta_status', 'publish'),
(195, 93, '_wp_trash_meta_time', '1546949740'),
(196, 94, '_wp_attached_file', '2019/01/logo-cohabit.png'),
(197, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:184;s:6:"height";i:66;s:4:"file";s:24:"2019/01/logo-cohabit.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"logo-cohabit-150x66.png";s:5:"width";i:150;s:6:"height";i:66;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(198, 95, '_wp_attached_file', '2019/01/agenda.jpg'),
(199, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:404;s:6:"height";i:263;s:4:"file";s:18:"2019/01/agenda.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"agenda-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"agenda-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1460393868";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(200, 96, '_edit_lock', '1546950516:2'),
(201, 96, '_wp_trash_meta_status', 'publish'),
(202, 96, '_wp_trash_meta_time', '1546950534'),
(203, 97, '_edit_lock', '1546950946:2'),
(204, 97, '_customize_restore_dismissed', '1'),
(205, 98, '_edit_lock', '1546951190:2'),
(206, 99, '_wp_attached_file', '2019/01/fotolia_93375457.jpg'),
(207, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:334;s:4:"file";s:28:"2019/01/fotolia_93375457.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"fotolia_93375457-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"fotolia_93375457-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(208, 100, '_wp_attached_file', '2019/01/cropped-fotolia_93375457.jpg'),
(209, 100, '_wp_attachment_context', 'custom-logo'),
(210, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:334;s:4:"file";s:36:"2019/01/cropped-fotolia_93375457.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"cropped-fotolia_93375457-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"cropped-fotolia_93375457-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(211, 99, '_wp_attachment_is_custom_background', 'featured-news'),
(212, 98, '_wp_trash_meta_status', 'publish'),
(213, 98, '_wp_trash_meta_time', '1546951199'),
(214, 101, '_wp_trash_meta_status', 'publish'),
(215, 101, '_wp_trash_meta_time', '1546951233'),
(216, 102, '_edit_lock', '1546951310:2'),
(217, 102, '_wp_trash_meta_status', 'publish'),
(218, 102, '_wp_trash_meta_time', '1546951317'),
(219, 103, '_edit_lock', '1546951386:2'),
(220, 103, '_wp_trash_meta_status', 'publish'),
(221, 103, '_wp_trash_meta_time', '1546951400'),
(222, 104, '_wp_trash_meta_status', 'publish') ;
INSERT INTO `wpc_2_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(223, 104, '_wp_trash_meta_time', '1546951445'),
(224, 105, '_wp_attached_file', '2019/01/cropped-fotolia_93375457-1.jpg'),
(225, 105, '_wp_attachment_context', 'custom-header'),
(226, 105, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1900;s:6:"height";i:600;s:4:"file";s:38:"2019/01/cropped-fotolia_93375457-1.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"cropped-fotolia_93375457-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"cropped-fotolia_93375457-1-300x95.jpg";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"cropped-fotolia_93375457-1-768x243.jpg";s:5:"width";i:768;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"cropped-fotolia_93375457-1-1024x323.jpg";s:5:"width";i:1024;s:6:"height";i:323;s:9:"mime-type";s:10:"image/jpeg";}s:22:"magazine-7-slider-full";a:4:{s:4:"file";s:39:"cropped-fotolia_93375457-1-1536x600.jpg";s:5:"width";i:1536;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:24:"magazine-7-slider-center";a:4:{s:4:"file";s:38:"cropped-fotolia_93375457-1-936x600.jpg";s:5:"width";i:936;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"magazine-7-featured";a:4:{s:4:"file";s:39:"cropped-fotolia_93375457-1-1024x323.jpg";s:5:"width";i:1024;s:6:"height";i:323;s:9:"mime-type";s:10:"image/jpeg";}s:17:"magazine-7-medium";a:4:{s:4:"file";s:38:"cropped-fotolia_93375457-1-720x380.jpg";s:5:"width";i:720;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:24:"magazine-7-medium-square";a:4:{s:4:"file";s:38:"cropped-fotolia_93375457-1-675x450.jpg";s:5:"width";i:675;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:99;}'),
(227, 105, '_wp_attachment_custom_header_last_used_featured-news', '1546951474'),
(228, 105, '_wp_attachment_is_custom_header', 'featured-news'),
(229, 106, '_edit_lock', '1546951470:2'),
(230, 106, '_wp_trash_meta_status', 'publish'),
(231, 106, '_wp_trash_meta_time', '1546951474'),
(232, 107, '_edit_lock', '1546951626:2'),
(233, 107, '_wp_trash_meta_status', 'publish'),
(234, 107, '_wp_trash_meta_time', '1546951654'),
(235, 108, '_wp_trash_meta_status', 'publish'),
(236, 108, '_wp_trash_meta_time', '1546951673'),
(237, 109, '_edit_lock', '1546951748:2'),
(238, 109, '_wp_trash_meta_status', 'publish'),
(239, 109, '_wp_trash_meta_time', '1546951783'),
(240, 110, '_wp_trash_meta_status', 'publish'),
(241, 110, '_wp_trash_meta_time', '1546951925'),
(242, 111, '_edit_lock', '1546951945:2'),
(243, 111, '_wp_trash_meta_status', 'publish'),
(244, 111, '_wp_trash_meta_time', '1546951976'),
(245, 81, '_edit_last', '2'),
(246, 81, 'magazine-7-meta-content-alignment', 'align-content-left'),
(247, 117, '_edit_lock', '1546958154:2'),
(248, 118, '_edit_lock', '1546958115:5'),
(249, 117, '_edit_last', '2'),
(250, 117, '_bbp_last_active_time', '2019-01-08 15:27:08'),
(251, 117, '_bbp_forum_subforum_count', '0'),
(252, 117, '_bbp_reply_count', '0'),
(253, 117, '_bbp_total_reply_count', '0'),
(254, 117, '_bbp_topic_count', '0'),
(255, 117, '_bbp_total_topic_count', '0'),
(256, 117, '_bbp_topic_count_hidden', '0'),
(257, 117, '_bbp_last_topic_id', '0'),
(258, 117, '_bbp_last_reply_id', '0'),
(259, 117, '_bbp_last_active_id', '0'),
(260, 121, '_menu_item_type', 'post_type_archive'),
(261, 121, '_menu_item_menu_item_parent', '0'),
(262, 121, '_menu_item_object_id', '-31'),
(263, 121, '_menu_item_object', 'forum'),
(264, 121, '_menu_item_target', ''),
(265, 121, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(266, 121, '_menu_item_xfn', ''),
(267, 121, '_menu_item_url', ''),
(269, 14, '_edit_last', '1'),
(270, 14, 'magazine-7-meta-content-alignment', 'align-content-left'),
(271, 123, '_edit_lock', '1546958824:2'),
(272, 123, '_edit_last', '2'),
(273, 123, '_bbp_last_active_time', '2019-01-08 15:29:56'),
(274, 123, '_bbp_forum_subforum_count', '0'),
(275, 123, '_bbp_reply_count', '0'),
(276, 123, '_bbp_total_reply_count', '0'),
(277, 123, '_bbp_topic_count', '0'),
(278, 123, '_bbp_total_topic_count', '0'),
(279, 123, '_bbp_topic_count_hidden', '0'),
(280, 51, '_edit_last', '1'),
(281, 51, 'magazine-7-meta-content-alignment', 'align-content-left'),
(282, 129, '_wp_trash_meta_status', 'publish'),
(283, 129, '_wp_trash_meta_time', '1546957994'),
(284, 130, '_edit_lock', '1546958034:2'),
(285, 130, '_wp_trash_meta_status', 'publish'),
(286, 130, '_wp_trash_meta_time', '1546958040'),
(287, 123, '_bbp_last_topic_id', '0'),
(288, 123, '_bbp_last_reply_id', '0'),
(289, 123, '_bbp_last_active_id', '0'),
(290, 24, '_edit_last', '1'),
(291, 24, 'magazine-7-meta-content-alignment', 'align-content-left'),
(292, 133, '_wp_trash_meta_status', 'publish'),
(293, 133, '_wp_trash_meta_time', '1546958362'),
(294, 94, '_wp_attachment_image_alt', 'logo cohabit'),
(295, 134, '_wp_attached_file', '2019/01/cropped-logo-cohabit.png'),
(296, 134, '_wp_attachment_context', 'custom-logo'),
(297, 134, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:184;s:6:"height";i:66;s:4:"file";s:32:"2019/01/cropped-logo-cohabit.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"cropped-logo-cohabit-150x66.png";s:5:"width";i:150;s:6:"height";i:66;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(299, 99, '_wp_attachment_image_alt', 'photo imprimante 3D en marche'),
(300, 136, '_wp_attached_file', '2019/01/fablab-cohabit-interactions-machines-bordeaux.webm'),
(301, 136, '_wp_attachment_metadata', 'a:9:{s:8:"filesize";i:20707554;s:9:"mime_type";s:10:"video/webm";s:6:"length";i:13;s:16:"length_formatted";s:4:"0:13";s:5:"width";i:1920;s:6:"height";i:1080;s:10:"fileformat";s:4:"webm";s:10:"dataformat";s:5:"V_VP9";s:5:"audio";a:6:{s:10:"dataformat";s:6:"A_OPUS";s:11:"sample_rate";d:48000;s:8:"channels";i:2;s:8:"language";s:3:"fra";s:15:"bits_per_sample";i:32;s:11:"channelmode";s:6:"stereo";}}'),
(302, 138, '_edit_lock', '1546959262:2'),
(303, 138, '_edit_last', '2'),
(304, 139, '_wp_attached_file', '2019/01/fotolia_filtre-vert.jpg'),
(305, 139, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:334;s:4:"file";s:31:"2019/01/fotolia_filtre-vert.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"fotolia_filtre-vert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"fotolia_filtre-vert-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(306, 139, '_wp_attachment_image_alt', 'image imprimante 3D bannière'),
(307, 140, '_wp_attached_file', '2019/01/cropped-fotolia_filtre-vert.jpg'),
(308, 140, '_wp_attachment_context', 'custom-header'),
(309, 140, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1900;s:6:"height";i:600;s:4:"file";s:39:"2019/01/cropped-fotolia_filtre-vert.jpg";s:5:"sizes";a:9:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"cropped-fotolia_filtre-vert-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"cropped-fotolia_filtre-vert-300x95.jpg";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:39:"cropped-fotolia_filtre-vert-768x243.jpg";s:5:"width";i:768;s:6:"height";i:243;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:40:"cropped-fotolia_filtre-vert-1024x323.jpg";s:5:"width";i:1024;s:6:"height";i:323;s:9:"mime-type";s:10:"image/jpeg";}s:22:"magazine-7-slider-full";a:4:{s:4:"file";s:40:"cropped-fotolia_filtre-vert-1536x600.jpg";s:5:"width";i:1536;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:24:"magazine-7-slider-center";a:4:{s:4:"file";s:39:"cropped-fotolia_filtre-vert-936x600.jpg";s:5:"width";i:936;s:6:"height";i:600;s:9:"mime-type";s:10:"image/jpeg";}s:19:"magazine-7-featured";a:4:{s:4:"file";s:40:"cropped-fotolia_filtre-vert-1024x323.jpg";s:5:"width";i:1024;s:6:"height";i:323;s:9:"mime-type";s:10:"image/jpeg";}s:17:"magazine-7-medium";a:4:{s:4:"file";s:39:"cropped-fotolia_filtre-vert-720x380.jpg";s:5:"width";i:720;s:6:"height";i:380;s:9:"mime-type";s:10:"image/jpeg";}s:24:"magazine-7-medium-square";a:4:{s:4:"file";s:39:"cropped-fotolia_filtre-vert-675x450.jpg";s:5:"width";i:675;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:139;}'),
(310, 135, '_customize_restore_dismissed', '1'),
(311, 140, '_wp_attachment_custom_header_last_used_featured-news', '1546959632'),
(312, 140, '_wp_attachment_is_custom_header', 'featured-news'),
(313, 141, '_edit_lock', '1546959585:3'),
(314, 138, '_bbp_last_active_time', '2019-01-08 15:56:28'),
(315, 138, '_bbp_forum_subforum_count', '0'),
(316, 138, '_bbp_reply_count', '0'),
(317, 138, '_bbp_total_reply_count', '0'),
(318, 138, '_bbp_topic_count', '0'),
(319, 138, '_bbp_total_topic_count', '0'),
(320, 138, '_bbp_topic_count_hidden', '0'),
(321, 143, '_edit_lock', '1546959427:2'),
(322, 143, '_edit_last', '2'),
(323, 143, '_bbp_last_active_time', '2019-01-08 15:58:36'),
(324, 143, '_bbp_forum_subforum_count', '0') ;
INSERT INTO `wpc_2_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(325, 143, '_bbp_reply_count', '0'),
(326, 143, '_bbp_total_reply_count', '0'),
(327, 143, '_bbp_topic_count', '0'),
(328, 143, '_bbp_total_topic_count', '0'),
(329, 143, '_bbp_topic_count_hidden', '0'),
(330, 143, '_bbp_last_topic_id', '0'),
(331, 143, '_bbp_last_reply_id', '0'),
(332, 143, '_bbp_last_active_id', '0'),
(333, 145, '_edit_lock', '1546959947:2'),
(334, 141, '_wp_trash_meta_status', 'publish'),
(335, 141, '_wp_trash_meta_time', '1546959632'),
(336, 148, '_wp_trash_meta_status', 'publish'),
(337, 148, '_wp_trash_meta_time', '1546959706'),
(338, 150, '_edit_lock', '1546959718:3'),
(339, 150, '_customize_restore_dismissed', '1'),
(340, 151, '_wp_trash_meta_status', 'publish'),
(341, 151, '_wp_trash_meta_time', '1546959766') ;

#
# End of data contents of table `wpc_2_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_posts`
#

DROP TABLE IF EXISTS `wpc_2_posts`;


#
# Table structure of table `wpc_2_posts`
#

CREATE TABLE `wpc_2_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_posts`
#
INSERT INTO `wpc_2_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-07 15:55:06', '2019-01-07 14:55:06', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2019-01-08 11:27:13', '2019-01-08 10:27:13', '', 0, 'http://cohabit.utila.io/fablab/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-07 15:55:06', '2019-01-07 14:55:06', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://cohabit.utila.io/fablab/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'closed', '', 'page-d-exemple__trashed', '', '', '2019-01-08 11:27:31', '2019-01-08 10:27:31', '', 0, 'http://cohabit.utila.io/fablab/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-07 15:55:06', '2019-01-07 14:55:06', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://cohabit.utila.io/fablab.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-01-07 15:55:06', '2019-01-07 14:55:06', '', 0, 'http://cohabit.utila.io/fablab/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-07 15:55:34', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-07 15:55:34', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=4', 0, 'post', '', 0),
(5, 2, '2019-01-07 16:25:54', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-07 16:25:54', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=5', 0, 'post', '', 0),
(6, 3, '2019-01-07 16:26:32', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-07 16:26:32', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=6', 0, 'post', '', 0),
(7, 3, '2019-01-07 16:35:48', '2019-01-07 15:35:48', '<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Notre FabLab', '', 'publish', 'closed', 'closed', '', 'notre-fablab', '', '', '2019-01-07 16:36:09', '2019-01-07 15:36:09', '', 0, 'http://cohabit.utila.io/fablab/?page_id=7', 0, 'page', '', 0),
(8, 3, '2019-01-07 16:35:48', '2019-01-07 15:35:48', '<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Notre FabLab', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2019-01-07 16:35:48', '2019-01-07 15:35:48', '', 7, 'http://cohabit.utila.io/fablab/2019/01/07/7-revision-v1/', 0, 'revision', '', 0),
(9, 3, '2019-01-07 16:37:06', '2019-01-07 15:37:06', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://cohabit.utila.io/fablab/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-01-07 16:37:06', '2019-01-07 15:37:06', '', 2, 'http://cohabit.utila.io/fablab/2019/01/07/2-revision-v1/', 0, 'revision', '', 0),
(10, 3, '2019-01-07 16:37:28', '0000-00-00 00:00:00', '', 'Ressources', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 16:37:28', '2019-01-07 15:37:28', '', 0, 'http://cohabit.utila.io/fablab/?page_id=10', 0, 'page', '', 0),
(11, 3, '2019-01-08 08:32:34', '2019-01-08 07:32:34', '', 'Ressources', '', 'publish', 'closed', 'closed', '', 'ressources', '', '', '2019-01-08 08:32:34', '2019-01-08 07:32:34', '', 0, 'http://cohabit.utila.io/fablab/?page_id=11', 0, 'page', '', 0),
(12, 2, '2019-01-08 08:34:35', '2019-01-08 07:34:35', '<!-- wp:paragraph -->\n<p>(Liste des formations/ateliers/stages/visites par catégorie et par cible)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Description</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Date de prochaine session : du JJ/MM/AAAA au  JJ/MM/AAAA </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://cohabit.utila.io/fablab/adherez/">Inscrivez vous!<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'L\'Offre', '', 'publish', 'closed', 'closed', '', 'loffre', '', '', '2019-01-08 09:37:59', '2019-01-08 08:37:59', '', 0, 'http://cohabit.utila.io/fablab/?page_id=12', 0, 'page', '', 0),
(13, 3, '2019-01-08 08:32:34', '2019-01-08 07:32:34', '', 'Ressources', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-01-08 08:32:34', '2019-01-08 07:32:34', '', 11, 'http://cohabit.utila.io/fablab/2019/01/08/11-revision-v1/', 0, 'revision', '', 0),
(14, 3, '2019-01-08 08:32:50', '2019-01-08 07:32:50', '', 'Liste des machines', '', 'publish', 'closed', 'closed', '', 'liste-des-machines', '', '', '2019-01-08 15:30:08', '2019-01-08 14:30:08', '', 0, 'http://cohabit.utila.io/fablab/?page_id=14', 0, 'page', '', 0),
(15, 3, '2019-01-08 08:32:50', '2019-01-08 07:32:50', '', 'Liste des machines', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-01-08 08:32:50', '2019-01-08 07:32:50', '', 14, 'http://cohabit.utila.io/fablab/2019/01/08/14-revision-v1/', 0, 'revision', '', 0),
(16, 3, '2019-01-08 08:33:08', '2019-01-08 07:33:08', '', 'Équipe', '', 'publish', 'closed', 'closed', '', 'equipe', '', '', '2019-01-08 08:53:29', '2019-01-08 07:53:29', '', 0, 'http://cohabit.utila.io/fablab/?page_id=16', 0, 'page', '', 0),
(17, 3, '2019-01-08 08:33:08', '2019-01-08 07:33:08', '', 'Équipes', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-01-08 08:33:08', '2019-01-08 07:33:08', '', 16, 'http://cohabit.utila.io/fablab/2019/01/08/16-revision-v1/', 0, 'revision', '', 0),
(18, 3, '2019-01-08 08:34:11', '2019-01-08 07:34:11', '', 'Fiche descriptive de la machine', '', 'publish', 'closed', 'closed', '', 'fiche-descriptive-de-la-machine', '', '', '2019-01-08 08:34:11', '2019-01-08 07:34:11', '', 0, 'http://cohabit.utila.io/fablab/?page_id=18', 0, 'page', '', 0),
(19, 3, '2019-01-08 08:34:11', '2019-01-08 07:34:11', '', 'Fiche descriptive de la machine', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-01-08 08:34:11', '2019-01-08 07:34:11', '', 18, 'http://cohabit.utila.io/fablab/2019/01/08/18-revision-v1/', 0, 'revision', '', 0),
(20, 3, '2019-01-08 08:35:17', '2019-01-08 07:35:17', '<!-- wp:paragraph -->\n<p>Pour apprendre, collaborer et produire sur le campus de l\'Université de Bordeaux</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://www.iut.u-bordeaux.fr/cohabit-new/fablab-bordeaux-espace-fabrication-numerique-imprimante-3d-decoupe-laser-decoupe-vinyle-aquitaine/">/// Fabriquez un objet ///<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:spacer -->\n<div style="height:100px" aria-hidden="true" class="wp-block-spacer"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Le  fablab de l’université de Bordeaux est un fab lab, espace de  fabrication numérique, qui propose des ateliers diy sur Bordeaux, Pessac  et Gradignan. Il propose de la formation imprimante 3D  pas cher, mais aussi de la location machine découpe laser, découpe  vinyle, des ateliers pour les associations, pour les entreprises, pour  les collectivités. Le fablab est un espace collaboratif de création  technologique unique en Gironde et en Aquitaine. Coh@bit est situé sur le campus de l’IUT de Bordeaux près de la fac et accueille aussi des  étudiants.</p>\n<!-- /wp:paragraph -->', 'Le concept', '', 'publish', 'closed', 'closed', '', 'le-concept', '', '', '2019-01-08 09:24:30', '2019-01-08 08:24:30', '', 0, 'http://cohabit.utila.io/fablab/?page_id=20', 0, 'page', '', 0),
(21, 2, '2019-01-08 08:34:35', '2019-01-08 07:34:35', '<!-- wp:paragraph -->\n<p>(Liste des formations/ateliers/stages/visites par catégorie et par cible)</p>\n<!-- /wp:paragraph -->', 'L\'Offre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-08 08:34:35', '2019-01-08 07:34:35', '', 12, 'http://cohabit.utila.io/fablab/2019/01/08/12-revision-v1/', 0, 'revision', '', 0),
(22, 2, '2019-01-08 08:34:49', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-08 08:34:49', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?page_id=22', 0, 'page', '', 0),
(23, 3, '2019-01-08 08:35:17', '2019-01-08 07:35:17', '<!-- wp:paragraph -->\n<p>(asso ds un univers universitaire avec une volonté sociale)<br></p>\n<!-- /wp:paragraph -->', 'Le concept', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-01-08 08:35:17', '2019-01-08 07:35:17', '', 20, 'http://cohabit.utila.io/fablab/2019/01/08/20-revision-v1/', 0, 'revision', '', 0),
(24, 3, '2019-01-08 08:35:29', '2019-01-08 07:35:29', '<!-- wp:paragraph -->\n<p>On est pas payés !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C\'est un scandale !</p>\n<!-- /wp:paragraph -->', 'Nos missions', '', 'publish', 'closed', 'closed', '', 'nos-missions', '', '', '2019-01-08 15:39:00', '2019-01-08 14:39:00', '', 0, 'http://cohabit.utila.io/fablab/?page_id=24', 0, 'page', '', 0),
(25, 3, '2019-01-08 08:35:29', '2019-01-08 07:35:29', '', 'Nos missions', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-08 08:35:29', '2019-01-08 07:35:29', '', 24, 'http://cohabit.utila.io/fablab/2019/01/08/24-revision-v1/', 0, 'revision', '', 0),
(27, 2, '2019-01-08 08:43:48', '2019-01-08 07:43:48', '<!-- wp:paragraph -->\n<p>(Liste des formations/ateliers/stages/visites par catégorie et par cible)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Description</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Date de prochaine session : du JJ/MM/AAAA au  JJ/MM/AAAA </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Inscrivez vous! (lien vers formulaire d\'inscription)<br></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'L\'Offre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-08 08:43:48', '2019-01-08 07:43:48', '', 12, 'http://cohabit.utila.io/fablab/2019/01/08/12-revision-v1/', 0, 'revision', '', 0),
(28, 2, '2019-01-08 08:45:47', '2019-01-08 07:45:47', '', 'L\'Offre', '', 'publish', 'closed', 'closed', '', 'loffre', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=28', 8, 'nav_menu_item', '', 0),
(29, 2, '2019-01-08 08:47:21', '2019-01-08 07:47:21', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=29', 5, 'nav_menu_item', '', 0),
(30, 2, '2019-01-08 08:47:21', '2019-01-08 07:47:21', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=30', 1, 'nav_menu_item', '', 0),
(31, 2, '2019-01-08 08:48:23', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-08 08:48:23', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?page_id=31', 0, 'page', '', 0),
(32, 3, '2019-01-08 08:48:44', '2019-01-08 07:48:44', '', 'Notre différence', '', 'publish', 'closed', 'closed', '', 'notre-difference', '', '', '2019-01-08 08:48:44', '2019-01-08 07:48:44', '', 0, 'http://cohabit.utila.io/fablab/?page_id=32', 0, 'page', '', 0),
(33, 2, '2019-01-08 08:51:52', '2019-01-08 07:51:52', '<!-- wp:media-text {"mediaId":35,"mediaType":"image"} -->\n<div class="wp-block-media-text alignwide"><figure class="wp-block-media-text__media"><img src="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/carte1-1.png" alt="" class="wp-image-35"/></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":4} -->\n<h4>Adresse</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>15 rue Naudet – CS 10207</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>33175 GRADIGNAN Cedex</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Horaires d’ouverture</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Du lundi au vendredi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10h – 18h</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Fab Manager</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Jean-Baptiste Bonnemaison</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>07 60 52 81 63</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Courriel</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>fablab@iut.u-bordeaux.fr</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading -->\n<h2 id="Contact">Nous Contacter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une demande ? Un projet en tête ?  Dîtes le nous ! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->', 'Infos Pratiques', '', 'publish', 'closed', 'closed', '', 'infos-pratiques', '', '', '2019-01-08 10:10:07', '2019-01-08 09:10:07', '', 0, 'http://cohabit.utila.io/fablab/?page_id=33', 0, 'page', '', 0),
(34, 3, '2019-01-08 08:48:44', '2019-01-08 07:48:44', '', 'Notre différence', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-01-08 08:48:44', '2019-01-08 07:48:44', '', 32, 'http://cohabit.utila.io/fablab/2019/01/08/32-revision-v1/', 0, 'revision', '', 0),
(35, 2, '2019-01-08 08:50:09', '2019-01-08 07:50:09', '', 'EmplacementFabLab', '', 'inherit', 'open', 'closed', '', 'carte1-1', '', '', '2019-01-08 08:50:21', '2019-01-08 07:50:21', '', 33, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/carte1-1.png', 0, 'attachment', 'image/png', 0),
(36, 2, '2019-01-08 08:51:52', '2019-01-08 07:51:52', '<!-- wp:media-text {"mediaId":35,"mediaType":"image"} -->\n<div class="wp-block-media-text alignwide"><figure class="wp-block-media-text__media"><img src="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/carte1-1.png" alt="" class="wp-image-35"/></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":4} -->\n<h4>Adresse</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>15 rue Naudet – CS 10207</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>33175 GRADIGNAN Cedex</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Horaires d’ouverture</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Du lundi au vendredi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10h – 18h</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Fab Manager</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Jean-Baptiste Bonnemaison</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>07 60 52 81 63</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Courriel</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>fablab@iut.u-bordeaux.fr</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-01-08 08:51:52', '2019-01-08 07:51:52', '', 33, 'http://cohabit.utila.io/fablab/2019/01/08/33-revision-v1/', 0, 'revision', '', 0),
(38, 3, '2019-01-08 08:52:54', '2019-01-08 07:52:54', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=38', 6, 'nav_menu_item', '', 0),
(39, 2, '2019-01-08 08:53:25', '2019-01-08 07:53:25', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=39', 11, 'nav_menu_item', '', 0),
(40, 3, '2019-01-08 08:53:29', '2019-01-08 07:53:29', '', 'Équipe', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-01-08 08:53:29', '2019-01-08 07:53:29', '', 16, 'http://cohabit.utila.io/fablab/2019/01/08/16-revision-v1/', 0, 'revision', '', 0),
(41, 3, '2019-01-08 09:02:17', '2019-01-08 08:02:17', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=41', 7, 'nav_menu_item', '', 0),
(42, 3, '2019-01-08 08:54:24', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-08 08:54:24', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=42', 1, 'nav_menu_item', '', 0),
(43, 3, '2019-01-08 08:54:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-08 08:54:43', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=43', 1, 'nav_menu_item', '', 0),
(44, 3, '2019-01-08 09:02:17', '2019-01-08 08:02:17', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=44', 4, 'nav_menu_item', '', 0),
(45, 3, '2019-01-08 09:02:17', '2019-01-08 08:02:17', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=45', 3, 'nav_menu_item', '', 0),
(46, 3, '2019-01-08 09:02:17', '2019-01-08 08:02:17', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=46', 2, 'nav_menu_item', '', 0),
(47, 3, '2019-01-08 09:04:23', '2019-01-08 08:04:23', '{"sidebars_widgets[sidebar-1]":{"value":["search-2","archives-2","meta-2"],"type":"option","user_id":3,"date_modified_gmt":"2019-01-08 08:04:23"}}', '', '', 'trash', 'closed', 'closed', '', 'f207865c-ec1f-4765-8073-9e55fcd1a46f', '', '', '2019-01-08 09:04:23', '2019-01-08 08:04:23', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/f207865c-ec1f-4765-8073-9e55fcd1a46f/', 0, 'customize_changeset', '', 0),
(48, 2, '2019-01-08 09:04:49', '2019-01-08 08:04:49', '{"blogdescription":{"value":"","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 08:04:49"}}', '', '', 'trash', 'closed', 'closed', '', '5e690296-1d53-4407-9977-e7cfa0e981e1', '', '', '2019-01-08 09:04:49', '2019-01-08 08:04:49', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/5e690296-1d53-4407-9977-e7cfa0e981e1/', 0, 'customize_changeset', '', 0),
(49, 2, '2019-01-08 09:05:29', '2019-01-08 08:05:29', '{"widget_meta[2]":{"value":{"encoded_serialized_instance":"YToxOntzOjU6InRpdGxlIjtzOjA6IiI7fQ==","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"806dea25a45349ae78b3ccef8474f420"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 08:05:29"}}', '', '', 'trash', 'closed', 'closed', '', 'c4e44a83-db22-481c-8fbe-1b7a9555a588', '', '', '2019-01-08 09:05:29', '2019-01-08 08:05:29', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/c4e44a83-db22-481c-8fbe-1b7a9555a588/', 0, 'customize_changeset', '', 0),
(50, 2, '2019-01-08 09:06:46', '2019-01-08 08:06:46', '', 'BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1', '', 'inherit', 'open', 'closed', '', 'bulletin-dadhesion-fablab-rentree-2018-semestre-1', '', '', '2019-01-08 09:06:46', '2019-01-08 08:06:46', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf', 0, 'attachment', 'application/pdf', 0),
(51, 2, '2019-01-08 09:10:23', '2019-01-08 08:10:23', '<!-- wp:paragraph -->\n<p>N\'importe qui peut accéder au Fablab. Déposez votre bulletin d\'adhésion, la charte et le règlement au secrétariat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:file {"id":50,"href":"http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf"} -->\n<div class="wp-block-file"><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf">Bulletin d\'adhésion (Format PDF)</a><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf" class="wp-block-file__button" download>Télécharger</a></div>\n<!-- /wp:file -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qui peut s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Toute personne peut s’inscrire au FabLab. L’adhésion est nominative, ce qui permet à l’adhérent d’être assuré dans nos locaux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Quels sont les tarifs ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs sont forfaitaires au semestre. Le premier semestre court \nde début septembre à début février et le second semestre suit de début \nfévrier à fin juillet, les dates précises sont indiquées sur le bulletin\n en cours.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prévoir 50€ pour les étudiants, 100€ pour les particuliers et 250€ pour un salarié d’entreprise ou de laboratoire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qu’est-ce que comprend l’adhésion ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adhésion donne accès à l’espace collaboratif, aux équipements en \nillimité sur réservation, aux animations organisées, à des ateliers \nspécifiques et inclut une formation à la découpe laser le mardi à 17h et\n une formation à l’imprimante 3D le jeudi à 16h.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Les matières premières sont à la charge de l’utilisateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Comment s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Il suffit de nous apporter :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>le bulletin d’adhésion rempli (cliquez sur le bouton en haut de cette page)</li><li>la charte signée (cliquez sur le bouton en haut de cette page)</li><li>le règlement par chèque de préférence </li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Une carte d’adhérent et un numéro d’adhérent vous seront remis. Celui-ci sert à la réservation des machines.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une demande ? Un projet en tête ? Dîtes le nous !</h3>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Adhérez', '', 'publish', 'closed', 'closed', '', 'adherez', '', '', '2019-01-08 15:30:22', '2019-01-08 14:30:22', '', 0, 'http://cohabit.utila.io/fablab/?page_id=51', 0, 'page', '', 0),
(52, 2, '2019-01-08 09:10:23', '2019-01-08 08:10:23', '<!-- wp:paragraph -->\n<p>N\'importe qui peut accéder au Fablab. Déposez votre bulletin d\'adhésion, la charte et le règlement au secrétariat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:file {"id":50,"href":"http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf"} -->\n<div class="wp-block-file"><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf">Bulletin d\'adhésion (Format PDF)</a><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf" class="wp-block-file__button" download>Télécharger</a></div>\n<!-- /wp:file -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qui peut s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Toute personne peut s’inscrire au FabLab. L’adhésion est nominative, ce qui permet à l’adhérent d’être assuré dans nos locaux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Quels sont les tarifs ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs sont forfaitaires au semestre. Le premier semestre court \nde début septembre à début février et le second semestre suit de début \nfévrier à fin juillet, les dates précises sont indiquées sur le bulletin\n en cours.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prévoir 50€ pour les étudiants, 100€ pour les particuliers et 250€ pour un salarié d’entreprise ou de laboratoire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qu’est-ce que comprend l’adhésion ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adhésion donne accès à l’espace collaboratif, aux équipements en \nillimité sur réservation, aux animations organisées, à des ateliers \nspécifiques et inclut une formation à la découpe laser le mardi à 17h et\n une formation à l’imprimante 3D le jeudi à 16h.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Les matières premières sont à la charge de l’utilisateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Comment s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Il suffit de nous apporter :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>le bulletin d’adhésion rempli (cliquez sur le bouton en haut de cette page)</li><li>la charte signée (cliquez sur le bouton en haut de cette page)</li><li>le règlement par chèque de préférence </li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Une carte d’adhérent et un numéro d’adhérent vous seront remis. Celui-ci sert à la réservation des machines.</p>\n<!-- /wp:paragraph -->', 'Adherez', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-08 09:10:23', '2019-01-08 08:10:23', '', 51, 'http://cohabit.utila.io/fablab/2019/01/08/51-revision-v1/', 0, 'revision', '', 0),
(53, 2, '2019-01-08 09:10:28', '2019-01-08 08:10:28', '<!-- wp:paragraph -->\n<p>N\'importe qui peut accéder au Fablab. Déposez votre bulletin d\'adhésion, la charte et le règlement au secrétariat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:file {"id":50,"href":"http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf"} -->\n<div class="wp-block-file"><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf">Bulletin d\'adhésion (Format PDF)</a><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf" class="wp-block-file__button" download>Télécharger</a></div>\n<!-- /wp:file -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qui peut s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Toute personne peut s’inscrire au FabLab. L’adhésion est nominative, ce qui permet à l’adhérent d’être assuré dans nos locaux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Quels sont les tarifs ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs sont forfaitaires au semestre. Le premier semestre court \nde début septembre à début février et le second semestre suit de début \nfévrier à fin juillet, les dates précises sont indiquées sur le bulletin\n en cours.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prévoir 50€ pour les étudiants, 100€ pour les particuliers et 250€ pour un salarié d’entreprise ou de laboratoire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qu’est-ce que comprend l’adhésion ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adhésion donne accès à l’espace collaboratif, aux équipements en \nillimité sur réservation, aux animations organisées, à des ateliers \nspécifiques et inclut une formation à la découpe laser le mardi à 17h et\n une formation à l’imprimante 3D le jeudi à 16h.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Les matières premières sont à la charge de l’utilisateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Comment s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Il suffit de nous apporter :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>le bulletin d’adhésion rempli (cliquez sur le bouton en haut de cette page)</li><li>la charte signée (cliquez sur le bouton en haut de cette page)</li><li>le règlement par chèque de préférence </li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Une carte d’adhérent et un numéro d’adhérent vous seront remis. Celui-ci sert à la réservation des machines.</p>\n<!-- /wp:paragraph -->', 'Adhérez', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-08 09:10:28', '2019-01-08 08:10:28', '', 51, 'http://cohabit.utila.io/fablab/2019/01/08/51-revision-v1/', 0, 'revision', '', 0),
(54, 2, '2019-01-08 09:12:17', '2019-01-08 08:12:17', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=54', 12, 'nav_menu_item', '', 0),
(55, 2, '2019-01-08 09:17:47', '2019-01-08 08:17:47', '<!-- wp:paragraph -->\n<p>Fiche descriptive pour chaque réalisation</p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'publish', 'closed', 'closed', '', 'realisations', '', '', '2019-01-08 09:33:30', '2019-01-08 08:33:30', '', 0, 'http://cohabit.utila.io/fablab/?page_id=55', 0, 'page', '', 0),
(56, 3, '2019-01-08 09:24:14', '2019-01-08 08:24:14', '<!-- wp:paragraph -->\n<p>Pour apprendre, collaborer et produire sur le campus de l\'Université de Bordeaux</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://www.iut.u-bordeaux.fr/cohabit-new/fablab-bordeaux-espace-fabrication-numerique-imprimante-3d-decoupe-laser-decoupe-vinyle-aquitaine/">/// Fabriquez un objet ///<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:paragraph -->\n<p>Le  fablab de l’université de Bordeaux est un fab lab, espace de  fabrication numérique, qui propose des ateliers diy sur Bordeaux, Pessac  et Gradignan. Il propose de la formation imprimante 3D  pas cher, mais aussi de la location machine découpe laser, découpe  vinyle, des ateliers pour les associations, pour les entreprises, pour  les collectivités. Le fablab est un espace collaboratif de création  technologique unique en Gironde et en Aquitaine. Coh@bit est situé sur le campus de l’IUT de Bordeaux près de la fac et accueille aussi des  étudiants.</p>\n<!-- /wp:paragraph -->', 'Le concept', '', 'inherit', 'closed', 'closed', '', '20-autosave-v1', '', '', '2019-01-08 09:24:14', '2019-01-08 08:24:14', '', 20, 'http://cohabit.utila.io/fablab/2019/01/08/20-autosave-v1/', 0, 'revision', '', 0),
(57, 2, '2019-01-08 09:17:47', '2019-01-08 08:17:47', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-01-08 09:17:47', '2019-01-08 08:17:47', '', 55, 'http://cohabit.utila.io/fablab/2019/01/08/55-revision-v1/', 0, 'revision', '', 0),
(58, 2, '2019-01-08 09:18:19', '2019-01-08 08:18:19', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=58', 9, 'nav_menu_item', '', 0),
(60, 2, '2019-01-08 09:21:48', '2019-01-08 08:21:48', '<!-- wp:paragraph -->\n<p>(Liste des formations/ateliers/stages/visites par catégorie et par cible)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Description</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Date de prochaine session : du JJ/MM/AAAA au  JJ/MM/AAAA </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://cohabit.utila.io/fablab/adherez/">Inscrivez vous!</a></p>\n<!-- /wp:paragraph -->', 'L\'Offre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-08 09:21:48', '2019-01-08 08:21:48', '', 12, 'http://cohabit.utila.io/fablab/2019/01/08/12-revision-v1/', 0, 'revision', '', 0),
(61, 3, '2019-01-08 09:24:30', '2019-01-08 08:24:30', '<!-- wp:paragraph -->\n<p>Pour apprendre, collaborer et produire sur le campus de l\'Université de Bordeaux</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="https://www.iut.u-bordeaux.fr/cohabit-new/fablab-bordeaux-espace-fabrication-numerique-imprimante-3d-decoupe-laser-decoupe-vinyle-aquitaine/">/// Fabriquez un objet ///<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:spacer -->\n<div style="height:100px" aria-hidden="true" class="wp-block-spacer"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph -->\n<p>Le  fablab de l’université de Bordeaux est un fab lab, espace de  fabrication numérique, qui propose des ateliers diy sur Bordeaux, Pessac  et Gradignan. Il propose de la formation imprimante 3D  pas cher, mais aussi de la location machine découpe laser, découpe  vinyle, des ateliers pour les associations, pour les entreprises, pour  les collectivités. Le fablab est un espace collaboratif de création  technologique unique en Gironde et en Aquitaine. Coh@bit est situé sur le campus de l’IUT de Bordeaux près de la fac et accueille aussi des  étudiants.</p>\n<!-- /wp:paragraph -->', 'Le concept', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-01-08 09:24:30', '2019-01-08 08:24:30', '', 20, 'http://cohabit.utila.io/fablab/2019/01/08/20-revision-v1/', 0, 'revision', '', 0),
(62, 2, '2019-01-08 09:33:30', '2019-01-08 08:33:30', '<!-- wp:paragraph -->\n<p>Fiche descriptive pour chaque réalisation</p>\n<!-- /wp:paragraph -->', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-01-08 09:33:30', '2019-01-08 08:33:30', '', 55, 'http://cohabit.utila.io/fablab/2019/01/08/55-revision-v1/', 0, 'revision', '', 0),
(64, 2, '2019-01-08 09:37:59', '2019-01-08 08:37:59', '<!-- wp:paragraph -->\n<p>(Liste des formations/ateliers/stages/visites par catégorie et par cible)</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Description</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Date de prochaine session : du JJ/MM/AAAA au  JJ/MM/AAAA </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button -->\n<div class="wp-block-button"><a class="wp-block-button__link" href="http://cohabit.utila.io/fablab/adherez/">Inscrivez vous!<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'L\'Offre', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-08 09:37:59', '2019-01-08 08:37:59', '', 12, 'http://cohabit.utila.io/fablab/2019/01/08/12-revision-v1/', 0, 'revision', '', 0),
(65, 2, '2019-01-08 09:50:22', '2019-01-08 08:50:22', '', 'Nous contacter', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-01-08 09:50:22', '2019-01-08 08:50:22', '', 0, 'http://cohabit.utila.io/fablab/?page_id=65', 0, 'page', '', 0),
(66, 2, '2019-01-08 09:50:22', '2019-01-08 08:50:22', '', 'Nous contacter', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2019-01-08 09:50:22', '2019-01-08 08:50:22', '', 65, 'http://cohabit.utila.io/fablab/2019/01/08/65-revision-v1/', 0, 'revision', '', 0),
(68, 2, '2019-01-08 09:52:03', '2019-01-08 08:52:03', '<!-- wp:media-text {"mediaId":35,"mediaType":"image"} -->\n<div class="wp-block-media-text alignwide"><figure class="wp-block-media-text__media"><img src="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/carte1-1.png" alt="" class="wp-image-35"/></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":4} -->\n<h4>Adresse</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>15 rue Naudet – CS 10207</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>33175 GRADIGNAN Cedex</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Horaires d’ouverture</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Du lundi au vendredi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10h – 18h</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Fab Manager</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Jean-Baptiste Bonnemaison</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>07 60 52 81 63</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Courriel</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>fablab@iut.u-bordeaux.fr</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading -->\n<h2>Nous Contacter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une demande ? Un projet en tête ?  Dîtes le nous ! </p>\n<!-- /wp:paragraph -->', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-01-08 09:52:03', '2019-01-08 08:52:03', '', 33, 'http://cohabit.utila.io/fablab/2019/01/08/33-revision-v1/', 0, 'revision', '', 0),
(70, 2, '2019-01-08 09:54:09', '2019-01-08 08:54:09', '<!-- wp:media-text {"mediaId":35,"mediaType":"image"} -->\n<div class="wp-block-media-text alignwide"><figure class="wp-block-media-text__media"><img src="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/carte1-1.png" alt="" class="wp-image-35"/></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":4} -->\n<h4>Adresse</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>15 rue Naudet – CS 10207</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>33175 GRADIGNAN Cedex</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Horaires d’ouverture</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Du lundi au vendredi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10h – 18h</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Fab Manager</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Jean-Baptiste Bonnemaison</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>07 60 52 81 63</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Courriel</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>fablab@iut.u-bordeaux.fr</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading -->\n<h2 id="Contact">Nous Contacter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une demande ? Un projet en tête ?  Dîtes le nous ! </p>\n<!-- /wp:paragraph -->', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-01-08 09:54:09', '2019-01-08 08:54:09', '', 33, 'http://cohabit.utila.io/fablab/2019/01/08/33-revision-v1/', 0, 'revision', '', 0),
(71, 2, '2019-01-08 09:54:30', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-08 09:54:30', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=71', 1, 'nav_menu_item', '', 0),
(72, 1, '2019-01-08 10:00:52', '2019-01-08 09:00:52', '<p>This is the WPForms preview page. All your form previews will be handled on this page.</p><p>The page is set to private, so it is not publicly accessible. Please do not delete this page :) .</p>', 'WPForms Preview', '', 'private', 'closed', 'closed', '', 'wpforms-preview', '', '', '2019-01-08 10:00:52', '2019-01-08 09:00:52', '', 0, 'http://cohabit.utila.io/fablab/wpforms-preview/', 0, 'page', '', 0),
(73, 2, '2019-01-08 10:01:02', '2019-01-08 09:01:02', '{"id":"73","field_id":3,"fields":[{"id":"0","type":"name","label":"Votre nom","format":"simple","description":"","size":"medium","simple_placeholder":"","simple_default":"","first_placeholder":"","first_default":"","middle_placeholder":"","middle_default":"","last_placeholder":"","last_default":"","css":""},{"id":"1","type":"email","label":"Votre email (obligatoire)","description":"","required":"1","size":"medium","placeholder":"","confirmation_placeholder":"","default_value":"","css":""},{"id":"2","type":"textarea","label":"Votre message","description":"","required":"1","size":"medium","placeholder":"","css":""}],"settings":{"form_title":"Formulaire de contact","form_desc":"","form_class":"","submit_text":"Envoyer","submit_text_processing":"Sending...","submit_class":"","honeypot":"1","notification_enable":"1","notifications":{"1":{"email":"{admin_email}","subject":"New Entry: Formulaire de contact simple","sender_name":"{field_id=\\"0\\"}","sender_address":"{admin_email}","replyto":"{field_id=\\"1\\"}","message":"{all_fields}"}},"confirmations":{"1":{"type":"message","message":"<p>Merci de nous avoir contact\\u00e9\\u00a0! Nous reviendrons vers vous rapidement.<\\/p>","message_scroll":"1","page":"51","redirect":""}}},"meta":{"template":"contact"}}', 'Formulaire de contact', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-simple', '', '', '2019-01-08 10:08:02', '2019-01-08 09:08:02', '', 0, 'http://cohabit.utila.io/fablab/?post_type=wpforms&#038;p=73', 0, 'wpforms', '', 0) ;
INSERT INTO `wpc_2_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(74, 2, '2019-01-08 10:10:00', '2019-01-08 09:10:00', '<!-- wp:media-text {"mediaId":35,"mediaType":"image"} -->\n<div class="wp-block-media-text alignwide"><figure class="wp-block-media-text__media"><img src="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/carte1-1.png" alt="" class="wp-image-35"/></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":4} -->\n<h4>Adresse</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>15 rue Naudet – CS 10207</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>33175 GRADIGNAN Cedex</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Horaires d’ouverture</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Du lundi au vendredi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10h – 18h</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Fab Manager</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Jean-Baptiste Bonnemaison</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>07 60 52 81 63</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Courriel</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>fablab@iut.u-bordeaux.fr</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading -->\n<h2 id="Contact">Nous Contacter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une demande ? Un projet en tête ?  Dîtes le nous ! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '33-autosave-v1', '', '', '2019-01-08 10:10:00', '2019-01-08 09:10:00', '', 33, 'http://cohabit.utila.io/fablab/2019/01/08/33-autosave-v1/', 0, 'revision', '', 0),
(75, 2, '2019-01-08 10:10:07', '2019-01-08 09:10:07', '<!-- wp:media-text {"mediaId":35,"mediaType":"image"} -->\n<div class="wp-block-media-text alignwide"><figure class="wp-block-media-text__media"><img src="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/carte1-1.png" alt="" class="wp-image-35"/></figure><div class="wp-block-media-text__content"><!-- wp:heading {"level":4} -->\n<h4>Adresse</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>15 rue Naudet – CS 10207</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>33175 GRADIGNAN Cedex</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Horaires d’ouverture</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Du lundi au vendredi</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>10h – 18h</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Fab Manager</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Jean-Baptiste Bonnemaison</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>07 60 52 81 63</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Courriel</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>fablab@iut.u-bordeaux.fr</p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:heading -->\n<h2 id="Contact">Nous Contacter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Une demande ? Un projet en tête ?  Dîtes le nous ! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->', 'Infos Pratiques', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-01-08 10:10:07', '2019-01-08 09:10:07', '', 33, 'http://cohabit.utila.io/fablab/2019/01/08/33-revision-v1/', 0, 'revision', '', 0),
(76, 2, '2019-01-08 11:11:41', '2019-01-08 10:11:41', '<!-- wp:paragraph -->\n<p>N\'importe qui peut accéder au Fablab. Déposez votre bulletin d\'adhésion, la charte et le règlement au secrétariat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:file {"id":50,"href":"http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf"} -->\n<div class="wp-block-file"><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf">Bulletin d\'adhésion (Format PDF)</a><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf" class="wp-block-file__button" download>Télécharger</a></div>\n<!-- /wp:file -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qui peut s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Toute personne peut s’inscrire au FabLab. L’adhésion est nominative, ce qui permet à l’adhérent d’être assuré dans nos locaux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Quels sont les tarifs ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs sont forfaitaires au semestre. Le premier semestre court \nde début septembre à début février et le second semestre suit de début \nfévrier à fin juillet, les dates précises sont indiquées sur le bulletin\n en cours.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prévoir 50€ pour les étudiants, 100€ pour les particuliers et 250€ pour un salarié d’entreprise ou de laboratoire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qu’est-ce que comprend l’adhésion ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adhésion donne accès à l’espace collaboratif, aux équipements en \nillimité sur réservation, aux animations organisées, à des ateliers \nspécifiques et inclut une formation à la découpe laser le mardi à 17h et\n une formation à l’imprimante 3D le jeudi à 16h.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Les matières premières sont à la charge de l’utilisateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Comment s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Il suffit de nous apporter :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>le bulletin d’adhésion rempli (cliquez sur le bouton en haut de cette page)</li><li>la charte signée (cliquez sur le bouton en haut de cette page)</li><li>le règlement par chèque de préférence </li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Une carte d’adhérent et un numéro d’adhérent vous seront remis. Celui-ci sert à la réservation des machines.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->', 'Adhérez', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-08 11:11:41', '2019-01-08 10:11:41', '', 51, 'http://cohabit.utila.io/fablab/2019/01/08/51-revision-v1/', 0, 'revision', '', 0),
(78, 2, '2019-01-08 11:12:40', '2019-01-08 10:12:40', '<!-- wp:paragraph -->\n<p>N\'importe qui peut accéder au Fablab. Déposez votre bulletin d\'adhésion, la charte et le règlement au secrétariat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:file {"id":50,"href":"http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf"} -->\n<div class="wp-block-file"><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf">Bulletin d\'adhésion (Format PDF)</a><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf" class="wp-block-file__button" download>Télécharger</a></div>\n<!-- /wp:file -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qui peut s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Toute personne peut s’inscrire au FabLab. L’adhésion est nominative, ce qui permet à l’adhérent d’être assuré dans nos locaux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Quels sont les tarifs ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs sont forfaitaires au semestre. Le premier semestre court \nde début septembre à début février et le second semestre suit de début \nfévrier à fin juillet, les dates précises sont indiquées sur le bulletin\n en cours.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prévoir 50€ pour les étudiants, 100€ pour les particuliers et 250€ pour un salarié d’entreprise ou de laboratoire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qu’est-ce que comprend l’adhésion ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adhésion donne accès à l’espace collaboratif, aux équipements en \nillimité sur réservation, aux animations organisées, à des ateliers \nspécifiques et inclut une formation à la découpe laser le mardi à 17h et\n une formation à l’imprimante 3D le jeudi à 16h.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Les matières premières sont à la charge de l’utilisateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Comment s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Il suffit de nous apporter :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>le bulletin d’adhésion rempli (cliquez sur le bouton en haut de cette page)</li><li>la charte signée (cliquez sur le bouton en haut de cette page)</li><li>le règlement par chèque de préférence </li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Une carte d’adhérent et un numéro d’adhérent vous seront remis. Celui-ci sert à la réservation des machines.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Une demande ? Un projet en tête ? Dîtes le nous ! </h4>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Adhérez', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-08 11:12:40', '2019-01-08 10:12:40', '', 51, 'http://cohabit.utila.io/fablab/2019/01/08/51-revision-v1/', 0, 'revision', '', 0),
(79, 2, '2019-01-08 11:13:27', '2019-01-08 10:13:27', '<!-- wp:paragraph -->\n<p>N\'importe qui peut accéder au Fablab. Déposez votre bulletin d\'adhésion, la charte et le règlement au secrétariat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:file {"id":50,"href":"http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf"} -->\n<div class="wp-block-file"><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf">Bulletin d\'adhésion (Format PDF)</a><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf" class="wp-block-file__button" download>Télécharger</a></div>\n<!-- /wp:file -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qui peut s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Toute personne peut s’inscrire au FabLab. L’adhésion est nominative, ce qui permet à l’adhérent d’être assuré dans nos locaux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Quels sont les tarifs ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs sont forfaitaires au semestre. Le premier semestre court \nde début septembre à début février et le second semestre suit de début \nfévrier à fin juillet, les dates précises sont indiquées sur le bulletin\n en cours.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prévoir 50€ pour les étudiants, 100€ pour les particuliers et 250€ pour un salarié d’entreprise ou de laboratoire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qu’est-ce que comprend l’adhésion ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adhésion donne accès à l’espace collaboratif, aux équipements en \nillimité sur réservation, aux animations organisées, à des ateliers \nspécifiques et inclut une formation à la découpe laser le mardi à 17h et\n une formation à l’imprimante 3D le jeudi à 16h.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Les matières premières sont à la charge de l’utilisateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Comment s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Il suffit de nous apporter :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>le bulletin d’adhésion rempli (cliquez sur le bouton en haut de cette page)</li><li>la charte signée (cliquez sur le bouton en haut de cette page)</li><li>le règlement par chèque de préférence </li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Une carte d’adhérent et un numéro d’adhérent vous seront remis. Celui-ci sert à la réservation des machines.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une demande ? Un projet en tête ? Dîtes le nous ! </h3>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Adhérez', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-08 11:13:27', '2019-01-08 10:13:27', '', 51, 'http://cohabit.utila.io/fablab/2019/01/08/51-revision-v1/', 0, 'revision', '', 0),
(80, 2, '2019-01-08 11:14:29', '2019-01-08 10:14:29', '<!-- wp:paragraph -->\n<p>N\'importe qui peut accéder au Fablab. Déposez votre bulletin d\'adhésion, la charte et le règlement au secrétariat. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:file {"id":50,"href":"http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf"} -->\n<div class="wp-block-file"><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf">Bulletin d\'adhésion (Format PDF)</a><a href="http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/BULLETIN-DADHESION-FabLab-Rentrée-2018-SEMESTRE-1.pdf" class="wp-block-file__button" download>Télécharger</a></div>\n<!-- /wp:file -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qui peut s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Toute personne peut s’inscrire au FabLab. L’adhésion est nominative, ce qui permet à l’adhérent d’être assuré dans nos locaux.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Quels sont les tarifs ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Les tarifs sont forfaitaires au semestre. Le premier semestre court \nde début septembre à début février et le second semestre suit de début \nfévrier à fin juillet, les dates précises sont indiquées sur le bulletin\n en cours.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Prévoir 50€ pour les étudiants, 100€ pour les particuliers et 250€ pour un salarié d’entreprise ou de laboratoire.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Qu’est-ce que comprend l’adhésion ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>L’adhésion donne accès à l’espace collaboratif, aux équipements en \nillimité sur réservation, aux animations organisées, à des ateliers \nspécifiques et inclut une formation à la découpe laser le mardi à 17h et\n une formation à l’imprimante 3D le jeudi à 16h.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Les matières premières sont à la charge de l’utilisateur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":4} -->\n<h4>Comment s’inscrire ?</h4>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Il suffit de nous apporter :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>le bulletin d’adhésion rempli (cliquez sur le bouton en haut de cette page)</li><li>la charte signée (cliquez sur le bouton en haut de cette page)</li><li>le règlement par chèque de préférence </li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Une carte d’adhérent et un numéro d’adhérent vous seront remis. Celui-ci sert à la réservation des machines.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"level":3} -->\n<h3>Une demande ? Un projet en tête ? Dîtes le nous !</h3>\n<!-- /wp:heading -->\n\n<!-- wp:wpforms/form-selector {"formId":"73"} /-->\n\n<!-- wp:paragraph -->\n<p><br></p>\n<!-- /wp:paragraph -->', 'Adhérez', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2019-01-08 11:14:29', '2019-01-08 10:14:29', '', 51, 'http://cohabit.utila.io/fablab/2019/01/08/51-revision-v1/', 0, 'revision', '', 0),
(81, 2, '2019-01-08 11:15:56', '2019-01-08 10:15:56', '<!-- wp:heading -->\n<h2>Le FabLab, c\'est quoi?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Missions</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {"backgroundColor":"very-dark-gray","textColor":"very-light-gray","align":"center"} -->\n<div class="wp-block-button aligncenter"><a class="wp-block-button__link has-text-color has-very-light-gray-color has-background has-very-dark-gray-background-color" href="">En savoir plus<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Réalisations</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Partenaires</h2>\n<!-- /wp:heading -->', 'Le FabLab, c\'est quoi?', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-01-08 13:58:06', '2019-01-08 12:58:06', '', 0, 'http://cohabit.utila.io/fablab/?page_id=81', 0, 'page', '', 0),
(82, 2, '2019-01-08 11:15:56', '2019-01-08 10:15:56', '{"show_on_front":{"value":"page","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 10:15:56"},"page_on_front":{"value":"81","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 10:15:56"},"nav_menus_created_posts":{"value":[81],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 10:15:56"}}', '', '', 'trash', 'closed', 'closed', '', 'e3c7a19b-cc8f-409e-8fdc-fd8db7ac69df', '', '', '2019-01-08 11:15:56', '2019-01-08 10:15:56', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/e3c7a19b-cc8f-409e-8fdc-fd8db7ac69df/', 0, 'customize_changeset', '', 0),
(83, 2, '2019-01-08 11:15:56', '2019-01-08 10:15:56', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-08 11:15:56', '2019-01-08 10:15:56', '', 81, 'http://cohabit.utila.io/fablab/2019/01/08/81-revision-v1/', 0, 'revision', '', 0),
(85, 2, '2019-01-08 11:17:48', '2019-01-08 10:17:48', '<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Le FabLab, c\'est quoi?', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-08 11:17:48', '2019-01-08 10:17:48', '', 81, 'http://cohabit.utila.io/fablab/2019/01/08/81-revision-v1/', 0, 'revision', '', 0),
(87, 2, '2019-01-08 11:21:10', '2019-01-08 10:21:10', '<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:columns {"columns":3} -->\n<div class="wp-block-columns has-3-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Le FabLab, c\'est quoi?', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-08 11:21:10', '2019-01-08 10:21:10', '', 81, 'http://cohabit.utila.io/fablab/2019/01/08/81-revision-v1/', 0, 'revision', '', 0),
(88, 2, '2019-01-08 11:27:13', '2019-01-08 10:27:13', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-01-08 11:27:13', '2019-01-08 10:27:13', '', 1, 'http://cohabit.utila.io/fablab/2019/01/08/1-revision-v1/', 0, 'revision', '', 0),
(89, 2, '2019-01-08 11:33:26', '2019-01-08 10:33:26', '<div id="overlappable-8"  style="background-color:#f5fafd"  data-label="Overlappable" data-id="overlappable-5-materialis" data-export-id="overlappable-5-materialis" data-category="overlappable" class="overlappable-5-materialis content-section content-section-spacing-large" data-overlap="true"><div class="gridContainer"> <div data-type="row" class="row spaced-cols "><div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"><div class="row"> <div class="col-sm-fit icon-col"><i class="color1 icon mdi mdi-responsive reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">RESPONSIVE DESIGN</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div> <div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"> <div class="row"> <div class="col-sm-fit icon-col"> <i class="color1 icon mdi mdi-vector-square reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">SUPER FEATURES</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div> <div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"> <div class="row"> <div class="col-sm-fit icon-col"> <i class="color1 icon mdi mdi-arrange-bring-forward reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">DRAG AND DROP</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div></div> </div></div><div id="about-6"  style="background-color:#f5fafd"  data-label="About" data-id="about-4" data-export-id="about-4" data-category="about" class="about-4 content-section content-section-spacing-large"><div class="gridContainer"> <div class="row middle-sm text-center"><div class="col-sm-5 space-bottom-xs " data-type="column"> <h5>LOREM IPSUM DOLOR</h5> <h2>Enjoy the best <br/> <span style="font-family:Playfair Display,sans-serif;font-weight:700;font-style:italic;" href="#">design and functions</span> combined together</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class="button big color1" href="#">GET STARTED NOW</a></div> <div class="col-sm-7 flexbox center-xs middle-xs image-group-2-img padding-top-bottom"> <img class="img-1 rounded mdc-elevation--z10" data-size="250x200" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/apple-1838564.jpg"/> <img class="img-2 rounded mdc-elevation--z10" data-size="220x170" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/computer-2569652.jpg"/></div> </div></div> </div><div id="features-2"  style="background-color:#ffffff"  data-label="Features" data-id="features-10-materialis" data-export-id="features-10-materialis" data-category="features" class="features-10m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row"><div class="section-title-col" data-type="column"> <h2>The Main Features</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row "> <div class="col-md-10 col-md-offset-1 "> <div class="row space-top spaced-cols content-center-sm" data-type="row"> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Popular Uses Of The Internet</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>How To Meet That Special</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div></div> </div></div> </div></div><div id="content-24"  style="background-color:#f5fafd"  data-label="Content" data-id="content-7-materialis" data-export-id="content-7-materialis" data-category="content" class="content-7m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row middle-sm"><div class="col-md-6 col-xs-12 col-sm-6 col-padding-small-xs"> <img class="mdc-elevation--z13 img-rounded" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-6.jpg"></div> <div class="col-md-5 col-md-offset-1 col-xs-12 col-sm-6 content-left-sm col-padding-small-xs" data-type="column"><h6 class="upper">Our story</h6> <h3 class="space-bottom">How To Meet That Special Someone</h3> <p class="space-top">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a href="#" class="button read-more link color1 space-top negative-margin">Read more about us <i class="mdi mdi-arrow-right-thick"></i></a></div> </div></div> </div><div id="content-25"  style="background-color:#ffffff"  data-label="Content" data-id="content-8-materialis" data-export-id="content-8-materialis" data-category="content" class="content-8m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row middle-sm"><div class="col-md-5 col-xs-12 col-sm-6 space-bottom-xs" data-type="column"> <h6 class="upper">Our philosophy</h6> <h3>Protective Preventative Maintenance</h3> <p class="space-top">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a href="#" class="button read-more link color1 space-top negative-margin">Read more <i class="mdi mdi-arrow-right-thick"></i></a> </div> <div class="col-md-6 col-md-offset-1 col-xs-12 col-sm-6"> <img class="mdc-elevation--z9 rounded" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.jpg"></div> </div></div> </div><div id="portfolio-2"  style="background-color:#f5fafd"  data-label="Portfolio" data-id="portfolio-1-materialis" data-export-id="portfolio-1-materialis" data-category="portfolio" class="portfolio-1-materialis content-section"><div> <div class="row text-center" data-type="row" data-fixed="true"><div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"> <div class="contentswap-effect " data-hover-fx="portfolio-1"><div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-1.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-2.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-3.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-5.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-7.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-6.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-1.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> </div></div> </div><div id="testimonials-2"  style="background-color:#ffffff"  data-label="Testimonials" data-id="testimonials-1-materialis" data-export-id="testimonials-1-materialis" data-category="testimonials" class="testimonials-1m content-section content-section-spacing"><div class="gridContainer"> <div class="row space-bottom-small"><div data-type="column" class="section-title-col"> <h2>Testimonials</h2> <p class="lead">Don\'t take our word for it - here\'s what our clients say:</p></div> </div> <div class="row spaced-cols content-left-sm" data-type="row"> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud..</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-8.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">John Doe</h6> <p class="small font-300">Company Name</p></div> </div></div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-1.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">Lucy Pratt</h6> <p class="small font-300">Company name</p></div> </div></div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-7.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">John Doe</h6> <p class="small font-300">Company name</p></div> </div></div> </div></div> </div></div><div id="cta-1"  style="background-color:#f5fafd"  data-label="Cta" data-id="cta-1-materialis" data-export-id="cta-1-materialis" data-category="cta" class="content-relative content-section content-section-spacing-large cta-1-materialis section-title-col-white-text" id="cta-1" data-parallax-depth="20" data-ovid="1"><div class="gridContainer"> <div class="row text-center col-sm-padding-medium"><div class="col-md-6 col-md-offset-3 col-xs-10 col-xs-offset-1 card mdc-elevation--z3 box-padding-lr-small"> <div data-type="column" class=""><h2 class="">Download now</h2> <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a class="button big color1 mdc-elevation--z1 mdc-ripple-upgraded">START NOW</a></div> </div></div> </div></div><div id="team-7"  style="background-color:#ffffff"  data-label="Team" data-id="team-8-materialis" data-export-id="team-8-materialis" data-category="team" class="team-8m content-section content-section-spacing-large"><div class="gridContainer"> <div class="row space-bottom"><div class="section-title-col" data-type="column"> <h2>Our Team</h2> <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row spaced-cols content-left-sm" data-type="row"> <div class="col-sm-12 col-md-6"> <div class="row"> <div class="col-sm-6 col-md-6"> <div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-4.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-2.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-6.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-8.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> </div></div> </div><div id="latest-news-1"  style="background-color:#f5fafd"  data-label="Latest-news" data-id="latest-news-1-materialis" data-export-id="latest-news-1-materialis" data-category="latest_news" class="latest-news-1-materialis content-section content-section-spacing-large"><div class="gridContainer"> <div class="row"><div data-type="column" class="section-title-col"> <h2>Latest News</h2> <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p></div> </div> <div class="row content-left-sm"> <div data-type="row" data-dynamic-columns="handled" data-content-shortcode="materialis_latest_news">[materialis_latest_news]</div></div> <div class="row"><div class="text-center"> <a class="button big color1 mdc-elevation--z3" data-attr-shortcode="href:materialis_blog_link" href="[materialis_blog_link]">VISIT OUR BLOG</a></div> </div></div></div><div id="contact-1"  data-label="Contact" data-id="contact-1" data-export-id="contact-1" data-category="contact" class="contact-1 content-section content-section-spacing-large content-relative white-text" data-parallax-depth="20"><div class="gridContainer"> <div class="row text-center"><div class="section-title-col" data-type="column"> <h2>Contact us</h2> <p class="lead">With the Internet spreading linke wildfire and reaching every part of our daily life, more and more traffic is directed to websites in search for information.</p></div> </div> <div class="row text-center"> <div class="col-xs-12 col-sm-8 col-sm-offset-2 contact-form-wrapper inline-info"> <div class="card mdc-elevation--z3 col-padding-top"> <div class="dark-text" data-content-shortcode="materialis_contact_form" data-editable="true">[materialis_contact_form]</div></div> </div></div> </div></div>', 'Front Page', '', 'trash', 'closed', 'closed', '', 'materialis__trashed', '', '', '2019-01-08 11:43:16', '2019-01-08 10:43:16', '', 0, 'http://cohabit.utila.io/fablab/materialis/', 0, 'page', '', 0),
(90, 2, '2019-01-08 11:33:26', '2019-01-08 10:33:26', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-01-08 11:33:26', '2019-01-08 10:33:26', '', 0, 'http://cohabit.utila.io/fablab/blog/', 0, 'page', '', 0) ;
INSERT INTO `wpc_2_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(91, 2, '2019-01-08 11:35:09', '0000-00-00 00:00:00', '{"materialis::page_content":{"value":"%7B%2289%22%3A%22%3Cdiv%20%20id%3D%5C%22overlappable-8%5C%22%20style%3D%5C%22background-color%3A%20%23f5fafd%3B%5C%22%20data-label%3D%5C%22Overlappable%5C%22%20data-id%3D%5C%22overlappable-5-materialis%5C%22%20data-export-id%3D%5C%22overlappable-5-materialis%5C%22%20data-category%3D%5C%22overlappable%5C%22%20class%3D%5C%22overlappable-5-materialis%20content-section%20content-section-spacing-large%5C%22%20data-overlap%3D%5C%22true%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20data-type%3D%5C%22row%5C%22%20class%3D%5C%22row%20spaced-cols%20%5C%22%3E%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-4%20%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20row-card%5C%22%3E%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-fit%20icon-col%5C%22%3E%3Ci%20%20class%3D%5C%22color1%20icon%20mdi%20mdi-responsive%20reverse%20round%20big%5C%22%3E%3C%2Fi%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm%5C%22%20data-type%3D%5C%22column%5C%22%3E%3Ch4%20%20class%3D%5C%22color-black%5C%22%3ERESPONSIVE%20DESIGN%3C%2Fh4%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipiscing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-4%20%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20row-card%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-fit%20icon-col%5C%22%3E%20%3Ci%20%20class%3D%5C%22color1%20icon%20mdi%20mdi-vector-square%20reverse%20round%20big%5C%22%3E%3C%2Fi%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm%5C%22%20data-type%3D%5C%22column%5C%22%3E%3Ch4%20%20class%3D%5C%22color-black%5C%22%3ESUPER%20FEATURES%3C%2Fh4%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipiscing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-4%20%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20row-card%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-fit%20icon-col%5C%22%3E%20%3Ci%20%20class%3D%5C%22color1%20icon%20mdi%20mdi-arrange-bring-forward%20reverse%20round%20big%5C%22%3E%3C%2Fi%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm%5C%22%20data-type%3D%5C%22column%5C%22%3E%3Ch4%20%20class%3D%5C%22color-black%5C%22%3EDRAG%20AND%20DROP%3C%2Fh4%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipiscing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22about-6%5C%22%20style%3D%5C%22background-color%3A%20%23f5fafd%3B%5C%22%20data-label%3D%5C%22About%5C%22%20data-id%3D%5C%22about-4%5C%22%20data-export-id%3D%5C%22about-4%5C%22%20data-category%3D%5C%22about%5C%22%20class%3D%5C%22about-4%20content-section%20content-section-spacing-large%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20middle-sm%20text-center%5C%22%3E%3Cdiv%20%20class%3D%5C%22col-sm-5%20space-bottom-xs%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ch5%20%20class%3D%5C%22%5C%22%3ELOREM%20IPSUM%20DOLOR%3C%2Fh5%3E%20%3Ch2%20%20class%3D%5C%22%5C%22%3EEnjoy%20the%20best%20%3Cbr%20%3E%20%3Cspan%20%20style%3D%5C%22font-family%3A%20Playfair%20Display%2Csans-serif%3B%20font-weight%3A%20700%3B%20font-style%3A%20italic%3B%5C%22%20href%3D%5C%22%23%5C%22%3Edesign%20and%20functions%3C%2Fspan%3E%20combined%20together%3C%2Fh2%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud%20exercitation%20ullamco%20laboris%20nisi%20ut%20aliquip%20ex%20ea%20commodo%20consequat.%3C%2Fp%3E%20%3Ca%20%20class%3D%5C%22button%20big%20color1%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%20136.27999877929688px%3B%20--mdc-ripple-fg-scale%3A%201.7865001443427864%3B%5C%22%3EGET%20STARTED%20NOW%3C%2Fa%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-7%20flexbox%20center-xs%20middle-xs%20image-group-2-img%20padding-top-bottom%5C%22%3E%20%3Cimg%20%20class%3D%5C%22img-1%20rounded%20mdc-elevation--z10%5C%22%20data-size%3D%5C%22250x200%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fapple-1838564.jpg%5C%22%3E%20%3Cimg%20%20class%3D%5C%22img-2%20rounded%20mdc-elevation--z10%5C%22%20data-size%3D%5C%22220x170%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fcomputer-2569652.jpg%5C%22%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22features-2%5C%22%20style%3D%5C%22background-color%3A%20%23ffffff%3B%5C%22%20data-label%3D%5C%22Features%5C%22%20data-id%3D%5C%22features-10-materialis%5C%22%20data-export-id%3D%5C%22features-10-materialis%5C%22%20data-category%3D%5C%22features%5C%22%20class%3D%5C%22features-10m%20content-section-spacing-large%20content-section%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%3Cdiv%20%20class%3D%5C%22section-title-col%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ch2%20%20class%3D%5C%22%5C%22%3EThe%20Main%20Features%3C%2Fh2%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-md-10%20col-md-offset-1%20%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20space-top%20spaced-cols%20content-center-sm%5C%22%20data-type%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-sm-offset-0%20col-xs-10%20col-xs-offset-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20no-radius%20mdc-elevation--z1%20y-move%20bg-color-white%20padding-24%20bordered%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ci%20%20class%3D%5C%22mdi%20icon%20mdi-database%20big%20round%20reverse%20color1%5C%22%3E%3C%2Fi%3E%20%3Ch6%20%20class%3D%5C%22%5C%22%3EPopular%20Uses%20Of%20The%20Internet%3C%2Fh6%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-sm-offset-0%20col-xs-10%20col-xs-offset-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20no-radius%20mdc-elevation--z1%20y-move%20bg-color-white%20padding-24%20bordered%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ci%20%20class%3D%5C%22mdi%20icon%20mdi-database%20big%20round%20reverse%20color1%5C%22%3E%3C%2Fi%3E%20%3Ch6%20%20class%3D%5C%22%5C%22%3EHow%20To%20Meet%20That%20Special%3C%2Fh6%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-sm-offset-0%20col-xs-10%20col-xs-offset-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20no-radius%20mdc-elevation--z1%20y-move%20bg-color-white%20padding-24%20bordered%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ci%20%20class%3D%5C%22mdi%20icon%20mdi-database%20big%20round%20reverse%20color1%5C%22%3E%3C%2Fi%3E%20%3Ch6%20%20class%3D%5C%22%5C%22%3EMake%20Myspace%20Your%20Best%3C%2Fh6%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-sm-offset-0%20col-xs-10%20col-xs-offset-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20no-radius%20mdc-elevation--z1%20y-move%20bg-color-white%20padding-24%20bordered%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ci%20%20class%3D%5C%22mdi%20icon%20mdi-database%20big%20round%20reverse%20color1%5C%22%3E%3C%2Fi%3E%20%3Ch6%20%20class%3D%5C%22%5C%22%3EMake%20Myspace%20Your%20Best%3C%2Fh6%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-sm-offset-0%20col-xs-10%20col-xs-offset-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20no-radius%20mdc-elevation--z1%20y-move%20bg-color-white%20padding-24%20bordered%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ci%20%20class%3D%5C%22mdi%20icon%20mdi-database%20big%20round%20reverse%20color1%5C%22%3E%3C%2Fi%3E%20%3Ch6%20%20class%3D%5C%22%5C%22%3EMake%20Myspace%20Your%20Best%3C%2Fh6%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-sm-offset-0%20col-xs-10%20col-xs-offset-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20no-radius%20mdc-elevation--z1%20y-move%20bg-color-white%20padding-24%20bordered%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ci%20%20class%3D%5C%22mdi%20icon%20mdi-database%20big%20round%20reverse%20color1%5C%22%3E%3C%2Fi%3E%20%3Ch6%20%20class%3D%5C%22%5C%22%3EMake%20Myspace%20Your%20Best%3C%2Fh6%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22content-24%5C%22%20style%3D%5C%22background-color%3A%20%23f5fafd%3B%5C%22%20data-label%3D%5C%22Content%5C%22%20data-id%3D%5C%22content-7-materialis%5C%22%20data-export-id%3D%5C%22content-7-materialis%5C%22%20data-category%3D%5C%22content%5C%22%20class%3D%5C%22content-7m%20content-section-spacing-large%20content-section%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20middle-sm%5C%22%3E%3Cdiv%20%20class%3D%5C%22col-md-6%20col-xs-12%20col-sm-6%20col-padding-small-xs%5C%22%3E%20%3Cimg%20%20class%3D%5C%22mdc-elevation--z13%20img-rounded%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-6.jpg%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-5%20col-md-offset-1%20col-xs-12%20col-sm-6%20content-left-sm%20col-padding-small-xs%5C%22%20data-type%3D%5C%22column%5C%22%3E%3Ch6%20%20class%3D%5C%22upper%5C%22%3EOur%20story%3C%2Fh6%3E%20%3Ch3%20%20class%3D%5C%22space-bottom%5C%22%3EHow%20To%20Meet%20That%20Special%20Someone%3C%2Fh3%3E%20%3Cp%20%20class%3D%5C%22space-top%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud.%3C%2Fp%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%20class%3D%5C%22button%20read-more%20link%20color1%20space-top%20negative-margin%20mdc-ripple-upgraded%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%20105.67000122070313px%3B%20--mdc-ripple-fg-scale%3A%201.8037474580831963%3B%5C%22%3ERead%20more%20about%20us%20%3Ci%20%20class%3D%5C%22mdi%20mdi-arrow-right-thick%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22content-25%5C%22%20style%3D%5C%22background-color%3A%20%23ffffff%3B%5C%22%20data-label%3D%5C%22Content%5C%22%20data-id%3D%5C%22content-8-materialis%5C%22%20data-export-id%3D%5C%22content-8-materialis%5C%22%20data-category%3D%5C%22content%5C%22%20class%3D%5C%22content-8m%20content-section-spacing-large%20content-section%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20middle-sm%5C%22%3E%3Cdiv%20%20class%3D%5C%22col-md-5%20col-xs-12%20col-sm-6%20space-bottom-xs%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ch6%20%20class%3D%5C%22upper%5C%22%3EOur%20philosophy%3C%2Fh6%3E%20%3Ch3%20%20class%3D%5C%22%5C%22%3EProtective%20Preventative%20Maintenance%3C%2Fh3%3E%20%3Cp%20%20class%3D%5C%22space-top%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud.%3C%2Fp%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%20class%3D%5C%22button%20read-more%20link%20color1%20space-top%20negative-margin%20mdc-ripple-upgraded%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2067.91000061035156px%3B%20--mdc-ripple-fg-scale%3A%201.914940423157182%3B%5C%22%3ERead%20more%20%3Ci%20%20class%3D%5C%22mdi%20mdi-arrow-right-thick%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-6%20col-md-offset-1%20col-xs-12%20col-sm-6%5C%22%3E%20%3Cimg%20%20class%3D%5C%22mdc-elevation--z9%20rounded%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-4.jpg%5C%22%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22portfolio-2%5C%22%20style%3D%5C%22background-color%3A%20%23f5fafd%3B%5C%22%20data-label%3D%5C%22Portfolio%5C%22%20data-id%3D%5C%22portfolio-1-materialis%5C%22%20data-export-id%3D%5C%22portfolio-1-materialis%5C%22%20data-category%3D%5C%22portfolio%5C%22%20class%3D%5C%22portfolio-1-materialis%20content-section%5C%22%3E%3Cdiv%20%3E%20%3Cdiv%20%20class%3D%5C%22row%20text-center%5C%22%20data-type%3D%5C%22row%5C%22%20data-fixed%3D%5C%22true%5C%22%3E%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-1.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-2.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-3.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-4.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-5.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-7.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-6.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-1.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-md-4%20col-sm-6%20col-xs-12%20no-gutter-col%5C%22%3E%3Cdiv%20%20class%3D%5C%22contentswap-effect%5C%22%20data-hover-fx%3D%5C%22portfolio-1%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22initial-image%5C%22%3E%20%3Cimg%20%20data-size%3D%5C%22600x354%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fimage-4.png%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22overlay%20bg-color-black%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22swap-inner%20col-xs-12%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20full-height-row%20middle-xs%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20text-center%20white-text%5C%22%3E%20%3Ch4%20%20class%3D%5C%22font-500%5C%22%3EProject%20Name%3C%2Fh4%3E%20%3Ca%20%20class%3D%5C%22button%20color-white%20mdc-ripple-upgraded%5C%22%20href%3D%5C%22%23%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%2074.62000122070312px%3B%20--mdc-ripple-fg-scale%3A%201.8847626341349457%3B%5C%22%3EView%20project%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22testimonials-2%5C%22%20style%3D%5C%22background-color%3A%20%23ffffff%3B%5C%22%20data-label%3D%5C%22Testimonials%5C%22%20data-id%3D%5C%22testimonials-1-materialis%5C%22%20data-export-id%3D%5C%22testimonials-1-materialis%5C%22%20data-category%3D%5C%22testimonials%5C%22%20class%3D%5C%22testimonials-1m%20content-section%20content-section-spacing%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20space-bottom-small%5C%22%3E%3Cdiv%20%20data-type%3D%5C%22column%5C%22%20class%3D%5C%22section-title-col%5C%22%3E%20%3Ch2%20%20class%3D%5C%22%5C%22%3ETestimonials%3C%2Fh2%3E%20%3Cp%20%20class%3D%5C%22lead%5C%22%3EDon%E2%80%99t%20take%20our%20word%20for%20it%20%E2%80%93%20here%E2%80%99s%20what%20our%20clients%20say%3A%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20spaced-cols%20content-left-sm%5C%22%20data-type%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20col-sm-4%20col-md-4%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20small-padding%20no-border%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20space-bottom-small%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22testimonial-body%20col-xs-12%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud..%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20middle-xs%20f-align%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-fit%20col-sm-12%20col-md-fit%20space-bottom-image%5C%22%3E%20%3Cimg%20%20data-fixed-elevation%3D%5C%22true%5C%22%20class%3D%5C%22round%20image-70%20mdc-elevation--z3%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fteam-8.jpg%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-fit%20col-sm-12%20col-md-fit%20info%20no-padding-left%5C%22%20data-type%3D%5C%22column%5C%22%3E%3Ch6%20%20class%3D%5C%22font-700%5C%22%3EJohn%20Doe%3C%2Fh6%3E%20%3Cp%20%20class%3D%5C%22small%20font-300%5C%22%3ECompany%20Name%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20col-sm-4%20col-md-4%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20small-padding%20no-border%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20space-bottom-small%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22testimonial-body%20col-xs-12%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20middle-xs%20f-align%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-fit%20col-sm-12%20col-md-fit%20space-bottom-image%5C%22%3E%20%3Cimg%20%20data-fixed-elevation%3D%5C%22true%5C%22%20class%3D%5C%22round%20image-70%20mdc-elevation--z3%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fteam-1.jpg%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-fit%20col-sm-12%20col-md-fit%20info%20no-padding-left%5C%22%20data-type%3D%5C%22column%5C%22%3E%3Ch6%20%20class%3D%5C%22font-700%5C%22%3ELucy%20Pratt%3C%2Fh6%3E%20%3Cp%20%20class%3D%5C%22small%20font-300%5C%22%3ECompany%20name%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20col-sm-4%20col-md-4%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20small-padding%20no-border%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20space-bottom-small%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22testimonial-body%20col-xs-12%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20middle-xs%20f-align%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-fit%20col-sm-12%20col-md-fit%20space-bottom-image%5C%22%3E%20%3Cimg%20%20data-fixed-elevation%3D%5C%22true%5C%22%20class%3D%5C%22round%20image-70%20mdc-elevation--z3%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fteam-7.jpg%5C%22%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-fit%20col-sm-12%20col-md-fit%20info%20no-padding-left%5C%22%20data-type%3D%5C%22column%5C%22%3E%3Ch6%20%20class%3D%5C%22font-700%5C%22%3EJohn%20Doe%3C%2Fh6%3E%20%3Cp%20%20class%3D%5C%22small%20font-300%5C%22%3ECompany%20name%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22cta-1%5C%22%20style%3D%5C%22background-color%3A%20%23f5fafd%3B%5C%22%20data-label%3D%5C%22Cta%5C%22%20data-id%3D%5C%22cta-1-materialis%5C%22%20data-export-id%3D%5C%22cta-1-materialis%5C%22%20data-category%3D%5C%22cta%5C%22%20class%3D%5C%22content-relative%20content-section%20content-section-spacing-large%20cta-1-materialis%20section-title-col-white-text%5C%22%20data-parallax-depth%3D%5C%2220%5C%22%20data-ovid%3D%5C%221%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20text-center%20col-sm-padding-medium%5C%22%3E%3Cdiv%20%20class%3D%5C%22col-md-6%20col-md-offset-3%20col-xs-10%20col-xs-offset-1%20card%20mdc-elevation--z3%20box-padding-lr-small%5C%22%3E%20%3Cdiv%20%20data-type%3D%5C%22column%5C%22%20class%3D%5C%22%5C%22%3E%3Ch2%20%20class%3D%5C%22%5C%22%3EDownload%20now%3C%2Fh2%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud.%3C%2Fp%3E%20%3Ca%20%20class%3D%5C%22button%20big%20color1%20mdc-elevation--z1%20mdc-ripple-upgraded%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%20102.90999755859374px%3B%20--mdc-ripple-fg-scale%3A%201.8444901556168725%3B%5C%22%3ESTART%20NOW%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22team-7%5C%22%20style%3D%5C%22background-color%3A%20%23ffffff%3B%5C%22%20data-label%3D%5C%22Team%5C%22%20data-id%3D%5C%22team-8-materialis%5C%22%20data-export-id%3D%5C%22team-8-materialis%5C%22%20data-category%3D%5C%22team%5C%22%20class%3D%5C%22team-8m%20content-section%20content-section-spacing-large%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20space-bottom%5C%22%3E%3Cdiv%20%20class%3D%5C%22section-title-col%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ch2%20%20class%3D%5C%22%5C%22%3EOur%20Team%3C%2Fh2%3E%20%3Cp%20%20class%3D%5C%22lead%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20spaced-cols%20content-left-sm%5C%22%20data-type%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-12%20col-md-6%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20no-radius%20image-holder%5C%22%3E%20%3Cimg%20%20class%3D%5C%22face%20no-margin-bottom%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fteam-4.jpg%5C%22%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%20%3Cdiv%20%20data-type%3D%5C%22column%5C%22%20class%3D%5C%22description-container%20use-section-text-color%5C%22%3E%20%3Ch4%20%20class%3D%5C%22no-margin-bottom%5C%22%3ETeam%20Member%3C%2Fh4%3E%20%3Cp%20%20class%3D%5C%22font-300%5C%22%3EJob%20Title%3C%2Fp%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%3C%2Fp%3E%20%3Cdiv%20%20class%3D%5C%22social-icons-group%20col-no-padding%5C%22%20data-type%3D%5C%22group%5C%22%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-facebook%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-twitter%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-instagram%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-rss%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-12%20col-md-6%5C%22%3E%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20no-radius%20image-holder%5C%22%3E%20%3Cimg%20%20class%3D%5C%22face%20no-margin-bottom%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fteam-2.jpg%5C%22%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%20%3Cdiv%20%20data-type%3D%5C%22column%5C%22%20class%3D%5C%22description-container%20use-section-text-color%5C%22%3E%20%3Ch4%20%20class%3D%5C%22no-margin-bottom%5C%22%3ETeam%20Member%3C%2Fh4%3E%20%3Cp%20%20class%3D%5C%22font-300%5C%22%3EJob%20Title%3C%2Fp%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%3C%2Fp%3E%20%3Cdiv%20%20class%3D%5C%22social-icons-group%20col-no-padding%5C%22%20data-type%3D%5C%22group%5C%22%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-facebook%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-twitter%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-instagram%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-rss%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-12%20col-md-6%5C%22%3E%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20no-radius%20image-holder%5C%22%3E%20%3Cimg%20%20class%3D%5C%22face%20no-margin-bottom%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fteam-6.jpg%5C%22%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%20%3Cdiv%20%20data-type%3D%5C%22column%5C%22%20class%3D%5C%22description-container%20use-section-text-color%5C%22%3E%20%3Ch4%20%20class%3D%5C%22no-margin-bottom%5C%22%3ETeam%20Member%3C%2Fh4%3E%20%3Cp%20%20class%3D%5C%22font-300%5C%22%3EJob%20Title%3C%2Fp%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%3C%2Fp%3E%20%3Cdiv%20%20class%3D%5C%22social-icons-group%20col-no-padding%5C%22%20data-type%3D%5C%22group%5C%22%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-facebook%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-twitter%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-instagram%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-rss%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-12%20col-md-6%5C%22%3E%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20no-radius%20image-holder%5C%22%3E%20%3Cimg%20%20class%3D%5C%22face%20no-margin-bottom%5C%22%20src%3D%5C%22http%3A%2F%2Fcohabit.utila.io\\/fablab%2Fwp-content%2Fplugins%2Fmaterialis-companion%2Ftheme-data%2Fmaterialis%2Fsections%2Fimages%2Fteam-8.jpg%5C%22%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22col-sm-6%20col-md-6%5C%22%3E%20%3Cdiv%20%20data-type%3D%5C%22column%5C%22%20class%3D%5C%22description-container%20use-section-text-color%5C%22%3E%20%3Ch4%20%20class%3D%5C%22no-margin-bottom%5C%22%3ETeam%20Member%3C%2Fh4%3E%20%3Cp%20%20class%3D%5C%22font-300%5C%22%3EJob%20Title%3C%2Fp%3E%20%3Cp%20%20class%3D%5C%22%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%3C%2Fp%3E%20%3Cdiv%20%20class%3D%5C%22social-icons-group%20col-no-padding%5C%22%20data-type%3D%5C%22group%5C%22%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-facebook%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-twitter%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-instagram%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%20%3Ca%20%20href%3D%5C%22%23%5C%22%3E%3Ci%20%20class%3D%5C%22mdi%20mdi-rss%20social-icon%5C%22%3E%3C%2Fi%3E%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22latest-news-1%5C%22%20style%3D%5C%22background-color%3A%20%23f5fafd%3B%5C%22%20data-label%3D%5C%22Latest-news%5C%22%20data-id%3D%5C%22latest-news-1-materialis%5C%22%20data-export-id%3D%5C%22latest-news-1-materialis%5C%22%20data-category%3D%5C%22latest_news%5C%22%20class%3D%5C%22latest-news-1-materialis%20content-section%20content-section-spacing-large%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%3Cdiv%20%20data-type%3D%5C%22column%5C%22%20class%3D%5C%22section-title-col%5C%22%3E%20%3Ch2%20%20class%3D%5C%22%5C%22%3ELatest%20News%3C%2Fh2%3E%20%3Cp%20%20class%3D%5C%22lead%5C%22%3ELorem%20ipsum%20dolor%20sit%20amet%2C%20consectetur%20adipisicing%20elit%2C%20sed%20do%20eiusmod%20tempor%20incididunt%20ut%20labore%20et%20dolore%20magna%20aliqua.%20Ut%20enim%20ad%20minim%20veniam%2C%20quis%20nostrud%20exercitation%20ullamco%20laboris%20nisi%20ut%20aliquip%20ex%20ea%20commodo%20consequat.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20content-left-sm%5C%22%3E%20%3Cdiv%20%20data-type%3D%5C%22row%5C%22%20data-dynamic-columns%3D%5C%22handled%5C%22%20data-content-shortcode%3D%5C%22materialis_latest_news%5C%22%3E%5Bmaterialis_latest_news%5D%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%5C%22%3E%3Cdiv%20%20class%3D%5C%22text-center%5C%22%3E%20%3Ca%20%20class%3D%5C%22button%20big%20color1%20mdc-elevation--z3%20mdc-ripple-upgraded%5C%22%20data-attr-shortcode%3D%5C%22href%3Amaterialis_blog_link%5C%22%20href%3D%5C%22%5Bmaterialis_blog_link%5D%5C%22%20target%3D%5C%22_self%5C%22%20style%3D%5C%22--mdc-ripple-fg-size%3A%20121.50999755859374px%3B%20--mdc-ripple-fg-scale%3A%201.807196632702034%3B%5C%22%3EVISIT%20OUR%20BLOG%3C%2Fa%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%3C%2Fdiv%3E%3Cdiv%20%20id%3D%5C%22contact-1%5C%22%20data-label%3D%5C%22Contact%5C%22%20data-id%3D%5C%22contact-1%5C%22%20data-export-id%3D%5C%22contact-1%5C%22%20data-category%3D%5C%22contact%5C%22%20class%3D%5C%22contact-1%20content-section%20content-section-spacing-large%20content-relative%20white-text%5C%22%20data-parallax-depth%3D%5C%2220%5C%22%3E%3Cdiv%20%20class%3D%5C%22gridContainer%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22row%20text-center%5C%22%3E%3Cdiv%20%20class%3D%5C%22section-title-col%5C%22%20data-type%3D%5C%22column%5C%22%3E%20%3Ch2%20%20class%3D%5C%22%5C%22%3EContact%20us%3C%2Fh2%3E%20%3Cp%20%20class%3D%5C%22lead%5C%22%3EWith%20the%20Internet%20spreading%20linke%20wildfire%20and%20reaching%20every%20part%20of%20our%20daily%20life%2C%20more%20and%20more%20traffic%20is%20directed%20to%20websites%20in%20search%20for%20information.%3C%2Fp%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%20%3Cdiv%20%20class%3D%5C%22row%20text-center%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22col-xs-12%20col-sm-8%20col-sm-offset-2%20contact-form-wrapper%20inline-info%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22card%20mdc-elevation--z3%20col-padding-top%5C%22%3E%20%3Cdiv%20%20class%3D%5C%22dark-text%5C%22%20data-content-shortcode%3D%5C%22materialis_contact_form%5C%22%20data-editable%3D%5C%22true%5C%22%3E%5Bmaterialis_contact_form%5D%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%20%3C%2Fdiv%3E%3C%2Fdiv%3E%22%7D","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 10:34:10"},"materialis::header_content_buttons":{"value":"%5B%7B%22label%22:%22Bouton%20d%E2%80%99action%201%22,%22url%22:%22#%22,%22target%22:%22_self%22,%22class%22:%22button%20btn-default%20big%20color1%20mdc-elevation--z3%20mdc-ripple-upgraded%22%7D,%7B%22label%22:%22Bouton%20d%E2%80%99action%202%22,%22url%22:%22#%22,%22target%22:%22_self%22,%22class%22:%22button%20btn-default%20big%20white%20outline%20mdc-elevation--z3%20mdc-ripple-upgraded%22%7D%5D","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 10:34:10"},"CP_AUTO_SETTING[header_title]":{"value":"FabLAb","type":"cp_auto_setting","user_id":2,"date_modified_gmt":"2019-01-08 10:34:44"},"CP_AUTO_SETTING[header_subtitle]":{"value":"Vous pouvez configurer ce sous-titre depuis la personnalisation.","type":"cp_auto_setting","user_id":2,"date_modified_gmt":"2019-01-08 10:34:10"},"blogname":{"value":"Coh@bit","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 10:34:44"},"materialis::logo_max_height":{"value":"70","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 10:35:09"}}', '', '', 'auto-draft', 'closed', 'closed', '', '2fd69598-6727-451e-ae7d-db6ff2b1a6e0', '', '', '2019-01-08 11:35:09', '2019-01-08 10:35:09', '', 0, 'http://cohabit.utila.io/fablab/?p=91', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wpc_2_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(92, 2, '2019-01-08 11:43:16', '2019-01-08 10:43:16', '<div id="overlappable-8"  style="background-color:#f5fafd"  data-label="Overlappable" data-id="overlappable-5-materialis" data-export-id="overlappable-5-materialis" data-category="overlappable" class="overlappable-5-materialis content-section content-section-spacing-large" data-overlap="true"><div class="gridContainer"> <div data-type="row" class="row spaced-cols "><div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"><div class="row"> <div class="col-sm-fit icon-col"><i class="color1 icon mdi mdi-responsive reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">RESPONSIVE DESIGN</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div> <div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"> <div class="row"> <div class="col-sm-fit icon-col"> <i class="color1 icon mdi mdi-vector-square reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">SUPER FEATURES</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div> <div class="col-sm-6 col-md-4 "> <div class="card mdc-elevation--z3 row-card"> <div class="row"> <div class="col-sm-fit icon-col"> <i class="color1 icon mdi mdi-arrange-bring-forward reverse round big"></i></div> <div class="col-sm" data-type="column"><h4 class="color-black">DRAG AND DROP</h4> <p class="">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div> </div></div> </div></div> </div></div><div id="about-6"  style="background-color:#f5fafd"  data-label="About" data-id="about-4" data-export-id="about-4" data-category="about" class="about-4 content-section content-section-spacing-large"><div class="gridContainer"> <div class="row middle-sm text-center"><div class="col-sm-5 space-bottom-xs " data-type="column"> <h5>LOREM IPSUM DOLOR</h5> <h2>Enjoy the best <br/> <span style="font-family:Playfair Display,sans-serif;font-weight:700;font-style:italic;" href="#">design and functions</span> combined together</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p> <a class="button big color1" href="#">GET STARTED NOW</a></div> <div class="col-sm-7 flexbox center-xs middle-xs image-group-2-img padding-top-bottom"> <img class="img-1 rounded mdc-elevation--z10" data-size="250x200" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/apple-1838564.jpg"/> <img class="img-2 rounded mdc-elevation--z10" data-size="220x170" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/computer-2569652.jpg"/></div> </div></div> </div><div id="features-2"  style="background-color:#ffffff"  data-label="Features" data-id="features-10-materialis" data-export-id="features-10-materialis" data-category="features" class="features-10m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row"><div class="section-title-col" data-type="column"> <h2>The Main Features</h2> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row "> <div class="col-md-10 col-md-offset-1 "> <div class="row space-top spaced-cols content-center-sm" data-type="row"> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Popular Uses Of The Internet</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>How To Meet That Special</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div> <div class="col-md-4 col-sm-6 col-sm-offset-0 col-xs-10 col-xs-offset-1"> <div class="card no-radius mdc-elevation--z1 y-move bg-color-white padding-24 bordered" data-type="column"> <i class="mdi icon mdi-database big round reverse color1"></i> <h6>Make Myspace Your Best</h6></div> </div></div> </div></div> </div></div><div id="content-24"  style="background-color:#f5fafd"  data-label="Content" data-id="content-7-materialis" data-export-id="content-7-materialis" data-category="content" class="content-7m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row middle-sm"><div class="col-md-6 col-xs-12 col-sm-6 col-padding-small-xs"> <img class="mdc-elevation--z13 img-rounded" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-6.jpg"></div> <div class="col-md-5 col-md-offset-1 col-xs-12 col-sm-6 content-left-sm col-padding-small-xs" data-type="column"><h6 class="upper">Our story</h6> <h3 class="space-bottom">How To Meet That Special Someone</h3> <p class="space-top">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a href="#" class="button read-more link color1 space-top negative-margin">Read more about us <i class="mdi mdi-arrow-right-thick"></i></a></div> </div></div> </div><div id="content-25"  style="background-color:#ffffff"  data-label="Content" data-id="content-8-materialis" data-export-id="content-8-materialis" data-category="content" class="content-8m content-section-spacing-large content-section"><div class="gridContainer"> <div class="row middle-sm"><div class="col-md-5 col-xs-12 col-sm-6 space-bottom-xs" data-type="column"> <h6 class="upper">Our philosophy</h6> <h3>Protective Preventative Maintenance</h3> <p class="space-top">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a href="#" class="button read-more link color1 space-top negative-margin">Read more <i class="mdi mdi-arrow-right-thick"></i></a> </div> <div class="col-md-6 col-md-offset-1 col-xs-12 col-sm-6"> <img class="mdc-elevation--z9 rounded" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.jpg"></div> </div></div> </div><div id="portfolio-2"  style="background-color:#f5fafd"  data-label="Portfolio" data-id="portfolio-1-materialis" data-export-id="portfolio-1-materialis" data-category="portfolio" class="portfolio-1-materialis content-section"><div> <div class="row text-center" data-type="row" data-fixed="true"><div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"> <div class="contentswap-effect " data-hover-fx="portfolio-1"><div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-1.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-2.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-3.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-5.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-7.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-6.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-1.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> <div class="col-md-4 col-sm-6 col-xs-12 no-gutter-col"><div class="contentswap-effect " data-hover-fx="portfolio-1"> <div class="initial-image"> <img data-size="600x354" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/image-4.png"></div> <div class="overlay bg-color-black"></div> <div class="swap-inner col-xs-12"> <div class="row full-height-row middle-xs"> <div class="col-xs-12 text-center white-text"> <h4 class="font-500">Project Name</h4> <a class="button color-white" href="#">View project</a></div> </div></div> </div></div> </div></div> </div><div id="testimonials-2"  style="background-color:#ffffff"  data-label="Testimonials" data-id="testimonials-1-materialis" data-export-id="testimonials-1-materialis" data-category="testimonials" class="testimonials-1m content-section content-section-spacing"><div class="gridContainer"> <div class="row space-bottom-small"><div data-type="column" class="section-title-col"> <h2>Testimonials</h2> <p class="lead">Don\'t take our word for it - here\'s what our clients say:</p></div> </div> <div class="row spaced-cols content-left-sm" data-type="row"> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud..</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-8.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">John Doe</h6> <p class="small font-300">Company Name</p></div> </div></div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-1.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">Lucy Pratt</h6> <p class="small font-300">Company name</p></div> </div></div> </div> <div class="col-xs-12 col-sm-4 col-md-4"> <div class="card mdc-elevation--z3 small-padding no-border"> <div class="row space-bottom-small"> <div class="testimonial-body col-xs-12" data-type="column"> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row middle-xs f-align"> <div class="col-xs-fit col-sm-12 col-md-fit space-bottom-image"> <img data-fixed-elevation="true" class="round image-70 mdc-elevation--z3" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-7.jpg"></div> <div class="col-xs-fit col-sm-12 col-md-fit info no-padding-left" data-type="column"><h6 class="font-700">John Doe</h6> <p class="small font-300">Company name</p></div> </div></div> </div></div> </div></div><div id="cta-1"  style="background-color:#f5fafd"  data-label="Cta" data-id="cta-1-materialis" data-export-id="cta-1-materialis" data-category="cta" class="content-relative content-section content-section-spacing-large cta-1-materialis section-title-col-white-text" id="cta-1" data-parallax-depth="20" data-ovid="1"><div class="gridContainer"> <div class="row text-center col-sm-padding-medium"><div class="col-md-6 col-md-offset-3 col-xs-10 col-xs-offset-1 card mdc-elevation--z3 box-padding-lr-small"> <div data-type="column" class=""><h2 class="">Download now</h2> <p class="">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p> <a class="button big color1 mdc-elevation--z1 mdc-ripple-upgraded">START NOW</a></div> </div></div> </div></div><div id="team-7"  style="background-color:#ffffff"  data-label="Team" data-id="team-8-materialis" data-export-id="team-8-materialis" data-category="team" class="team-8m content-section content-section-spacing-large"><div class="gridContainer"> <div class="row space-bottom"><div class="section-title-col" data-type="column"> <h2>Our Team</h2> <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.</p></div> </div> <div class="row spaced-cols content-left-sm" data-type="row"> <div class="col-sm-12 col-md-6"> <div class="row"> <div class="col-sm-6 col-md-6"> <div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-4.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-2.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-6.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> <div class="col-sm-12 col-md-6"><div class="row"> <div class="col-sm-6 col-md-6"><div class="card mdc-elevation--z3 no-radius image-holder"> <img class="face no-margin-bottom" src="http://cohabit.utila.io/fablab/wp-content/plugins/materialis-companion/theme-data/materialis/sections/images/team-8.jpg"></div> </div> <div class="col-sm-6 col-md-6"> <div data-type="column" class="description-container use-section-text-color"> <h4 class="no-margin-bottom">Team Member</h4> <p class="font-300">Job Title</p> <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p> <div class="social-icons-group col-no-padding" data-type="group"> <a href="#"><i class="mdi mdi-facebook social-icon "></i></a> <a href="#"><i class="mdi mdi-twitter social-icon "></i></a> <a href="#"><i class="mdi mdi-instagram social-icon "></i></a> <a href="#"><i class="mdi mdi-rss social-icon "></i></a></div> </div></div> </div></div> </div></div> </div><div id="latest-news-1"  style="background-color:#f5fafd"  data-label="Latest-news" data-id="latest-news-1-materialis" data-export-id="latest-news-1-materialis" data-category="latest_news" class="latest-news-1-materialis content-section content-section-spacing-large"><div class="gridContainer"> <div class="row"><div data-type="column" class="section-title-col"> <h2>Latest News</h2> <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p></div> </div> <div class="row content-left-sm"> <div data-type="row" data-dynamic-columns="handled" data-content-shortcode="materialis_latest_news">[materialis_latest_news]</div></div> <div class="row"><div class="text-center"> <a class="button big color1 mdc-elevation--z3" data-attr-shortcode="href:materialis_blog_link" href="[materialis_blog_link]">VISIT OUR BLOG</a></div> </div></div></div><div id="contact-1"  data-label="Contact" data-id="contact-1" data-export-id="contact-1" data-category="contact" class="contact-1 content-section content-section-spacing-large content-relative white-text" data-parallax-depth="20"><div class="gridContainer"> <div class="row text-center"><div class="section-title-col" data-type="column"> <h2>Contact us</h2> <p class="lead">With the Internet spreading linke wildfire and reaching every part of our daily life, more and more traffic is directed to websites in search for information.</p></div> </div> <div class="row text-center"> <div class="col-xs-12 col-sm-8 col-sm-offset-2 contact-form-wrapper inline-info"> <div class="card mdc-elevation--z3 col-padding-top"> <div class="dark-text" data-content-shortcode="materialis_contact_form" data-editable="true">[materialis_contact_form]</div></div> </div></div> </div></div>', 'Front Page', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2019-01-08 11:43:16', '2019-01-08 10:43:16', '', 89, 'http://cohabit.utila.io/fablab/2019/01/08/89-revision-v1/', 0, 'revision', '', 0),
(93, 2, '2019-01-08 13:15:40', '2019-01-08 12:15:40', '{"generate_settings[footer_layout_setting]":{"value":"fluid-footer","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:15:35"},"generate_settings[footer_inner_width]":{"value":"contained","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:15:35"},"generate_settings[footer_widget_setting]":{"value":"1","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:15:35"},"generate_settings[back_to_top]":{"value":"enable","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:15:35"}}', '', '', 'trash', 'closed', 'closed', '', '81388708-bfe6-4663-9e41-b7e0650881f0', '', '', '2019-01-08 13:15:40', '2019-01-08 12:15:40', '', 0, 'http://cohabit.utila.io/fablab/?p=93', 0, 'customize_changeset', '', 0),
(94, 2, '2019-01-08 13:23:42', '2019-01-08 12:23:42', '', 'logo cohabit', '', 'inherit', 'open', 'closed', '', 'logo-cohabit', '', '', '2019-01-08 15:39:43', '2019-01-08 14:39:43', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/logo-cohabit.png', 0, 'attachment', 'image/png', 0),
(95, 2, '2019-01-08 13:27:43', '2019-01-08 12:27:43', '', 'agenda', '', 'inherit', 'open', 'closed', '', 'agenda', '', '', '2019-01-08 13:27:43', '2019-01-08 12:27:43', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/agenda.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 2, '2019-01-08 13:28:54', '2019-01-08 12:28:54', '{"sidebars_widgets[sidebar-1]":{"value":["media_image-3","search-2","meta-2"],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:28:35"},"widget_media_image[3]":{"value":{"encoded_serialized_instance":"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo5NTtzOjM6InVybCI7czo2ODoiaHR0cDovL2ZhYmxhYi51dGlsYS5pby93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8wMS9hZ2VuZGEtMzAweDE5NS5qcGciO3M6NToidGl0bGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6NjoibWVkaXVtIjtzOjU6IndpZHRoIjtpOjMwMDtzOjY6ImhlaWdodCI7aToxOTU7czo3OiJjYXB0aW9uIjtzOjA6IiI7czozOiJhbHQiO3M6MDoiIjtzOjk6ImxpbmtfdHlwZSI7czo2OiJjdXN0b20iO3M6ODoibGlua191cmwiO3M6MDoiIjtzOjEzOiJpbWFnZV9jbGFzc2VzIjtzOjA6IiI7czoxMjoibGlua19jbGFzc2VzIjtzOjA6IiI7czo4OiJsaW5rX3JlbCI7czowOiIiO3M6MTc6ImxpbmtfdGFyZ2V0X2JsYW5rIjtiOjA7czoxMToiaW1hZ2VfdGl0bGUiO3M6MDoiIjt9","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"9cceccc5475c7a49dfa178cb00553a8b"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:28:35"}}', '', '', 'trash', 'closed', 'closed', '', '0df18d2c-89be-4542-84eb-841133b68442', '', '', '2019-01-08 13:28:54', '2019-01-08 12:28:54', '', 0, 'http://cohabit.utila.io/fablab/?p=96', 0, 'customize_changeset', '', 0),
(97, 2, '2019-01-08 13:30:04', '0000-00-00 00:00:00', '{"sidebars_widgets[header]":{"value":[],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:30:04"},"widget_calendar[3]":{"value":[],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:29:53"},"widget_media_image[4]":{"value":{"encoded_serialized_instance":"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTozNTtzOjM6InVybCI7czo3MDoiaHR0cDovL2ZhYmxhYi51dGlsYS5pby93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8wMS9jYXJ0ZTEtMS0zMDB4MTc3LnBuZyI7czo1OiJ0aXRsZSI7czowOiIiO3M6NDoic2l6ZSI7czo2OiJtZWRpdW0iO3M6NToid2lkdGgiO2k6ODA4O3M6NjoiaGVpZ2h0IjtpOjQ3NztzOjc6ImNhcHRpb24iO3M6MDoiIjtzOjM6ImFsdCI7czowOiIiO3M6OToibGlua190eXBlIjtzOjY6ImN1c3RvbSI7czo4OiJsaW5rX3VybCI7czowOiIiO3M6MTM6ImltYWdlX2NsYXNzZXMiO3M6MDoiIjtzOjEyOiJsaW5rX2NsYXNzZXMiO3M6MDoiIjtzOjg6ImxpbmtfcmVsIjtzOjA6IiI7czoxNzoibGlua190YXJnZXRfYmxhbmsiO2I6MDtzOjExOiJpbWFnZV90aXRsZSI7czowOiIiO30=","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"96edcc3f9aa08415b54752c1814256b8"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:29:53"}}', '', '', 'auto-draft', 'closed', 'closed', '', '9828b667-c811-4776-b3ac-eec8d8b85610', '', '', '2019-01-08 13:30:04', '2019-01-08 12:30:04', '', 0, 'http://cohabit.utila.io/fablab/?p=97', 0, 'customize_changeset', '', 0),
(98, 2, '2019-01-08 13:39:59', '2019-01-08 12:39:59', '{"blogdescription":{"value":"","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:37:51"},"featured-news::site_title_font_size":{"value":"70","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:38:25"},"featured-news::custom_logo":{"value":"","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:39:50"},"featured-news::background_image":{"value":"","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:39:50"},"page_for_posts":{"value":"0","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:39:59"}}', '', '', 'trash', 'closed', 'closed', '', 'f21ac475-efbe-4165-aa2c-11aa4365a856', '', '', '2019-01-08 13:39:59', '2019-01-08 12:39:59', '', 0, 'http://cohabit.utila.io/fablab/?p=98', 0, 'customize_changeset', '', 0),
(99, 2, '2019-01-08 13:39:12', '2019-01-08 12:39:12', '', 'imprimante 3D', '', 'inherit', 'open', 'closed', '', 'fotolia_93375457', '', '', '2019-01-08 15:41:23', '2019-01-08 14:41:23', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/fotolia_93375457.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 2, '2019-01-08 13:39:20', '2019-01-08 12:39:20', 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/cropped-fotolia_93375457.jpg', 'cropped-fotolia_93375457.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-fotolia_93375457-jpg', '', '', '2019-01-08 13:39:20', '2019-01-08 12:39:20', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/cropped-fotolia_93375457.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 2, '2019-01-08 13:40:33', '2019-01-08 12:40:33', '{"page_on_front":{"value":"81","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:40:33"}}', '', '', 'trash', 'closed', 'closed', '', 'b232fc10-74fa-4897-8d74-c714a9008712', '', '', '2019-01-08 13:40:33', '2019-01-08 12:40:33', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/b232fc10-74fa-4897-8d74-c714a9008712/', 0, 'customize_changeset', '', 0),
(102, 2, '2019-01-08 13:41:57', '2019-01-08 12:41:57', '{"featured-news::show_social_menu_section":{"value":false,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:41:50"},"featured-news::global_content_alignment":{"value":"align-content-left","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:41:50"},"featured-news::hide_footer_menu_section":{"value":false,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:41:57"}}', '', '', 'trash', 'closed', 'closed', '', 'a52aa75d-c0df-40fb-adb8-81c796938106', '', '', '2019-01-08 13:41:57', '2019-01-08 12:41:57', '', 0, 'http://cohabit.utila.io/fablab/?p=102', 0, 'customize_changeset', '', 0),
(103, 2, '2019-01-08 13:43:20', '2019-01-08 12:43:20', '{"widget_text[3]":{"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjE1MToiPGltZyBjbGFzcz0ic2l6ZS1mdWxsIHdwLWltYWdlLTk0IGFsaWdubm9uZSIgc3JjPSJodHRwOi8vZmFibGFiLnV0aWxhLmlvL3dwLWNvbnRlbnQvdXBsb2Fkcy8yMDE5LzAxL2xvZ28tY29oYWJpdC5wbmciIGFsdD0iIiB3aWR0aD0iMTg0IiBoZWlnaHQ9IjY2IiAvPiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"fddaef5dfbcce58a8dad669325c98fdd"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:43:20"},"sidebars_widgets[footer-second-widgets-section]":{"value":["text-5"],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:42:50"},"widget_text[5]":{"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjY4OiI8YSBocmVmPSJodHRwOi8vZmFibGFiLnV0aWxhLmlvL2luZm9zLXByYXRpcXVlcy8iPk5vdXMgY29udGFjdGVyPC9hPiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"7a734c5dff4b1c7857303bb9744576ae"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:42:50"},"sidebars_widgets[footer-third-widgets-section]":{"value":["text-6"],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:43:20"},"widget_text[6]":{"value":{"encoded_serialized_instance":"YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJ0ZXh0IjtzOjE3OiJNZW50aW9ucyBMw6lnYWxlcyI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"95bdc67f566e1b3b595865c316c1d71a"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:43:20"}}', '', '', 'trash', 'closed', 'closed', '', '964f360a-8233-4f27-b2ee-814cc7259244', '', '', '2019-01-08 13:43:20', '2019-01-08 12:43:20', '', 0, 'http://cohabit.utila.io/fablab/?p=103', 0, 'customize_changeset', '', 0),
(104, 2, '2019-01-08 13:44:05', '2019-01-08 12:44:05', '{"sidebars_widgets[express-off-canvas-panel]":{"value":[],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:44:05"},"widget_media_image[5]":{"value":{"encoded_serialized_instance":"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo5OTtzOjM6InVybCI7czo3ODoiaHR0cDovL2ZhYmxhYi51dGlsYS5pby93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8wMS9mb3RvbGlhXzkzMzc1NDU3LTMwMHgyMDAuanBnIjtzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjY6Im1lZGl1bSI7czo1OiJ3aWR0aCI7aTo1MDA7czo2OiJoZWlnaHQiO2k6MzM0O3M6NzoiY2FwdGlvbiI7czowOiIiO3M6MzoiYWx0IjtzOjA6IiI7czo5OiJsaW5rX3R5cGUiO3M6NjoiY3VzdG9tIjtzOjg6ImxpbmtfdXJsIjtzOjA6IiI7czoxMzoiaW1hZ2VfY2xhc3NlcyI7czowOiIiO3M6MTI6ImxpbmtfY2xhc3NlcyI7czowOiIiO3M6ODoibGlua19yZWwiO3M6MDoiIjtzOjE3OiJsaW5rX3RhcmdldF9ibGFuayI7YjowO3M6MTE6ImltYWdlX3RpdGxlIjtzOjA6IiI7fQ==","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"6368f4b864caab18e2684942759a9ca4"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:44:05"}}', '', '', 'trash', 'closed', 'closed', '', 'b0776650-4ce9-4c70-b02b-7c03c5d56218', '', '', '2019-01-08 13:44:05', '2019-01-08 12:44:05', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/b0776650-4ce9-4c70-b02b-7c03c5d56218/', 0, 'customize_changeset', '', 0),
(105, 2, '2019-01-08 13:44:18', '2019-01-08 12:44:18', '', 'cropped-fotolia_93375457-1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-fotolia_93375457-1-jpg', '', '', '2019-01-08 13:44:18', '2019-01-08 12:44:18', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/cropped-fotolia_93375457-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 2, '2019-01-08 13:44:34', '2019-01-08 12:44:34', '{"featured-news::header_image":{"value":"http:\\/\\/cohabit.utila.io\\/fablab\\/wp-content\\/uploads\\/2019\\/01\\/cropped-fotolia_93375457-1.jpg","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:44:30"},"featured-news::header_image_data":{"value":{"url":"http:\\/\\/cohabit.utila.io\\/fablab\\/wp-content\\/uploads\\/2019\\/01\\/cropped-fotolia_93375457-1.jpg","thumbnail_url":"http:\\/\\/cohabit.utila.io\\/fablab\\/wp-content\\/uploads\\/2019\\/01\\/cropped-fotolia_93375457-1.jpg","timestamp":1546951458977,"attachment_id":105,"width":1900,"height":600},"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:44:30"},"featured-news::disable_header_image_tint_overlay":{"value":true,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:44:30"}}', '', '', 'trash', 'closed', 'closed', '', '94b4fef2-5c73-41e4-b0b1-761115b9bf50', '', '', '2019-01-08 13:44:34', '2019-01-08 12:44:34', '', 0, 'http://cohabit.utila.io/fablab/?p=106', 0, 'customize_changeset', '', 0),
(107, 2, '2019-01-08 13:47:34', '2019-01-08 12:47:34', '{"featured-news::background_color":{"value":"#ffffff","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:44:49"},"sidebars_widgets[wp_inactive_widgets]":{"value":["text-3"],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:47:34"},"sidebars_widgets[footer-first-widgets-section]":{"value":["media_image-6"],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:47:34"},"widget_media_image[6]":{"value":{"encoded_serialized_instance":"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo5NDtzOjM6InVybCI7czo2NjoiaHR0cDovL2ZhYmxhYi51dGlsYS5pby93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8wMS9sb2dvLWNvaGFiaXQucG5nIjtzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6NToid2lkdGgiO2k6MTg0O3M6NjoiaGVpZ2h0IjtpOjY2O3M6NzoiY2FwdGlvbiI7czowOiIiO3M6MzoiYWx0IjtzOjA6IiI7czo5OiJsaW5rX3R5cGUiO3M6NjoiY3VzdG9tIjtzOjg6ImxpbmtfdXJsIjtzOjA6IiI7czoxMzoiaW1hZ2VfY2xhc3NlcyI7czowOiIiO3M6MTI6ImxpbmtfY2xhc3NlcyI7czowOiIiO3M6ODoibGlua19yZWwiO3M6MDoiIjtzOjE3OiJsaW5rX3RhcmdldF9ibGFuayI7YjowO3M6MTE6ImltYWdlX3RpdGxlIjtzOjA6IiI7fQ==","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"451d272b73682ac335421933809973cf"},"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:47:34"}}', '', '', 'trash', 'closed', 'closed', '', 'fcf298a2-1a26-4e79-be0f-c4ba14bac908', '', '', '2019-01-08 13:47:34', '2019-01-08 12:47:34', '', 0, 'http://cohabit.utila.io/fablab/?p=107', 0, 'customize_changeset', '', 0),
(108, 2, '2019-01-08 13:47:53', '2019-01-08 12:47:53', '{"featured-news::header_textcolor":{"value":"#ffffff","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:47:53"}}', '', '', 'trash', 'closed', 'closed', '', '7b54e37f-0422-4395-8fb2-cb3f7f526552', '', '', '2019-01-08 13:47:53', '2019-01-08 12:47:53', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/7b54e37f-0422-4395-8fb2-cb3f7f526552/', 0, 'customize_changeset', '', 0),
(109, 2, '2019-01-08 13:49:43', '2019-01-08 12:49:43', '{"featured-news::nav_menu_locations[aft-top-nav]":{"value":0,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:49:43"},"featured-news::nav_menu_locations[aft-social-nav]":{"value":0,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:49:43"},"featured-news::nav_menu_locations[aft-footer-nav]":{"value":0,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:49:43"}}', '', '', 'trash', 'closed', 'closed', '', 'd1bf99e3-54d4-40d8-807e-3bebad14393a', '', '', '2019-01-08 13:49:43', '2019-01-08 12:49:43', '', 0, 'http://cohabit.utila.io/fablab/?p=109', 0, 'customize_changeset', '', 0) ;
INSERT INTO `wpc_2_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 2, '2019-01-08 13:52:04', '2019-01-08 12:52:04', '{"page_on_front":{"value":"81","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:52:04"},"page_for_posts":{"value":"0","type":"option","user_id":2,"date_modified_gmt":"2019-01-08 12:52:04"}}', '', '', 'trash', 'closed', 'closed', '', '481ad1ba-1024-440c-835e-37e469ddfe63', '', '', '2019-01-08 13:52:04', '2019-01-08 12:52:04', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/481ad1ba-1024-440c-835e-37e469ddfe63/', 0, 'customize_changeset', '', 0),
(111, 2, '2019-01-08 13:52:56', '2019-01-08 12:52:56', '{"featured-news::show_trending_news_section":{"value":false,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:52:25"},"featured-news::show_main_news_section":{"value":true,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:52:56"},"featured-news::show_featured_news_section":{"value":false,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:52:56"},"featured-news::frontpage_show_latest_posts":{"value":false,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 12:52:56"}}', '', '', 'trash', 'closed', 'closed', '', '2e668de2-1152-4eef-b6d1-19403afbd23b', '', '', '2019-01-08 13:52:56', '2019-01-08 12:52:56', '', 0, 'http://cohabit.utila.io/fablab/?p=111', 0, 'customize_changeset', '', 0),
(112, 2, '2019-01-08 13:53:59', '2019-01-08 12:53:59', '<!-- wp:heading -->\n<h2>Le FabLab, c\'est quoi?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->', 'Le FabLab, c\'est quoi?', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-08 13:53:59', '2019-01-08 12:53:59', '', 81, 'http://cohabit.utila.io/fablab/2019/01/08/81-revision-v1/', 0, 'revision', '', 0),
(114, 2, '2019-01-08 13:57:08', '2019-01-08 12:57:08', '<!-- wp:heading -->\n<h2>Le FabLab, c\'est quoi?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Missions</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {"align":"center"} -->\n<div class="wp-block-button aligncenter"><a class="wp-block-button__link" href="">En savoir plus<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Réalisations</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Partenaires</h2>\n<!-- /wp:heading -->', 'Le FabLab, c\'est quoi?', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-08 13:57:08', '2019-01-08 12:57:08', '', 81, 'http://cohabit.utila.io/fablab/2019/01/08/81-revision-v1/', 0, 'revision', '', 0),
(115, 2, '2019-01-08 13:58:05', '2019-01-08 12:58:05', '<!-- wp:heading -->\n<h2>Le FabLab, c\'est quoi?</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Missions</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod \ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim \nveniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea \ncommodo consequat. Duis aute irure dolor in reprehenderit in voluptate \nvelit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint \noccaecat cupidatat non proident, sunt in culpa qui officia deserunt \nmollit anim id est laborum.\n\n</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {"backgroundColor":"very-dark-gray","textColor":"very-light-gray","align":"center"} -->\n<div class="wp-block-button aligncenter"><a class="wp-block-button__link has-text-color has-very-light-gray-color has-background has-very-dark-gray-background-color" href="">En savoir plus<br></a></div>\n<!-- /wp:button -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Réalisations</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {"align":"center"} -->\n<h2 style="text-align:center">Nos Partenaires</h2>\n<!-- /wp:heading -->', 'Le FabLab, c\'est quoi?', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2019-01-08 13:58:05', '2019-01-08 12:58:05', '', 81, 'http://cohabit.utila.io/fablab/2019/01/08/81-revision-v1/', 0, 'revision', '', 0),
(116, 5, '2019-01-08 15:22:58', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-08 15:22:58', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=116', 0, 'post', '', 0),
(117, 2, '2019-01-08 15:27:08', '2019-01-08 14:27:08', 'Parlez de vos projets à venir, en cours ou terminés !', 'Vos Projets', '', 'publish', 'closed', 'open', '', 'vos-projet', '', '', '2019-01-08 15:38:12', '2019-01-08 14:38:12', '', 0, 'http://cohabit.utila.io/fablab/?post_type=forum&#038;p=117', 1, 'forum', '', 0),
(118, 5, '2019-01-08 15:26:09', '0000-00-00 00:00:00', '{"custom_css[featured-news]":{"value":"","type":"custom_css","user_id":5,"date_modified_gmt":"2019-01-08 14:26:09"}}', '', '', 'auto-draft', 'closed', 'closed', '', 'c1fa3a85-c636-4c48-84d5-fdebd7e6dc08', '', '', '2019-01-08 15:26:09', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=118', 0, 'customize_changeset', '', 0),
(119, 2, '2019-01-08 15:27:08', '2019-01-08 14:27:08', 'Parlez de vos projets à venir, en cours ou terminés!', 'Vos projet', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2019-01-08 15:27:08', '2019-01-08 14:27:08', '', 117, 'http://cohabit.utila.io/fablab/2019/01/08/117-revision-v1/', 0, 'revision', '', 0),
(120, 2, '2019-01-08 15:27:40', '2019-01-08 14:27:40', 'Parlez de vos projets à venir, en cours ou terminés!', 'Vos projets', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2019-01-08 15:27:40', '2019-01-08 14:27:40', '', 117, 'http://cohabit.utila.io/fablab/2019/01/08/117-revision-v1/', 0, 'revision', '', 0),
(121, 2, '2019-01-08 15:29:00', '2019-01-08 14:29:00', 'Forums bbPress', 'Forum', '', 'publish', 'closed', 'closed', '', 'forum', '', '', '2019-01-08 15:29:00', '2019-01-08 14:29:00', '', 0, 'http://cohabit.utila.io/fablab/?p=121', 10, 'nav_menu_item', '', 0),
(123, 2, '2019-01-08 15:29:56', '2019-01-08 14:29:56', 'Demandez de l\'aide concernant vos projets !', 'Aide', '', 'publish', 'closed', 'open', '', 'aide', '', '', '2019-01-08 15:45:39', '2019-01-08 14:45:39', '', 0, 'http://cohabit.utila.io/fablab/?post_type=forum&#038;p=123', 2, 'forum', '', 0),
(124, 1, '2019-01-08 15:29:37', '2019-01-08 14:29:37', '<!-- wp:paragraph -->\n<p>Première machine je fais un test - Aurore</p>\n<!-- /wp:paragraph -->', 'Liste des machines', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-01-08 15:29:37', '2019-01-08 14:29:37', '', 14, 'http://cohabit.utila.io/fablab/2019/01/08/14-revision-v1/', 0, 'revision', '', 0),
(125, 2, '2019-01-08 15:29:56', '2019-01-08 14:29:56', 'Demandez de l\'aide concernant vos projets !', 'Aide', '', 'inherit', 'closed', 'closed', '', '123-revision-v1', '', '', '2019-01-08 15:29:56', '2019-01-08 14:29:56', '', 123, 'http://cohabit.utila.io/fablab/2019/01/08/123-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2019-01-08 15:30:07', '2019-01-08 14:30:07', '', 'Liste des machines', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2019-01-08 15:30:07', '2019-01-08 14:30:07', '', 14, 'http://cohabit.utila.io/fablab/2019/01/08/14-revision-v1/', 0, 'revision', '', 0),
(127, 2, '2019-01-08 15:30:11', '2019-01-08 14:30:11', 'Parlez de vos projets à venir, en cours ou terminés !', 'Vos Projets', '', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2019-01-08 15:30:11', '2019-01-08 14:30:11', '', 117, 'http://cohabit.utila.io/fablab/2019/01/08/117-revision-v1/', 0, 'revision', '', 0),
(129, 2, '2019-01-08 15:33:14', '2019-01-08 14:33:14', '{"sidebars_widgets[sidebar-1]":{"value":["media_image-3","meta-2"],"type":"option","user_id":2,"date_modified_gmt":"2019-01-08 14:33:14"}}', '', '', 'trash', 'closed', 'closed', '', '4badbd25-8fb1-4a2c-92dd-ee4046a90d31', '', '', '2019-01-08 15:33:14', '2019-01-08 14:33:14', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/4badbd25-8fb1-4a2c-92dd-ee4046a90d31/', 0, 'customize_changeset', '', 0),
(130, 2, '2019-01-08 15:34:00', '2019-01-08 14:34:00', '{"featured-news::footer_copyright_text":{"value":"Coh@bit","type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 14:34:00"},"featured-news::hide_footer_menu_section":{"value":true,"type":"theme_mod","user_id":2,"date_modified_gmt":"2019-01-08 14:33:54"}}', '', '', 'trash', 'closed', 'closed', '', 'a269f0c2-1fa9-4ef8-a5cd-a493325ca6f4', '', '', '2019-01-08 15:34:00', '2019-01-08 14:34:00', '', 0, 'http://cohabit.utila.io/fablab/?p=130', 0, 'customize_changeset', '', 0),
(131, 1, '2019-01-08 15:38:30', '2019-01-08 14:38:30', '<!-- wp:paragraph -->\n<p>On est pas payés !</p>\n<!-- /wp:paragraph -->', 'Nos missions', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-08 15:38:30', '2019-01-08 14:38:30', '', 24, 'http://cohabit.utila.io/fablab/2019/01/08/24-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-01-08 15:38:59', '2019-01-08 14:38:59', '<!-- wp:paragraph -->\n<p>On est pas payés !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>C\'est un scandale !</p>\n<!-- /wp:paragraph -->', 'Nos missions', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-01-08 15:38:59', '2019-01-08 14:38:59', '', 24, 'http://cohabit.utila.io/fablab/2019/01/08/24-revision-v1/', 0, 'revision', '', 0),
(133, 3, '2019-01-08 15:39:22', '2019-01-08 14:39:22', '{"widget_media_image[6]":{"value":{"encoded_serialized_instance":"YToxNTp7czoxMzoiYXR0YWNobWVudF9pZCI7aTo5NDtzOjM6InVybCI7czo2NjoiaHR0cDovL2ZhYmxhYi51dGlsYS5pby93cC1jb250ZW50L3VwbG9hZHMvMjAxOS8wMS9sb2dvLWNvaGFiaXQucG5nIjtzOjU6InRpdGxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6NToid2lkdGgiO2k6MTg0O3M6NjoiaGVpZ2h0IjtpOjY2O3M6NzoiY2FwdGlvbiI7czowOiIiO3M6MzoiYWx0IjtzOjEyOiJsb2dvIGNvaEBiaXQiO3M6OToibGlua190eXBlIjtzOjY6ImN1c3RvbSI7czo4OiJsaW5rX3VybCI7czowOiIiO3M6MTM6ImltYWdlX2NsYXNzZXMiO3M6MDoiIjtzOjEyOiJsaW5rX2NsYXNzZXMiO3M6MDoiIjtzOjg6ImxpbmtfcmVsIjtzOjA6IiI7czoxNzoibGlua190YXJnZXRfYmxhbmsiO2I6MDtzOjExOiJpbWFnZV90aXRsZSI7czowOiIiO30=","title":"","is_widget_customizer_js_value":true,"instance_hash_key":"e14aca8e618dad845bc0b9c57f7a413f"},"type":"option","user_id":3,"date_modified_gmt":"2019-01-08 14:39:22"}}', '', '', 'trash', 'closed', 'closed', '', '7e5fdea5-7700-4df6-9a42-bec2951d68a3', '', '', '2019-01-08 15:39:22', '2019-01-08 14:39:22', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/7e5fdea5-7700-4df6-9a42-bec2951d68a3/', 0, 'customize_changeset', '', 0),
(134, 3, '2019-01-08 15:39:50', '2019-01-08 14:39:50', 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/cropped-logo-cohabit.png', 'cropped-logo-cohabit.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-cohabit-png', '', '', '2019-01-08 15:39:50', '2019-01-08 14:39:50', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/cropped-logo-cohabit.png', 0, 'attachment', 'image/png', 0),
(135, 3, '2019-01-08 15:40:19', '0000-00-00 00:00:00', '{"featured-news::custom_logo":{"value":"","type":"theme_mod","user_id":3,"date_modified_gmt":"2019-01-08 14:40:19"}}', '', '', 'auto-draft', 'closed', 'closed', '', '47aefbf7-d380-447d-a3f5-3ec35fd0e210', '', '', '2019-01-08 15:40:19', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=135', 0, 'customize_changeset', '', 0),
(136, 2, '2019-01-08 15:41:46', '2019-01-08 14:41:46', '', 'fablab-cohabit-interactions-machines-bordeaux', '', 'inherit', 'open', 'closed', '', 'fablab-cohabit-interactions-machines-bordeaux', '', '', '2019-01-08 15:41:46', '2019-01-08 14:41:46', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/fablab-cohabit-interactions-machines-bordeaux.webm', 0, 'attachment', 'video/webm', 0),
(137, 6, '2019-01-08 16:10:24', '2019-01-08 15:10:24', '<!-- wp:columns -->\n<div class="wp-block-columns has-2-columns"><!-- wp:column -->\n<div class="wp-block-column"><!-- wp:paragraph -->\n<p>Normal<br></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class="wp-block-column"><!-- wp:paragraph {"customTextColor":"#999999","customFontSize":14} -->\n<p style="color:#999999;font-size:14px" class="has-text-color">Normal</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Liste des machines', '', 'inherit', 'closed', 'closed', '', '14-autosave-v1', '', '', '2019-01-08 16:10:24', '2019-01-08 15:10:24', '', 14, 'http://cohabit.utila.io/fablab/2019/01/08/14-autosave-v1/', 0, 'revision', '', 0),
(138, 2, '2019-01-08 15:56:42', '2019-01-08 14:56:42', '<div>\r\n<div class="description">Un endroit où discuter de tout et n\'importe quoi.</div>\r\n</div>', 'Discussions Générales', '', 'publish', 'closed', 'open', '', 'discussions-generales', '', '', '2019-01-08 15:56:42', '2019-01-08 14:56:42', '', 0, 'http://cohabit.utila.io/fablab/?post_type=forum&#038;p=138', 0, 'forum', '', 0),
(139, 3, '2019-01-08 15:54:08', '2019-01-08 14:54:08', '', 'fotolia_filtre-vert', '', 'inherit', 'open', 'closed', '', 'fotolia_filtre-vert', '', '', '2019-01-08 15:54:19', '2019-01-08 14:54:19', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/fotolia_filtre-vert.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 3, '2019-01-08 15:54:26', '2019-01-08 14:54:26', '', 'cropped-fotolia_filtre-vert.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-fotolia_filtre-vert-jpg', '', '', '2019-01-08 15:54:26', '2019-01-08 14:54:26', '', 0, 'http://cohabit.utila.io/fablab/wp-content/uploads/2019/01/cropped-fotolia_filtre-vert.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 3, '2019-01-08 16:00:32', '2019-01-08 15:00:32', '{"featured-news::header_image":{"value":"http:\\/\\/cohabit.utila.io\\/fablab\\/wp-content\\/uploads\\/2019\\/01\\/cropped-fotolia_filtre-vert.jpg","type":"theme_mod","user_id":3,"date_modified_gmt":"2019-01-08 14:54:42"},"featured-news::header_image_data":{"value":{"url":"http:\\/\\/cohabit.utila.io\\/fablab\\/wp-content\\/uploads\\/2019\\/01\\/cropped-fotolia_filtre-vert.jpg","thumbnail_url":"http:\\/\\/cohabit.utila.io\\/fablab\\/wp-content\\/uploads\\/2019\\/01\\/cropped-fotolia_filtre-vert.jpg","timestamp":1546959266632,"attachment_id":140,"width":1900,"height":600},"type":"theme_mod","user_id":3,"date_modified_gmt":"2019-01-08 14:54:42"},"custom_css[featured-news]":{"value":"#site-navigation {\\n\\tbackground: #515151;\\n}\\n\\nmain-navigation .menu #primary-menuul.menu-desktop > li > a {\\n\\tcolor: white;\\n}","type":"custom_css","user_id":3,"date_modified_gmt":"2019-01-08 15:00:32"}}', '', '', 'trash', 'closed', 'closed', '', '08a43709-cfbe-44f7-94b1-9edb158b32ee', '', '', '2019-01-08 16:00:32', '2019-01-08 15:00:32', '', 0, 'http://cohabit.utila.io/fablab/?p=141', 0, 'customize_changeset', '', 0),
(142, 2, '2019-01-08 15:56:42', '2019-01-08 14:56:42', '<div>\r\n<div class="description">Un endroit où discuter de tout et n\'importe quoi.</div>\r\n</div>', 'Discussions Générales', '', 'inherit', 'closed', 'closed', '', '138-revision-v1', '', '', '2019-01-08 15:56:42', '2019-01-08 14:56:42', '', 138, 'http://cohabit.utila.io/fablab/2019/01/08/138-revision-v1/', 0, 'revision', '', 0),
(143, 2, '2019-01-08 15:58:36', '2019-01-08 14:58:36', 'Présentez vous à la communauté !', 'Présentations', '', 'publish', 'closed', 'open', '', 'presentations', '', '', '2019-01-08 15:59:02', '2019-01-08 14:59:02', '', 0, 'http://cohabit.utila.io/fablab/?post_type=forum&#038;p=143', 0, 'forum', '', 0),
(144, 2, '2019-01-08 15:58:36', '2019-01-08 14:58:36', 'Présentez vous à la communauté !', 'Présentations', '', 'inherit', 'closed', 'closed', '', '143-revision-v1', '', '', '2019-01-08 15:58:36', '2019-01-08 14:58:36', '', 143, 'http://cohabit.utila.io/fablab/2019/01/08/143-revision-v1/', 0, 'revision', '', 0),
(145, 2, '2019-01-08 15:59:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-08 15:59:31', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?post_type=forum&p=145', 0, 'forum', '', 0),
(146, 3, '2019-01-08 16:00:32', '2019-01-08 15:00:32', '#site-navigation {\n	background: #515151;\n}\n.main-navigation .menu ul.menu-desktop > li > a {\n	color: white;\n}', 'featured-news', '', 'publish', 'closed', 'closed', '', 'featured-news', '', '', '2019-01-08 16:02:46', '2019-01-08 15:02:46', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/featured-news/', 0, 'custom_css', '', 0),
(147, 3, '2019-01-08 16:00:32', '2019-01-08 15:00:32', '#site-navigation {\n	background: #515151;\n}\n\nmain-navigation .menu #primary-menuul.menu-desktop > li > a {\n	color: white;\n}', 'featured-news', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-01-08 16:00:32', '2019-01-08 15:00:32', '', 146, 'http://cohabit.utila.io/fablab/2019/01/08/146-revision-v1/', 0, 'revision', '', 0),
(148, 3, '2019-01-08 16:01:46', '2019-01-08 15:01:46', '{"custom_css[featured-news]":{"value":"#site-navigation {\\n\\tbackground: #515151;\\n}\\n\\nmain-navigation .menu ul#primary-menu.menu-desktop > li > a {\\n\\tcolor: white;\\n}","type":"custom_css","user_id":3,"date_modified_gmt":"2019-01-08 15:01:46"}}', '', '', 'trash', 'closed', 'closed', '', '205b91fa-aa5a-405a-b6d9-a57601dae642', '', '', '2019-01-08 16:01:46', '2019-01-08 15:01:46', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/205b91fa-aa5a-405a-b6d9-a57601dae642/', 0, 'customize_changeset', '', 0),
(149, 3, '2019-01-08 16:01:46', '2019-01-08 15:01:46', '#site-navigation {\n	background: #515151;\n}\n\nmain-navigation .menu ul#primary-menu.menu-desktop > li > a {\n	color: white;\n}', 'featured-news', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-01-08 16:01:46', '2019-01-08 15:01:46', '', 146, 'http://cohabit.utila.io/fablab/2019/01/08/146-revision-v1/', 0, 'revision', '', 0),
(150, 3, '2019-01-08 16:01:58', '0000-00-00 00:00:00', '{"custom_css[featured-news]":{"value":"#site-navigation {\\n\\tbackground: #515151;\\n}\\n\\nmain-navigation .menu ul.menu-desktop > li > a {\\n\\tcolor: white;\\n}","type":"custom_css","user_id":3,"date_modified_gmt":"2019-01-08 15:01:58"}}', '', '', 'auto-draft', 'closed', 'closed', '', '5d03bb2b-6f53-43ff-9265-956c1aca5845', '', '', '2019-01-08 16:01:58', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=150', 0, 'customize_changeset', '', 0),
(151, 3, '2019-01-08 16:02:46', '2019-01-08 15:02:46', '{"custom_css[featured-news]":{"value":"#site-navigation {\\n\\tbackground: #515151;\\n}\\n.main-navigation .menu ul.menu-desktop > li > a {\\n\\tcolor: white;\\n}","type":"custom_css","user_id":3,"date_modified_gmt":"2019-01-08 15:02:46"}}', '', '', 'trash', 'closed', 'closed', '', 'cd1879cd-e89f-496e-8cdf-375c3c7286de', '', '', '2019-01-08 16:02:46', '2019-01-08 15:02:46', '', 0, 'http://cohabit.utila.io/fablab/2019/01/08/cd1879cd-e89f-496e-8cdf-375c3c7286de/', 0, 'customize_changeset', '', 0),
(152, 3, '2019-01-08 16:02:46', '2019-01-08 15:02:46', '#site-navigation {\n	background: #515151;\n}\n.main-navigation .menu ul.menu-desktop > li > a {\n	color: white;\n}', 'featured-news', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2019-01-08 16:02:46', '2019-01-08 15:02:46', '', 146, 'http://cohabit.utila.io/fablab/2019/01/08/146-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-01-08 16:48:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-08 16:48:41', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/fablab/?p=153', 0, 'post', '', 0) ;

#
# End of data contents of table `wpc_2_posts`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_term_relationships`
#

DROP TABLE IF EXISTS `wpc_2_term_relationships`;


#
# Table structure of table `wpc_2_term_relationships`
#

CREATE TABLE `wpc_2_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_term_relationships`
#
INSERT INTO `wpc_2_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(38, 2, 0),
(39, 2, 0),
(41, 2, 0),
(44, 2, 0),
(45, 2, 0),
(46, 2, 0),
(54, 2, 0),
(58, 2, 0),
(121, 2, 0) ;

#
# End of data contents of table `wpc_2_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_term_taxonomy`
#

DROP TABLE IF EXISTS `wpc_2_term_taxonomy`;


#
# Table structure of table `wpc_2_term_taxonomy`
#

CREATE TABLE `wpc_2_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_term_taxonomy`
#
INSERT INTO `wpc_2_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 12) ;

#
# End of data contents of table `wpc_2_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_termmeta`
#

DROP TABLE IF EXISTS `wpc_2_termmeta`;


#
# Table structure of table `wpc_2_termmeta`
#

CREATE TABLE `wpc_2_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_termmeta`
#

#
# End of data contents of table `wpc_2_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_terms`
#

DROP TABLE IF EXISTS `wpc_2_terms`;


#
# Table structure of table `wpc_2_terms`
#

CREATE TABLE `wpc_2_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_terms`
#
INSERT INTO `wpc_2_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Principal', 'principal', 0) ;

#
# End of data contents of table `wpc_2_terms`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_usermeta`
#

DROP TABLE IF EXISTS `wpc_2_usermeta`;


#
# Table structure of table `wpc_2_usermeta`
#

CREATE TABLE `wpc_2_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_usermeta`
#
INSERT INTO `wpc_2_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wpc_2_capabilities', 'a:2:{s:13:"administrator";b:1;s:13:"bbp_keymaster";b:1;}'),
(13, 1, 'wpc_2_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:10:{s:64:"c313f54485dd8be2742c4a46049f083506bfc9dbdcb8788f4563aa05d551d76a";a:4:{s:10:"expiration";i:1547045733;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546872933;}s:64:"217e44844c33af55c1bbc1d879905c02d813b3dd802665eb7dc0b77221864ef3";a:4:{s:10:"expiration";i:1547045850;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546873050;}s:64:"073ebba8204b7688f401650118c69a95862ed32a6aed346966a92b17ccdaef65";a:4:{s:10:"expiration";i:1547047238;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546874438;}s:64:"9d193255dbf3fd5c5c77cc648d11259f2d6e057174427fa9a278d24f817d106f";a:4:{s:10:"expiration";i:1548084039;s:2:"ip";s:10:"5.49.221.7";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546874439;}s:64:"2abf23bd45bbac9799f8c8a8cb011149ef655691c9cdc44a2de195cc85f9b5fa";a:4:{s:10:"expiration";i:1547047429;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0";s:5:"login";i:1546874629;}s:64:"d2049bd26803479c01d7713a28f396676ad34433d8434a4fdf6c6138458e4061";a:4:{s:10:"expiration";i:1547048519;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546875719;}s:64:"379c526444f9b8d972751e4e77da374b3eb5c35c72d022199379b20b3ef06236";a:4:{s:10:"expiration";i:1547048665;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546875865;}s:64:"3090a6957b181d30a4a828e652de89442895b66a574a4385dea558c674ce0b25";a:4:{s:10:"expiration";i:1547108113;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0";s:5:"login";i:1546935313;}s:64:"11f923169bfd37eb6c72bb69793a7dc41a826b904ae832bdfbaa426ec296f8d8";a:4:{s:10:"expiration";i:1547115163;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546942363;}s:64:"97070c1efb3f5e572df1d0d03928ea78a08ce4e71e2788731bdc3b7100295404";a:4:{s:10:"expiration";i:1547127767;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546954967;}}'),
(17, 1, 'wpc_2_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"147.210.245.0";}'),
(19, 2, 'nickname', 'jvanelian'),
(20, 2, 'first_name', ''),
(21, 2, 'last_name', ''),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wpc_2_capabilities', 'a:2:{s:13:"administrator";b:1;s:13:"bbp_keymaster";b:1;}'),
(31, 2, 'wpc_2_user_level', '10'),
(32, 2, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice,text_widget_custom_html'),
(33, 2, 'session_tokens', 'a:1:{s:64:"dbfb23467e21560c2b6299ef41009506ab3e6faf4797bab3a7fde1f6b1534948";a:4:{s:10:"expiration";i:1547047553;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0";s:5:"login";i:1546874753;}}'),
(34, 2, 'wpc_2_dashboard_quick_press_last_post_id', '5'),
(35, 2, 'community-events-location', 'a:1:{s:2:"ip";s:13:"147.210.245.0";}'),
(36, 3, 'nickname', 'tony'),
(37, 3, 'first_name', 'Tony'),
(38, 3, 'last_name', 'DUONG'),
(39, 3, 'description', ''),
(40, 3, 'rich_editing', 'true'),
(41, 3, 'syntax_highlighting', 'true'),
(42, 3, 'comment_shortcuts', 'false'),
(43, 3, 'admin_color', 'fresh'),
(44, 3, 'use_ssl', '0'),
(45, 3, 'show_admin_bar_front', 'true'),
(46, 3, 'locale', ''),
(47, 3, 'wpc_2_capabilities', 'a:2:{s:13:"administrator";b:1;s:13:"bbp_keymaster";b:1;}'),
(48, 3, 'wpc_2_user_level', '10'),
(49, 3, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(50, 3, 'session_tokens', 'a:2:{s:64:"9d4b4023fd79605a06a6f4cbf9cc45878d1995e3fff231c215e8877566e1c91a";a:4:{s:10:"expiration";i:1547047592;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0";s:5:"login";i:1546874792;}s:64:"82fe3de11d9a3376b97d51912f95a3f76584f3f3236a92be7b15b159870c33c3";a:4:{s:10:"expiration";i:1547104992;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:64.0) Gecko/20100101 Firefox/64.0";s:5:"login";i:1546932192;}}'),
(51, 3, 'wpc_2_dashboard_quick_press_last_post_id', '6'),
(52, 3, 'community-events-location', 'a:1:{s:2:"ip";s:13:"147.210.245.0";}'),
(53, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(54, 2, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(55, 2, 'nav_menu_recently_edited', '2'),
(56, 3, 'nav_menu_recently_edited', '2'),
(57, 3, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(58, 3, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(59, 2, 'wpc_2_user-settings', 'libraryContent=browse&editor=tinymce&advImgDetails=show'),
(60, 2, 'wpc_2_user-settings-time', '1546950866'),
(61, 4, 'nickname', 'sgaya'),
(62, 4, 'first_name', 'Sébastien'),
(63, 4, 'last_name', 'Gaya'),
(64, 4, 'description', ''),
(65, 4, 'rich_editing', 'true'),
(66, 4, 'syntax_highlighting', 'true'),
(67, 4, 'comment_shortcuts', 'false'),
(68, 4, 'admin_color', 'fresh'),
(69, 4, 'use_ssl', '0'),
(70, 4, 'show_admin_bar_front', 'true'),
(71, 4, 'locale', ''),
(72, 4, 'wpc_2_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(73, 4, 'wpc_2_user_level', '10'),
(74, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(75, 5, 'nickname', 'gaet'),
(76, 5, 'first_name', 'Gaétan'),
(77, 5, 'last_name', 'Basile'),
(78, 5, 'description', ''),
(79, 5, 'rich_editing', 'true'),
(80, 5, 'syntax_highlighting', 'true'),
(81, 5, 'comment_shortcuts', 'false'),
(82, 5, 'admin_color', 'fresh'),
(83, 5, 'use_ssl', '0'),
(84, 5, 'show_admin_bar_front', 'true'),
(85, 5, 'locale', ''),
(86, 5, 'wpc_2_capabilities', 'a:2:{s:13:"administrator";b:1;s:13:"bbp_keymaster";b:1;}'),
(87, 5, 'wpc_2_user_level', '10'),
(88, 5, 'dismissed_wp_pointers', 'wp496_privacy'),
(89, 5, 'session_tokens', 'a:1:{s:64:"ba79e885e11f9c54f8759c7cb3a0bd2ebe68c00df3b45791315476d398e605ea";a:4:{s:10:"expiration";i:1547130177;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:66.0) Gecko/20100101 Firefox/66.0";s:5:"login";i:1546957377;}}'),
(90, 5, 'wpc_2_dashboard_quick_press_last_post_id', '116'),
(91, 5, 'community-events-location', 'a:1:{s:2:"ip";s:13:"147.210.245.0";}'),
(92, 3, 'wpc_2_user-settings', 'libraryContent=browse'),
(93, 3, 'wpc_2_user-settings-time', '1546958439'),
(94, 6, 'nickname', 'tlecoq'),
(95, 6, 'first_name', 'Théo'),
(96, 6, 'last_name', 'Lecoq'),
(97, 6, 'description', ''),
(98, 6, 'rich_editing', 'true'),
(99, 6, 'syntax_highlighting', 'true'),
(100, 6, 'comment_shortcuts', 'false') ;
INSERT INTO `wpc_2_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(101, 6, 'admin_color', 'fresh'),
(102, 6, 'use_ssl', '0'),
(103, 6, 'show_admin_bar_front', 'true'),
(104, 6, 'locale', ''),
(105, 6, 'wpc_2_capabilities', 'a:2:{s:13:"administrator";b:1;s:13:"bbp_keymaster";b:1;}'),
(106, 6, 'wpc_2_user_level', '10'),
(107, 6, 'dismissed_wp_pointers', 'wp496_privacy'),
(108, 6, 'session_tokens', 'a:1:{s:64:"6faab43916f89c88dab7ec48e9a8706d4ba04a4051477ea3251cf57a15987c30";a:4:{s:10:"expiration";i:1548168179;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:76:"Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:63.0) Gecko/20100101 Firefox/63.0";s:5:"login";i:1546958579;}}') ;

#
# End of data contents of table `wpc_2_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_2_users`
#

DROP TABLE IF EXISTS `wpc_2_users`;


#
# Table structure of table `wpc_2_users`
#

CREATE TABLE `wpc_2_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_2_users`
#
INSERT INTO `wpc_2_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bpmid256aXjBHN4xaeVDa88pDZvcBs/', 'admin', 'sebastien.gaya@etu.u-bordeaux.fr', '', '2019-01-07 14:55:05', '', 0, 'admin'),
(2, 'jvanelian', '$P$BSCnFQ8mXorHEnUOtCCOGNnmbyylbA.', 'jvanelian', 'julienvanelian@hotmail.com', '', '2019-01-07 15:25:27', '', 0, 'jvanelian'),
(3, 'tony', '$P$B9S03XR6xq4nf2Ka5WzeYohJxNiZA10', 'tony', 'astowny@gmail.com', '', '2019-01-07 15:26:08', '1546874768:$P$BXGwocm7/9gHOJApkbW1j0lZCkAF4r.', 0, 'Tony DUONG'),
(4, 'sgaya', '$P$Bu33dFNriWnXx8knTJNVAncNbvs/ig0', 'sgaya', 'sebastien.gaya@gmail.com', 'https://sebastiengaya.fr', '2019-01-08 10:15:53', '1546942554:$P$BAssZw2iMab1DWfJh3t31m8YZH.Coi.', 0, 'Sébastien Gaya'),
(5, 'gaet', '$P$Bq7wnyjo0HWeamdWNT.dMdlZYN8drJ1', 'gaet', 'GAETAN.789@GMAIL.COM', '', '2019-01-08 14:22:26', '1546957346:$P$BwOKcU1WMctfKS5AjRYWHA8ZZu.Fot1', 0, 'Gaétan Basile'),
(6, 'tlecoq', '$P$BIbvzZ35KN0f3aAmvqVmYmU/QY5XbS1', 'tlecoq', 'theo.lecoq@etu.u-bordeaux.fr', '', '2019-01-08 14:42:44', '1546958564:$P$BnMV3Gqotdf/kUAgUY91d27jhRXQXC1', 0, 'Théo Lecoq') ;

#
# End of data contents of table `wpc_2_users`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_commentmeta`
#

DROP TABLE IF EXISTS `wpc_3_commentmeta`;


#
# Table structure of table `wpc_3_commentmeta`
#

CREATE TABLE `wpc_3_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_commentmeta`
#

#
# End of data contents of table `wpc_3_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_comments`
#

DROP TABLE IF EXISTS `wpc_3_comments`;


#
# Table structure of table `wpc_3_comments`
#

CREATE TABLE `wpc_3_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_comments`
#
INSERT INTO `wpc_3_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-07 15:03:35', '2019-01-07 14:03:35', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wpc_3_comments`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_links`
#

DROP TABLE IF EXISTS `wpc_3_links`;


#
# Table structure of table `wpc_3_links`
#

CREATE TABLE `wpc_3_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_links`
#

#
# End of data contents of table `wpc_3_links`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_options`
#

DROP TABLE IF EXISTS `wpc_3_options`;


#
# Table structure of table `wpc_3_options`
#

CREATE TABLE `wpc_3_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_options`
#
INSERT INTO `wpc_3_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://cohabit.utila.io/technoshop', 'yes'),
(2, 'home', 'http://cohabit.utila.io/technoshop', 'yes'),
(3, 'blogname', 'Technoshop', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jules.raffoux@etu.u-bordeaux.fr', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=75&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:74:"/home/utilaiomqg/www/cohabit/wp-content/themes/twentynineteen/style.css";i:1;s:78:"/home/utilaiomqg/www/cohabit/wp-content/themes/twentynineteen/functions.php";i:3;s:0:"";}', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
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
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '75', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wpc_3_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wpc_3_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1546963416;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1546999416;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1547044639;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1547047452;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}}', 'yes'),
(134, 'can_compress_scripts', '1', 'no'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(151, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1546960225;}', 'no'),
(206, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(222, 'category_children', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wpc_3_options`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_postmeta`
#

DROP TABLE IF EXISTS `wpc_3_postmeta`;


#
# Table structure of table `wpc_3_postmeta`
#

CREATE TABLE `wpc_3_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_postmeta`
#
INSERT INTO `wpc_3_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1546874639:2'),
(4, 8, '_edit_lock', '1546874794:2'),
(5, 1, '_edit_lock', '1546874805:2'),
(6, 10, '_edit_lock', '1546874852:2'),
(11, 10, '_wp_old_slug', 'cohbit-dimension-sociale'),
(12, 12, '_edit_lock', '1546874914:2'),
(17, 12, '_wp_old_slug', 'cohbit-dimension-economique-et-territoriale'),
(18, 14, '_edit_lock', '1546874936:2'),
(19, 15, '_edit_lock', '1546874999:2'),
(20, 17, '_edit_lock', '1546875256:2'),
(25, 17, '_wp_old_slug', 'nos-mecenes'),
(26, 19, '_edit_lock', '1546875186:2'),
(31, 19, '_wp_old_slug', 'nos-partenaires'),
(32, 21, '_edit_lock', '1546875105:2'),
(35, 19, '_wp_old_slug', 'partenaires'),
(40, 17, '_wp_old_slug', 'mecenes'),
(41, 26, '_edit_lock', '1546875327:2'),
(42, 28, '_edit_lock', '1546875482:2'),
(43, 30, '_edit_lock', '1546875599:2'),
(44, 32, '_edit_lock', '1546877895:2'),
(45, 34, '_edit_lock', '1546877930:2'),
(50, 34, '_wp_old_slug', 'savoir-faire-et-competences'),
(51, 36, '_edit_lock', '1546877957:2'),
(56, 36, '_wp_old_slug', 'ressources-et-environnement'),
(57, 38, '_edit_lock', '1546878987:2'),
(62, 38, '_wp_old_slug', 'notre-approche-des-projets-et-nos-methodes'),
(63, 40, '_edit_lock', '1546879032:2'),
(64, 42, '_edit_lock', '1546879063:2'),
(65, 44, '_edit_lock', '1546879369:2'),
(70, 44, '_wp_old_slug', 'recherche-et-innovation'),
(71, 46, '_edit_lock', '1546879422:2'),
(76, 46, '_wp_old_slug', 'creations-de-solutions-technologiques'),
(77, 48, '_edit_lock', '1546879464:2'),
(80, 50, '_edit_lock', '1546879505:2'),
(83, 52, '_menu_item_type', 'post_type'),
(84, 52, '_menu_item_menu_item_parent', '0'),
(85, 52, '_menu_item_object_id', '42'),
(86, 52, '_menu_item_object', 'page'),
(87, 52, '_menu_item_target', ''),
(88, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(89, 52, '_menu_item_xfn', ''),
(90, 52, '_menu_item_url', ''),
(92, 53, '_menu_item_type', 'post_type'),
(93, 53, '_menu_item_menu_item_parent', '0'),
(94, 53, '_menu_item_object_id', '40'),
(95, 53, '_menu_item_object', 'page'),
(96, 53, '_menu_item_target', ''),
(97, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 53, '_menu_item_xfn', ''),
(99, 53, '_menu_item_url', ''),
(101, 54, '_menu_item_type', 'post_type'),
(102, 54, '_menu_item_menu_item_parent', '56'),
(103, 54, '_menu_item_object_id', '32'),
(104, 54, '_menu_item_object', 'page'),
(105, 54, '_menu_item_target', ''),
(106, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(107, 54, '_menu_item_xfn', ''),
(108, 54, '_menu_item_url', ''),
(110, 55, '_menu_item_type', 'post_type'),
(111, 55, '_menu_item_menu_item_parent', '0'),
(112, 55, '_menu_item_object_id', '30'),
(113, 55, '_menu_item_object', 'page'),
(114, 55, '_menu_item_target', ''),
(115, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(116, 55, '_menu_item_xfn', ''),
(117, 55, '_menu_item_url', ''),
(118, 55, '_menu_item_orphaned', '1546879672'),
(119, 56, '_menu_item_type', 'post_type'),
(120, 56, '_menu_item_menu_item_parent', '57'),
(121, 56, '_menu_item_object_id', '28'),
(122, 56, '_menu_item_object', 'page'),
(123, 56, '_menu_item_target', ''),
(124, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(125, 56, '_menu_item_xfn', ''),
(126, 56, '_menu_item_url', ''),
(128, 57, '_menu_item_type', 'post_type'),
(129, 57, '_menu_item_menu_item_parent', '0'),
(130, 57, '_menu_item_object_id', '26'),
(131, 57, '_menu_item_object', 'page'),
(132, 57, '_menu_item_target', ''),
(133, 57, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(134, 57, '_menu_item_xfn', ''),
(135, 57, '_menu_item_url', ''),
(137, 58, '_menu_item_type', 'post_type'),
(138, 58, '_menu_item_menu_item_parent', '0'),
(139, 58, '_menu_item_object_id', '21'),
(140, 58, '_menu_item_object', 'page'),
(141, 58, '_menu_item_target', ''),
(142, 58, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(143, 58, '_menu_item_xfn', ''),
(144, 58, '_menu_item_url', ''),
(146, 59, '_menu_item_type', 'post_type'),
(147, 59, '_menu_item_menu_item_parent', '0'),
(148, 59, '_menu_item_object_id', '15'),
(149, 59, '_menu_item_object', 'page'),
(150, 59, '_menu_item_target', ''),
(151, 59, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(152, 59, '_menu_item_xfn', '') ;
INSERT INTO `wpc_3_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(153, 59, '_menu_item_url', ''),
(155, 60, '_menu_item_type', 'post_type'),
(156, 60, '_menu_item_menu_item_parent', '0'),
(157, 60, '_menu_item_object_id', '8'),
(158, 60, '_menu_item_object', 'page'),
(159, 60, '_menu_item_target', ''),
(160, 60, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(161, 60, '_menu_item_xfn', ''),
(162, 60, '_menu_item_url', ''),
(164, 61, '_menu_item_type', 'post_type'),
(165, 61, '_menu_item_menu_item_parent', '0'),
(166, 61, '_menu_item_object_id', '6'),
(167, 61, '_menu_item_object', 'page'),
(168, 61, '_menu_item_target', ''),
(169, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(170, 61, '_menu_item_xfn', ''),
(171, 61, '_menu_item_url', ''),
(293, 75, '_edit_lock', '1546884922:2'),
(294, 77, '_menu_item_type', 'post_type'),
(295, 77, '_menu_item_menu_item_parent', '0'),
(296, 77, '_menu_item_object_id', '75'),
(297, 77, '_menu_item_object', 'page'),
(298, 77, '_menu_item_target', ''),
(299, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(300, 77, '_menu_item_xfn', ''),
(301, 77, '_menu_item_url', ''),
(302, 77, '_menu_item_orphaned', '1546884823'),
(303, 78, '_menu_item_type', 'post_type'),
(304, 78, '_menu_item_menu_item_parent', '0'),
(305, 78, '_menu_item_object_id', '75'),
(306, 78, '_menu_item_object', 'page'),
(307, 78, '_menu_item_target', ''),
(308, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(309, 78, '_menu_item_xfn', ''),
(310, 78, '_menu_item_url', ''),
(311, 78, '_menu_item_orphaned', '1546884852'),
(312, 80, '_menu_item_type', 'post_type'),
(313, 80, '_menu_item_menu_item_parent', '0'),
(314, 80, '_menu_item_object_id', '75'),
(315, 80, '_menu_item_object', 'page'),
(316, 80, '_menu_item_target', ''),
(317, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(318, 80, '_menu_item_xfn', ''),
(319, 80, '_menu_item_url', ''),
(320, 80, '_menu_item_orphaned', '1546885114'),
(360, 50, '_wp_trash_meta_status', 'publish'),
(361, 50, '_wp_trash_meta_time', '1546937574'),
(362, 50, '_wp_desired_post_slug', 'cooperation-de-moyens'),
(363, 48, '_wp_trash_meta_status', 'publish'),
(364, 48, '_wp_trash_meta_time', '1546937574'),
(365, 48, '_wp_desired_post_slug', 'management-de-projet-industriel'),
(366, 46, '_wp_trash_meta_status', 'publish'),
(367, 46, '_wp_trash_meta_time', '1546937574'),
(368, 46, '_wp_desired_post_slug', 'creationssolutionstechnologiques'),
(369, 44, '_wp_trash_meta_status', 'publish'),
(370, 44, '_wp_trash_meta_time', '1546937574'),
(371, 44, '_wp_desired_post_slug', 'rechercheinnovation'),
(372, 38, '_wp_trash_meta_status', 'publish'),
(373, 38, '_wp_trash_meta_time', '1546937574'),
(374, 38, '_wp_desired_post_slug', 'approcheprojets-et-methodes'),
(375, 36, '_wp_trash_meta_status', 'publish'),
(376, 36, '_wp_trash_meta_time', '1546937574'),
(377, 36, '_wp_desired_post_slug', 'ressourcesenvironnement'),
(378, 34, '_wp_trash_meta_status', 'publish'),
(379, 34, '_wp_trash_meta_time', '1546937574'),
(380, 34, '_wp_desired_post_slug', 'savoir-fairecompetences'),
(381, 19, '_wp_trash_meta_status', 'publish'),
(382, 19, '_wp_trash_meta_time', '1546937574'),
(383, 19, '_wp_desired_post_slug', 'pourquoi-comment-nous-soutenir'),
(384, 17, '_wp_trash_meta_status', 'publish'),
(385, 17, '_wp_trash_meta_time', '1546937574'),
(386, 17, '_wp_desired_post_slug', 'mecenes-et-partenaires'),
(387, 12, '_wp_trash_meta_status', 'publish'),
(388, 12, '_wp_trash_meta_time', '1546937574'),
(389, 12, '_wp_desired_post_slug', 'cohabit-dimensioneconomiqueterritoriale'),
(390, 10, '_wp_trash_meta_status', 'publish'),
(391, 10, '_wp_trash_meta_time', '1546937574'),
(392, 10, '_wp_desired_post_slug', 'cohabit-dimensionsociale'),
(393, 82, '_edit_lock', '1546940612:2'),
(394, 84, '_edit_lock', '1546940635:2'),
(395, 86, '_edit_lock', '1546940669:2'),
(396, 88, '_edit_lock', '1546940707:2'),
(397, 90, '_edit_lock', '1546940712:2'),
(398, 91, '_edit_lock', '1546940747:2'),
(399, 93, '_edit_lock', '1546940763:2'),
(400, 95, '_edit_lock', '1546940781:2'),
(401, 97, '_edit_lock', '1546940801:2'),
(402, 99, '_edit_lock', '1546940872:2'),
(403, 100, '_wp_trash_meta_status', 'publish'),
(404, 100, '_wp_trash_meta_time', '1546940965'),
(405, 102, '_edit_lock', '1546940926:2'),
(406, 104, '_edit_lock', '1546940955:2'),
(407, 106, '_menu_item_type', 'post_type'),
(408, 106, '_menu_item_menu_item_parent', '60'),
(409, 106, '_menu_item_object_id', '104'),
(410, 106, '_menu_item_object', 'page'),
(411, 106, '_menu_item_target', ''),
(412, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(413, 106, '_menu_item_xfn', ''),
(414, 106, '_menu_item_url', '') ;
INSERT INTO `wpc_3_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(416, 107, '_menu_item_type', 'post_type'),
(417, 107, '_menu_item_menu_item_parent', '60'),
(418, 107, '_menu_item_object_id', '102'),
(419, 107, '_menu_item_object', 'page'),
(420, 107, '_menu_item_target', ''),
(421, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(422, 107, '_menu_item_xfn', ''),
(423, 107, '_menu_item_url', ''),
(425, 108, '_menu_item_type', 'post_type'),
(426, 108, '_menu_item_menu_item_parent', '59'),
(427, 108, '_menu_item_object_id', '99'),
(428, 108, '_menu_item_object', 'page'),
(429, 108, '_menu_item_target', ''),
(430, 108, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(431, 108, '_menu_item_xfn', ''),
(432, 108, '_menu_item_url', ''),
(434, 109, '_menu_item_type', 'post_type'),
(435, 109, '_menu_item_menu_item_parent', '59'),
(436, 109, '_menu_item_object_id', '97'),
(437, 109, '_menu_item_object', 'page'),
(438, 109, '_menu_item_target', ''),
(439, 109, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(440, 109, '_menu_item_xfn', ''),
(441, 109, '_menu_item_url', ''),
(443, 110, '_menu_item_type', 'post_type'),
(444, 110, '_menu_item_menu_item_parent', '54'),
(445, 110, '_menu_item_object_id', '95'),
(446, 110, '_menu_item_object', 'page'),
(447, 110, '_menu_item_target', ''),
(448, 110, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(449, 110, '_menu_item_xfn', ''),
(450, 110, '_menu_item_url', ''),
(452, 111, '_menu_item_type', 'post_type'),
(453, 111, '_menu_item_menu_item_parent', '54'),
(454, 111, '_menu_item_object_id', '93'),
(455, 111, '_menu_item_object', 'page'),
(456, 111, '_menu_item_target', ''),
(457, 111, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(458, 111, '_menu_item_xfn', ''),
(459, 111, '_menu_item_url', ''),
(461, 112, '_menu_item_type', 'post_type'),
(462, 112, '_menu_item_menu_item_parent', '54'),
(463, 112, '_menu_item_object_id', '91'),
(464, 112, '_menu_item_object', 'page'),
(465, 112, '_menu_item_target', ''),
(466, 112, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(467, 112, '_menu_item_xfn', ''),
(468, 112, '_menu_item_url', ''),
(470, 113, '_menu_item_type', 'post_type'),
(471, 113, '_menu_item_menu_item_parent', '53'),
(472, 113, '_menu_item_object_id', '88'),
(473, 113, '_menu_item_object', 'page'),
(474, 113, '_menu_item_target', ''),
(475, 113, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(476, 113, '_menu_item_xfn', ''),
(477, 113, '_menu_item_url', ''),
(479, 114, '_menu_item_type', 'post_type'),
(480, 114, '_menu_item_menu_item_parent', '53'),
(481, 114, '_menu_item_object_id', '86'),
(482, 114, '_menu_item_object', 'page'),
(483, 114, '_menu_item_target', ''),
(484, 114, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(485, 114, '_menu_item_xfn', ''),
(486, 114, '_menu_item_url', ''),
(488, 115, '_menu_item_type', 'post_type'),
(489, 115, '_menu_item_menu_item_parent', '53'),
(490, 115, '_menu_item_object_id', '84'),
(491, 115, '_menu_item_object', 'page'),
(492, 115, '_menu_item_target', ''),
(493, 115, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(494, 115, '_menu_item_xfn', ''),
(495, 115, '_menu_item_url', ''),
(497, 116, '_menu_item_type', 'post_type'),
(498, 116, '_menu_item_menu_item_parent', '53'),
(499, 116, '_menu_item_object_id', '82'),
(500, 116, '_menu_item_object', 'page'),
(501, 116, '_menu_item_target', ''),
(502, 116, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(503, 116, '_menu_item_xfn', ''),
(504, 116, '_menu_item_url', '') ;

#
# End of data contents of table `wpc_3_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_posts`
#

DROP TABLE IF EXISTS `wpc_3_posts`;


#
# Table structure of table `wpc_3_posts`
#

CREATE TABLE `wpc_3_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_posts`
#
INSERT INTO `wpc_3_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-07 15:03:35', '2019-01-07 14:03:35', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-01-07 15:03:35', '2019-01-07 14:03:35', '', 0, 'http://cohabit.utila.io/technoshop/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-07 15:03:35', '2019-01-07 14:03:35', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://cohabit.utila.io/technoshop/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-01-07 15:03:35', '2019-01-07 14:03:35', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-07 15:03:35', '2019-01-07 14:03:35', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://cohabit.utila.io/technoshop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-01-07 15:03:35', '2019-01-07 14:03:35', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-07 15:03:41', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-07 15:03:41', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=4', 0, 'post', '', 0),
(5, 2, '2019-01-07 16:22:24', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-07 16:22:24', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=5', 0, 'post', '', 0),
(6, 2, '2019-01-07 16:24:54', '2019-01-07 15:24:54', '', 'L\'Histoire de Coh@bit', '', 'publish', 'closed', 'closed', '', 'histoirecohabit', '', '', '2019-01-08 10:43:55', '2019-01-08 09:43:55', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=6', 0, 'page', '', 0),
(7, 2, '2019-01-07 16:24:54', '2019-01-07 15:24:54', '', 'L\'Histoire de Coh@bit', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-01-07 16:24:54', '2019-01-07 15:24:54', '', 6, 'http://cohabit.utila.io/technoshop/2019/01/07/6-revision-v1/', 0, 'revision', '', 0),
(8, 2, '2019-01-07 16:28:21', '2019-01-07 15:28:21', '', 'La volonté de Coh@bit', '', 'publish', 'closed', 'closed', '', 'volontecohabit', '', '', '2019-01-08 10:43:55', '2019-01-08 09:43:55', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=8', 0, 'page', '', 0),
(9, 2, '2019-01-07 16:28:21', '2019-01-07 15:28:21', '', 'La volonté de Coh@bit', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-01-07 16:28:21', '2019-01-07 15:28:21', '', 8, 'http://cohabit.utila.io/technoshop/2019/01/07/8-revision-v1/', 0, 'revision', '', 0),
(10, 2, '2019-01-07 16:29:34', '2019-01-07 15:29:34', '', 'Coh@bit - Dimension sociale', '', 'trash', 'open', 'open', '', 'cohabit-dimensionsociale__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=10', 0, 'post', '', 0),
(11, 2, '2019-01-07 16:29:34', '2019-01-07 15:29:34', '', 'Coh@bit - Dimension sociale', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-01-07 16:29:34', '2019-01-07 15:29:34', '', 10, 'http://cohabit.utila.io/technoshop/2019/01/07/10-revision-v1/', 0, 'revision', '', 0),
(12, 2, '2019-01-07 16:30:30', '2019-01-07 15:30:30', '', 'Coh@bit - Dimension économique et territoriale', '', 'trash', 'open', 'open', '', 'cohabit-dimensioneconomiqueterritoriale__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=12', 0, 'post', '', 0),
(13, 2, '2019-01-07 16:30:30', '2019-01-07 15:30:30', '', 'Coh@bit - Dimension économique et territoriale', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2019-01-07 16:30:30', '2019-01-07 15:30:30', '', 12, 'http://cohabit.utila.io/technoshop/2019/01/07/12-revision-v1/', 0, 'revision', '', 0),
(14, 2, '2019-01-07 16:31:14', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-07 16:31:14', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=14', 0, 'post', '', 0),
(15, 2, '2019-01-07 16:31:55', '2019-01-07 15:31:55', '', 'Nos Mécènes et nos Partenaires', '', 'publish', 'closed', 'closed', '', 'mecenespartenaires', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=15', 0, 'page', '', 0),
(16, 2, '2019-01-07 16:31:55', '2019-01-07 15:31:55', '', 'Nos Mécènes et nos Partenaires', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-01-07 16:31:55', '2019-01-07 15:31:55', '', 15, 'http://cohabit.utila.io/technoshop/2019/01/07/15-revision-v1/', 0, 'revision', '', 0),
(17, 2, '2019-01-07 16:32:43', '2019-01-07 15:32:43', '', 'Liste de nos mécènes et de nos partenaires', '', 'trash', 'open', 'open', '', 'mecenes-et-partenaires__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=17', 0, 'post', '', 0),
(18, 2, '2019-01-07 16:32:43', '2019-01-07 15:32:43', '', 'Nos mécènes', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-07 16:32:43', '2019-01-07 15:32:43', '', 17, 'http://cohabit.utila.io/technoshop/2019/01/07/17-revision-v1/', 0, 'revision', '', 0),
(19, 2, '2019-01-07 16:33:11', '2019-01-07 15:33:11', '', 'Pourquoi et comment nous soutenir ?', '', 'trash', 'open', 'open', '', 'pourquoi-comment-nous-soutenir__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=19', 0, 'post', '', 0),
(20, 2, '2019-01-07 16:33:11', '2019-01-07 15:33:11', '', 'Nos partenaires', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-01-07 16:33:11', '2019-01-07 15:33:11', '', 19, 'http://cohabit.utila.io/technoshop/2019/01/07/19-revision-v1/', 0, 'revision', '', 0),
(21, 2, '2019-01-07 16:33:54', '2019-01-07 15:33:54', '', 'Nos solutions', '', 'publish', 'closed', 'closed', '', 'solutions', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=21', 0, 'page', '', 0),
(22, 2, '2019-01-07 16:33:54', '2019-01-07 15:33:54', '', 'Nos solutions', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-01-07 16:33:54', '2019-01-07 15:33:54', '', 21, 'http://cohabit.utila.io/technoshop/2019/01/07/21-revision-v1/', 0, 'revision', '', 0),
(23, 2, '2019-01-07 16:35:22', '2019-01-07 15:35:22', '', 'Pourquoi et comment nous soutenir ?', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2019-01-07 16:35:22', '2019-01-07 15:35:22', '', 19, 'http://cohabit.utila.io/technoshop/2019/01/07/19-revision-v1/', 0, 'revision', '', 0),
(24, 2, '2019-01-07 16:35:48', '2019-01-07 15:35:48', '', 'Liste de nos partenaires', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-07 16:35:48', '2019-01-07 15:35:48', '', 17, 'http://cohabit.utila.io/technoshop/2019/01/07/17-revision-v1/', 0, 'revision', '', 0),
(25, 2, '2019-01-07 16:36:28', '2019-01-07 15:36:28', '', 'Liste de nos mécènes et de nos partenaires', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-01-07 16:36:28', '2019-01-07 15:36:28', '', 17, 'http://cohabit.utila.io/technoshop/2019/01/07/17-revision-v1/', 0, 'revision', '', 0),
(26, 2, '2019-01-07 16:37:40', '2019-01-07 15:37:40', '', 'Notre structure', '', 'publish', 'closed', 'closed', '', 'structure', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=26', 0, 'page', '', 0),
(27, 2, '2019-01-07 16:37:40', '2019-01-07 15:37:40', '', 'Notre structure', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-01-07 16:37:40', '2019-01-07 15:37:40', '', 26, 'http://cohabit.utila.io/technoshop/2019/01/07/26-revision-v1/', 0, 'revision', '', 0),
(28, 2, '2019-01-07 16:40:06', '2019-01-07 15:40:06', '', 'Technoshop', '', 'publish', 'closed', 'closed', '', 'technoshop', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=28', 0, 'page', '', 0),
(29, 2, '2019-01-07 16:40:06', '2019-01-07 15:40:06', '', 'Technoshop', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-01-07 16:40:06', '2019-01-07 15:40:06', '', 28, 'http://cohabit.utila.io/technoshop/2019/01/07/28-revision-v1/', 0, 'revision', '', 0),
(30, 2, '2019-01-07 16:40:48', '2019-01-07 15:40:48', '', 'Les réalisations', '', 'publish', 'closed', 'closed', '', 'realisations', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=30', 0, 'page', '', 0),
(31, 2, '2019-01-07 16:40:48', '2019-01-07 15:40:48', '', 'Les réalisations', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-01-07 16:40:48', '2019-01-07 15:40:48', '', 30, 'http://cohabit.utila.io/technoshop/2019/01/07/30-revision-v1/', 0, 'revision', '', 0),
(32, 2, '2019-01-07 17:20:24', '2019-01-07 16:20:24', '', 'Notre patrimoine technologique', '', 'publish', 'closed', 'closed', '', 'patrimoinetechnologique', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=32', 0, 'page', '', 0),
(33, 2, '2019-01-07 17:20:24', '2019-01-07 16:20:24', '', 'Notre patrimoine technologique', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2019-01-07 17:20:24', '2019-01-07 16:20:24', '', 32, 'http://cohabit.utila.io/technoshop/2019/01/07/32-revision-v1/', 0, 'revision', '', 0),
(34, 2, '2019-01-07 17:21:00', '2019-01-07 16:21:00', '', 'Savoir-faire et compétences', '', 'trash', 'open', 'open', '', 'savoir-fairecompetences__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=34', 0, 'post', '', 0),
(35, 2, '2019-01-07 17:21:00', '2019-01-07 16:21:00', '', 'Savoir-faire et compétences', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-01-07 17:21:00', '2019-01-07 16:21:00', '', 34, 'http://cohabit.utila.io/technoshop/2019/01/07/34-revision-v1/', 0, 'revision', '', 0),
(36, 2, '2019-01-07 17:21:31', '2019-01-07 16:21:31', '', 'Ressources et environnement', '', 'trash', 'open', 'open', '', 'ressourcesenvironnement__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=36', 0, 'post', '', 0),
(37, 2, '2019-01-07 17:21:31', '2019-01-07 16:21:31', '', 'Ressources et environnement', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2019-01-07 17:21:31', '2019-01-07 16:21:31', '', 36, 'http://cohabit.utila.io/technoshop/2019/01/07/36-revision-v1/', 0, 'revision', '', 0),
(38, 2, '2019-01-07 17:36:26', '2019-01-07 16:36:26', '', 'Notre approche des projets et nos méthodes', '', 'trash', 'open', 'open', '', 'approcheprojets-et-methodes__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=38', 0, 'post', '', 0),
(39, 2, '2019-01-07 17:36:26', '2019-01-07 16:36:26', '', 'Notre approche des projets et nos méthodes', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2019-01-07 17:36:26', '2019-01-07 16:36:26', '', 38, 'http://cohabit.utila.io/technoshop/2019/01/07/38-revision-v1/', 0, 'revision', '', 0),
(40, 2, '2019-01-07 17:39:22', '2019-01-07 16:39:22', '', 'Nos offres', '', 'publish', 'closed', 'closed', '', 'offres', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=40', 0, 'page', '', 0),
(41, 2, '2019-01-07 17:39:22', '2019-01-07 16:39:22', '', 'Nos offres', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2019-01-07 17:39:22', '2019-01-07 16:39:22', '', 40, 'http://cohabit.utila.io/technoshop/2019/01/07/40-revision-v1/', 0, 'revision', '', 0),
(42, 2, '2019-01-07 17:39:55', '2019-01-07 16:39:55', '', 'Nos réalisations', '', 'publish', 'closed', 'closed', '', 'realisations-2', '', '', '2019-01-08 10:43:56', '2019-01-08 09:43:56', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=42', 0, 'page', '', 0),
(43, 2, '2019-01-07 17:39:55', '2019-01-07 16:39:55', '', 'Nos réalisations', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2019-01-07 17:39:55', '2019-01-07 16:39:55', '', 42, 'http://cohabit.utila.io/technoshop/2019/01/07/42-revision-v1/', 0, 'revision', '', 0),
(44, 2, '2019-01-07 17:44:56', '2019-01-07 16:44:56', '', 'Recherche et innovation', '', 'trash', 'open', 'open', '', 'rechercheinnovation__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=44', 0, 'post', '', 0),
(45, 2, '2019-01-07 17:44:56', '2019-01-07 16:44:56', '', 'Recherche et innovation', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-01-07 17:44:56', '2019-01-07 16:44:56', '', 44, 'http://cohabit.utila.io/technoshop/2019/01/07/44-revision-v1/', 0, 'revision', '', 0),
(46, 2, '2019-01-07 17:45:48', '2019-01-07 16:45:48', '', 'Créations de solutions technologiques', '', 'trash', 'open', 'open', '', 'creationssolutionstechnologiques__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=46', 0, 'post', '', 0),
(47, 2, '2019-01-07 17:45:48', '2019-01-07 16:45:48', '', 'Créations de solutions technologiques', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-01-07 17:45:48', '2019-01-07 16:45:48', '', 46, 'http://cohabit.utila.io/technoshop/2019/01/07/46-revision-v1/', 0, 'revision', '', 0),
(48, 2, '2019-01-07 17:46:38', '2019-01-07 16:46:38', '', 'Management de projet industriel', '', 'trash', 'open', 'open', '', 'management-de-projet-industriel__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=48', 0, 'post', '', 0),
(49, 2, '2019-01-07 17:46:38', '2019-01-07 16:46:38', '', 'Management de projet industriel', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2019-01-07 17:46:38', '2019-01-07 16:46:38', '', 48, 'http://cohabit.utila.io/technoshop/2019/01/07/48-revision-v1/', 0, 'revision', '', 0),
(50, 2, '2019-01-07 17:47:20', '2019-01-07 16:47:20', '', 'Coopération de moyens', '', 'trash', 'open', 'open', '', 'cooperation-de-moyens__trashed', '', '', '2019-01-08 09:52:54', '2019-01-08 08:52:54', '', 0, 'http://cohabit.utila.io/technoshop/?p=50', 0, 'post', '', 0),
(51, 2, '2019-01-07 17:47:20', '2019-01-07 16:47:20', '', 'Coopération de moyens', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2019-01-07 17:47:20', '2019-01-07 16:47:20', '', 50, 'http://cohabit.utila.io/technoshop/2019/01/07/50-revision-v1/', 0, 'revision', '', 0),
(52, 2, '2019-01-07 17:54:30', '2019-01-07 16:54:30', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=52', 20, 'nav_menu_item', '', 0),
(53, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=53', 15, 'nav_menu_item', '', 0),
(54, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=54', 11, 'nav_menu_item', '', 0),
(55, 2, '2019-01-07 17:47:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 17:47:52', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=55', 1, 'nav_menu_item', '', 0),
(56, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=56', 10, 'nav_menu_item', '', 0),
(57, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=57', 9, 'nav_menu_item', '', 0),
(58, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '58', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=58', 8, 'nav_menu_item', '', 0),
(59, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '59', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=59', 5, 'nav_menu_item', '', 0),
(60, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=60', 2, 'nav_menu_item', '', 0),
(61, 2, '2019-01-07 17:54:29', '2019-01-07 16:54:29', '', 'L\'Histoire de Coh@bit', '', 'publish', 'closed', 'closed', '', 'lhistoire-de-cohbit', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=61', 1, 'nav_menu_item', '', 0),
(75, 2, '2019-01-07 19:13:14', '2019-01-07 18:13:14', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-01-08 10:43:55', '2019-01-08 09:43:55', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=75', 0, 'page', '', 0),
(76, 2, '2019-01-07 19:13:14', '2019-01-07 18:13:14', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2019-01-07 19:13:14', '2019-01-07 18:13:14', '', 75, 'http://cohabit.utila.io/technoshop/2019/01/07/75-revision-v1/', 0, 'revision', '', 0),
(77, 2, '2019-01-07 19:13:43', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 19:13:43', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=77', 1, 'nav_menu_item', '', 0),
(78, 2, '2019-01-07 19:14:12', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 19:14:12', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=78', 1, 'nav_menu_item', '', 0),
(80, 2, '2019-01-07 19:18:34', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-01-07 19:18:34', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=80', 1, 'nav_menu_item', '', 0),
(82, 2, '2019-01-08 10:45:53', '2019-01-08 09:45:53', '', 'Coopération de moyens', '', 'publish', 'closed', 'closed', '', 'cooperation-de-moyens', '', '', '2019-01-08 10:45:53', '2019-01-08 09:45:53', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=82', 0, 'page', '', 0),
(83, 2, '2019-01-08 10:45:53', '2019-01-08 09:45:53', '', 'Coopération de moyens', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2019-01-08 10:45:53', '2019-01-08 09:45:53', '', 82, 'http://cohabit.utila.io/technoshop/2019/01/08/82-revision-v1/', 0, 'revision', '', 0),
(84, 2, '2019-01-08 10:46:16', '2019-01-08 09:46:16', '', 'Management de projet industriel', '', 'publish', 'closed', 'closed', '', 'management-de-projet-industriel', '', '', '2019-01-08 10:46:16', '2019-01-08 09:46:16', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=84', 0, 'page', '', 0),
(85, 2, '2019-01-08 10:46:16', '2019-01-08 09:46:16', '', 'Management de projet industriel', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2019-01-08 10:46:16', '2019-01-08 09:46:16', '', 84, 'http://cohabit.utila.io/technoshop/2019/01/08/84-revision-v1/', 0, 'revision', '', 0),
(86, 2, '2019-01-08 10:46:42', '2019-01-08 09:46:42', '', 'Créations de solutions technologiques', '', 'publish', 'closed', 'closed', '', 'creations-de-solutions-technologiques', '', '', '2019-01-08 10:46:42', '2019-01-08 09:46:42', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=86', 0, 'page', '', 0),
(87, 2, '2019-01-08 10:46:42', '2019-01-08 09:46:42', '', 'Créations de solutions technologiques', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2019-01-08 10:46:42', '2019-01-08 09:46:42', '', 86, 'http://cohabit.utila.io/technoshop/2019/01/08/86-revision-v1/', 0, 'revision', '', 0),
(88, 2, '2019-01-08 10:47:08', '2019-01-08 09:47:08', '', 'Recherche et innovation', '', 'publish', 'closed', 'closed', '', 'recherche-et-innovation', '', '', '2019-01-08 10:47:08', '2019-01-08 09:47:08', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=88', 0, 'page', '', 0),
(89, 2, '2019-01-08 10:47:08', '2019-01-08 09:47:08', '', 'Recherche et innovation', '', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2019-01-08 10:47:08', '2019-01-08 09:47:08', '', 88, 'http://cohabit.utila.io/technoshop/2019/01/08/88-revision-v1/', 0, 'revision', '', 0),
(90, 2, '2019-01-08 10:47:33', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-01-08 10:47:33', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=90', 0, 'page', '', 0),
(91, 2, '2019-01-08 10:48:06', '2019-01-08 09:48:06', '', 'Notre approche des projets et nos méthodes', '', 'publish', 'closed', 'closed', '', 'notre-approche-des-projets-et-nos-methodes', '', '', '2019-01-08 10:48:06', '2019-01-08 09:48:06', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=91', 0, 'page', '', 0),
(92, 2, '2019-01-08 10:48:06', '2019-01-08 09:48:06', '', 'Notre approche des projets et nos méthodes', '', 'inherit', 'closed', 'closed', '', '91-revision-v1', '', '', '2019-01-08 10:48:06', '2019-01-08 09:48:06', '', 91, 'http://cohabit.utila.io/technoshop/2019/01/08/91-revision-v1/', 0, 'revision', '', 0),
(93, 2, '2019-01-08 10:48:24', '2019-01-08 09:48:24', '', 'Ressources et environnement', '', 'publish', 'closed', 'closed', '', 'ressources-et-environnement', '', '', '2019-01-08 10:48:24', '2019-01-08 09:48:24', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=93', 0, 'page', '', 0),
(94, 2, '2019-01-08 10:48:24', '2019-01-08 09:48:24', '', 'Ressources et environnement', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2019-01-08 10:48:24', '2019-01-08 09:48:24', '', 93, 'http://cohabit.utila.io/technoshop/2019/01/08/93-revision-v1/', 0, 'revision', '', 0),
(95, 2, '2019-01-08 10:48:42', '2019-01-08 09:48:42', '', 'Savoir-faire et compétences', '', 'publish', 'closed', 'closed', '', 'savoir-faire-et-competences', '', '', '2019-01-08 10:48:42', '2019-01-08 09:48:42', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=95', 0, 'page', '', 0),
(96, 2, '2019-01-08 10:48:42', '2019-01-08 09:48:42', '', 'Savoir-faire et compétences', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2019-01-08 10:48:42', '2019-01-08 09:48:42', '', 95, 'http://cohabit.utila.io/technoshop/2019/01/08/95-revision-v1/', 0, 'revision', '', 0),
(97, 2, '2019-01-08 10:48:59', '2019-01-08 09:48:59', '', 'Pourquoi et comment nous soutenir ?', '', 'publish', 'closed', 'closed', '', 'pourquoi-et-comment-nous-soutenir', '', '', '2019-01-08 10:48:59', '2019-01-08 09:48:59', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=97', 0, 'page', '', 0),
(98, 2, '2019-01-08 10:48:59', '2019-01-08 09:48:59', '', 'Pourquoi et comment nous soutenir ?', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2019-01-08 10:48:59', '2019-01-08 09:48:59', '', 97, 'http://cohabit.utila.io/technoshop/2019/01/08/97-revision-v1/', 0, 'revision', '', 0),
(99, 2, '2019-01-08 10:50:07', '2019-01-08 09:50:07', '', 'Liste de nos mécènes et de nos partenaires', '', 'publish', 'closed', 'closed', '', 'liste-de-nos-mecenes-et-de-nos-partenaires', '', '', '2019-01-08 10:50:07', '2019-01-08 09:50:07', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=99', 0, 'page', '', 0),
(100, 1, '2019-01-08 10:49:25', '2019-01-08 09:49:25', '{"show_on_front":{"value":"page","type":"option","user_id":1,"date_modified_gmt":"2019-01-08 09:49:25"},"page_on_front":{"value":"75","type":"option","user_id":1,"date_modified_gmt":"2019-01-08 09:49:25"}}', '', '', 'trash', 'closed', 'closed', '', 'a82767c4-bd04-4ba9-8c1a-838575f2304f', '', '', '2019-01-08 10:49:25', '2019-01-08 09:49:25', '', 0, 'http://cohabit.utila.io/technoshop/2019/01/08/a82767c4-bd04-4ba9-8c1a-838575f2304f/', 0, 'customize_changeset', '', 0),
(101, 2, '2019-01-08 10:50:07', '2019-01-08 09:50:07', '', 'Liste de nos mécènes et de nos partenaires', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-01-08 10:50:07', '2019-01-08 09:50:07', '', 99, 'http://cohabit.utila.io/technoshop/2019/01/08/99-revision-v1/', 0, 'revision', '', 0),
(102, 2, '2019-01-08 10:51:08', '2019-01-08 09:51:08', '', 'Coh@bit - Dimension économique et territoriale', '', 'publish', 'closed', 'closed', '', 'cohbit-dimension-economique-et-territoriale', '', '', '2019-01-08 10:51:08', '2019-01-08 09:51:08', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=102', 0, 'page', '', 0),
(103, 2, '2019-01-08 10:51:08', '2019-01-08 09:51:08', '', 'Coh@bit - Dimension économique et territoriale', '', 'inherit', 'closed', 'closed', '', '102-revision-v1', '', '', '2019-01-08 10:51:08', '2019-01-08 09:51:08', '', 102, 'http://cohabit.utila.io/technoshop/2019/01/08/102-revision-v1/', 0, 'revision', '', 0),
(104, 2, '2019-01-08 10:51:33', '2019-01-08 09:51:33', '', 'Coh@bit – Dimension sociale', '', 'publish', 'closed', 'closed', '', 'cohbit-dimension-sociale', '', '', '2019-01-08 10:51:33', '2019-01-08 09:51:33', '', 0, 'http://cohabit.utila.io/technoshop/?page_id=104', 0, 'page', '', 0),
(105, 2, '2019-01-08 10:51:33', '2019-01-08 09:51:33', '', 'Coh@bit – Dimension sociale', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-01-08 10:51:33', '2019-01-08 09:51:33', '', 104, 'http://cohabit.utila.io/technoshop/2019/01/08/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=106', 4, 'nav_menu_item', '', 0),
(107, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', '', 'Coh@bit – Dimension économique et territoriale', '', 'publish', 'closed', 'closed', '', 'cohbit-dimension-economique-et-territoriale', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=107', 3, 'nav_menu_item', '', 0),
(108, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '108', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=108', 6, 'nav_menu_item', '', 0),
(109, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '109', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=109', 7, 'nav_menu_item', '', 0),
(110, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '110', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=110', 12, 'nav_menu_item', '', 0),
(111, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '111', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=111', 13, 'nav_menu_item', '', 0),
(112, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '112', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=112', 14, 'nav_menu_item', '', 0),
(113, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '113', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=113', 16, 'nav_menu_item', '', 0),
(114, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '114', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=114', 17, 'nav_menu_item', '', 0),
(115, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '115', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=115', 18, 'nav_menu_item', '', 0) ;
INSERT INTO `wpc_3_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(116, 1, '2019-01-08 10:54:55', '2019-01-08 09:54:55', ' ', '', '', 'publish', 'closed', 'closed', '', '116', '', '', '2019-01-08 10:55:13', '2019-01-08 09:55:13', '', 0, 'http://cohabit.utila.io/technoshop/?p=116', 19, 'nav_menu_item', '', 0),
(117, 1, '2019-01-08 16:50:07', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-08 16:50:07', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/technoshop/?p=117', 0, 'post', '', 0) ;

#
# End of data contents of table `wpc_3_posts`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_term_relationships`
#

DROP TABLE IF EXISTS `wpc_3_term_relationships`;


#
# Table structure of table `wpc_3_term_relationships`
#

CREATE TABLE `wpc_3_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_term_relationships`
#
INSERT INTO `wpc_3_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 1, 0),
(12, 1, 0),
(17, 1, 0),
(19, 1, 0),
(34, 1, 0),
(36, 1, 0),
(38, 1, 0),
(44, 1, 0),
(46, 1, 0),
(48, 1, 0),
(50, 1, 0),
(52, 2, 0),
(53, 2, 0),
(54, 2, 0),
(56, 2, 0),
(57, 2, 0),
(58, 2, 0),
(59, 2, 0),
(60, 2, 0),
(61, 2, 0),
(106, 2, 0),
(107, 2, 0),
(108, 2, 0),
(109, 2, 0),
(110, 2, 0),
(111, 2, 0),
(112, 2, 0),
(113, 2, 0),
(114, 2, 0),
(115, 2, 0),
(116, 2, 0) ;

#
# End of data contents of table `wpc_3_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_term_taxonomy`
#

DROP TABLE IF EXISTS `wpc_3_term_taxonomy`;


#
# Table structure of table `wpc_3_term_taxonomy`
#

CREATE TABLE `wpc_3_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_term_taxonomy`
#
INSERT INTO `wpc_3_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 20) ;

#
# End of data contents of table `wpc_3_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_termmeta`
#

DROP TABLE IF EXISTS `wpc_3_termmeta`;


#
# Table structure of table `wpc_3_termmeta`
#

CREATE TABLE `wpc_3_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_termmeta`
#

#
# End of data contents of table `wpc_3_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_terms`
#

DROP TABLE IF EXISTS `wpc_3_terms`;


#
# Table structure of table `wpc_3_terms`
#

CREATE TABLE `wpc_3_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_terms`
#
INSERT INTO `wpc_3_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'MenuCohabit', 'menucohabit', 0) ;

#
# End of data contents of table `wpc_3_terms`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_usermeta`
#

DROP TABLE IF EXISTS `wpc_3_usermeta`;


#
# Table structure of table `wpc_3_usermeta`
#

CREATE TABLE `wpc_3_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_usermeta`
#
INSERT INTO `wpc_3_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wpc_3_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wpc_3_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:"704b10156163619b09d4d5c549702eeaf00c60d472e3e6fec86e9c37817249fb";a:4:{s:10:"expiration";i:1548079420;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546869820;}s:64:"93ea0d742af03d0654571612ddf7017f07f71b96efb7aa00956328d3993d52f3";a:4:{s:10:"expiration";i:1548084025;s:2:"ip";s:10:"5.49.221.7";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546874425;}s:64:"6ee58d56190bd4c96d2ce1369ac72042e0649a2937f78015ecd60958a2c3f95b";a:4:{s:10:"expiration";i:1547047234;s:2:"ip";s:13:"86.213.57.153";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546874434;}s:64:"5e89b50dd50d639df89397da2f523985a00240761e421537702ef4533c0bf81f";a:4:{s:10:"expiration";i:1548152503;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546942903;}s:64:"ce856589ce2d2a1ba4ebc09d7572a833d0277efae83110fc6bc319cdc477afff";a:4:{s:10:"expiration";i:1547128058;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546955258;}}'),
(17, 1, 'wpc_3_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"147.210.245.0";}'),
(19, 2, 'nickname', 'bastient'),
(20, 2, 'first_name', 'Bastien'),
(21, 2, 'last_name', 'T'),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wpc_3_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(31, 2, 'wpc_3_user_level', '10'),
(32, 2, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(33, 2, 'session_tokens', 'a:1:{s:64:"b07491ec0df0cad6ccbd108e426a989cb46036c10ce9f141eadb88a4098fdeca";a:4:{s:10:"expiration";i:1548084143;s:2:"ip";s:12:"82.240.36.29";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546874543;}}'),
(34, 2, 'wpc_3_dashboard_quick_press_last_post_id', '5'),
(35, 2, 'community-events-location', 'a:1:{s:2:"ip";s:11:"82.240.36.0";}'),
(36, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(37, 2, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(38, 2, 'nav_menu_recently_edited', '2'),
(39, 1, 'nav_menu_recently_edited', '2'),
(40, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(41, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}') ;

#
# End of data contents of table `wpc_3_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_3_users`
#

DROP TABLE IF EXISTS `wpc_3_users`;


#
# Table structure of table `wpc_3_users`
#

CREATE TABLE `wpc_3_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wpc_3_users`
#
INSERT INTO `wpc_3_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BULbOStjEW0NC47z5TJEBFlZtutStV1', 'admin', 'jules.raffoux@etu.u-bordeaux.fr', '', '2019-01-07 14:03:35', '', 0, 'admin'),
(2, 'bastient', '$P$Bu1PqCyx6fIR50Qx3qR/cyvniX7t1D0', 'bastient', 'bastien.tebbani@hotmail.fr', '', '2019-01-07 15:22:11', '', 0, 'Bastien T') ;

#
# End of data contents of table `wpc_3_users`
# --------------------------------------------------------



#
# Delete any existing table `wpc_blog_versions`
#

DROP TABLE IF EXISTS `wpc_blog_versions`;


#
# Table structure of table `wpc_blog_versions`
#

CREATE TABLE `wpc_blog_versions` (
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `db_version` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`blog_id`),
  KEY `db_version` (`db_version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_blog_versions`
#

#
# End of data contents of table `wpc_blog_versions`
# --------------------------------------------------------



#
# Delete any existing table `wpc_blogs`
#

DROP TABLE IF EXISTS `wpc_blogs`;


#
# Table structure of table `wpc_blogs`
#

CREATE TABLE `wpc_blogs` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT '1',
  `archived` tinyint(2) NOT NULL DEFAULT '0',
  `mature` tinyint(2) NOT NULL DEFAULT '0',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  `lang_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blog_id`),
  KEY `domain` (`domain`(50),`path`(5)),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_blogs`
#
INSERT INTO `wpc_blogs` ( `blog_id`, `site_id`, `domain`, `path`, `registered`, `last_updated`, `public`, `archived`, `mature`, `spam`, `deleted`, `lang_id`) VALUES
(1, 1, 'cohabit.utila.io', '/', '2019-01-08 16:34:50', '0000-00-00 00:00:00', 1, 0, 0, 0, 0, 0),
(2, 1, 'cohabit.utila.io', '/fablab/', '2019-01-08 16:39:06', '2019-01-08 15:39:08', 1, 0, 0, 0, 0, 0),
(3, 1, 'cohabit.utila.io', '/technoshop/', '2019-01-08 16:40:00', '2019-01-08 15:40:03', 1, 0, 0, 0, 0, 0) ;

#
# End of data contents of table `wpc_blogs`
# --------------------------------------------------------



#
# Delete any existing table `wpc_commentmeta`
#

DROP TABLE IF EXISTS `wpc_commentmeta`;


#
# Table structure of table `wpc_commentmeta`
#

CREATE TABLE `wpc_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_commentmeta`
#

#
# End of data contents of table `wpc_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_comments`
#

DROP TABLE IF EXISTS `wpc_comments`;


#
# Table structure of table `wpc_comments`
#

CREATE TABLE `wpc_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_comments`
#
INSERT INTO `wpc_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-01-08 16:31:17', '2019-01-08 15:31:17', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0) ;

#
# End of data contents of table `wpc_comments`
# --------------------------------------------------------



#
# Delete any existing table `wpc_links`
#

DROP TABLE IF EXISTS `wpc_links`;


#
# Table structure of table `wpc_links`
#

CREATE TABLE `wpc_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_links`
#

#
# End of data contents of table `wpc_links`
# --------------------------------------------------------



#
# Delete any existing table `wpc_options`
#

DROP TABLE IF EXISTS `wpc_options`;


#
# Table structure of table `wpc_options`
#

CREATE TABLE `wpc_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_options`
#
INSERT INTO `wpc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://cohabit.utila.io', 'yes'),
(2, 'home', 'http://cohabit.utila.io', 'yes'),
(3, 'blogname', 'Coh@bit', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jules.raffoux@etu.u-bordeaux.fr', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/blog/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:52:"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:47:"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:28:"blog/author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:40:"blog/author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:22:"blog/author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:74:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:50:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:44:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:61:"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:37:"blog/([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:49:"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:31:"blog/([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:48:"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:43:"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:24:"blog/([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:36:"blog/([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:18:"blog/([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:63:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:73:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:93:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:88:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:69:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:58:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:62:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:82:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:77:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:70:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:77:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:66:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:52:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:62:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:82:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:77:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:58:"blog/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:69:"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:56:"blog/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:43:"blog/([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
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
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wpc_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wpc_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1546965077;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1547004677;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1547005075;a:1:{s:21:"update_network_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1547047891;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(113, 'theme_mods_twentynineteen', 'a:1:{s:18:"custom_css_post_id";i:-1;}', 'yes'),
(137, 'can_compress_scripts', '0', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes') ;

#
# End of data contents of table `wpc_options`
# --------------------------------------------------------



#
# Delete any existing table `wpc_postmeta`
#

DROP TABLE IF EXISTS `wpc_postmeta`;


#
# Table structure of table `wpc_postmeta`
#

CREATE TABLE `wpc_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_postmeta`
#
INSERT INTO `wpc_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default') ;

#
# End of data contents of table `wpc_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_posts`
#

DROP TABLE IF EXISTS `wpc_posts`;


#
# Table structure of table `wpc_posts`
#

CREATE TABLE `wpc_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_posts`
#
INSERT INTO `wpc_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-01-08 16:31:17', '2019-01-08 15:31:17', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez où supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-01-08 16:31:17', '2019-01-08 15:31:17', '', 0, 'http://cohabit.utila.io/?p=1', 0, 'post', '', 1),
(2, 1, '2019-01-08 16:31:17', '2019-01-08 15:31:17', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://cohabit.utila.io/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2019-01-08 16:31:17', '2019-01-08 15:31:17', '', 0, 'http://cohabit.utila.io/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-01-08 16:31:17', '2019-01-08 15:31:17', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://cohabit.utila.io.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-01-08 16:31:17', '2019-01-08 15:31:17', '', 0, 'http://cohabit.utila.io/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-01-08 16:31:31', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-01-08 16:31:31', '0000-00-00 00:00:00', '', 0, 'http://cohabit.utila.io/?p=4', 0, 'post', '', 0) ;

#
# End of data contents of table `wpc_posts`
# --------------------------------------------------------



#
# Delete any existing table `wpc_registration_log`
#

DROP TABLE IF EXISTS `wpc_registration_log`;


#
# Table structure of table `wpc_registration_log`
#

CREATE TABLE `wpc_registration_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT '0',
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_registration_log`
#
INSERT INTO `wpc_registration_log` ( `ID`, `email`, `IP`, `blog_id`, `date_registered`) VALUES
(1, 'sebastien.gaya@etu.u-bordeaux.fr', '147.210.245.181', 2, '2019-01-08 16:39:08'),
(2, 'jules.raffoux@etu.u-bordeaux.fr', '147.210.245.181', 3, '2019-01-08 16:40:03') ;

#
# End of data contents of table `wpc_registration_log`
# --------------------------------------------------------



#
# Delete any existing table `wpc_signups`
#

DROP TABLE IF EXISTS `wpc_signups`;


#
# Table structure of table `wpc_signups`
#

CREATE TABLE `wpc_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_signups`
#

#
# End of data contents of table `wpc_signups`
# --------------------------------------------------------



#
# Delete any existing table `wpc_site`
#

DROP TABLE IF EXISTS `wpc_site`;


#
# Table structure of table `wpc_site`
#

CREATE TABLE `wpc_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(140),`path`(51))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_site`
#
INSERT INTO `wpc_site` ( `id`, `domain`, `path`) VALUES
(1, 'cohabit.utila.io', '/') ;

#
# End of data contents of table `wpc_site`
# --------------------------------------------------------



#
# Delete any existing table `wpc_sitemeta`
#

DROP TABLE IF EXISTS `wpc_sitemeta`;


#
# Table structure of table `wpc_sitemeta`
#

CREATE TABLE `wpc_sitemeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_sitemeta`
#
INSERT INTO `wpc_sitemeta` ( `meta_id`, `site_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'site_name', 'Les départements de Coh@bit'),
(2, 1, 'admin_email', 'jules.raffoux@etu.u-bordeaux.fr'),
(3, 1, 'admin_user_id', '1'),
(4, 1, 'registration', 'none'),
(5, 1, 'upload_filetypes', 'jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg flac m4a wav mp4 m4v webm ogv flv'),
(6, 1, 'blog_upload_space', '100'),
(7, 1, 'fileupload_maxk', '1500'),
(8, 1, 'site_admins', 'a:1:{i:0;s:5:"admin";}'),
(9, 1, 'allowedthemes', 'a:1:{s:14:"twentynineteen";b:1;}'),
(10, 1, 'illegal_names', 'a:9:{i:0;s:3:"www";i:1;s:3:"web";i:2;s:4:"root";i:3;s:5:"admin";i:4;s:4:"main";i:5;s:6:"invite";i:6;s:13:"administrator";i:7;s:5:"files";i:8;s:4:"blog";}'),
(11, 1, 'wpmu_upgrade_site', '43764'),
(12, 1, 'welcome_email', 'Bonjour USERNAME,\n\nVotre nouveau site SITE_NAME a bien été créé à l’adresse :\nBLOG_URL\n\nVous pouvez vous connecter au compte administrateur avec les informations suivantes :\nIdentifiant : USERNAME\nMot de passe : PASSWORD\nConnectez-vous ici : BLOG_URLwp-login.php\n\nNous espérons que vous apprécierez votre nouveau site. Merci !\n\n--L’équipe de SITE_NAME'),
(13, 1, 'first_post', 'Bienvenue sur %s. Vous lisez votre premier article. Modifiez-le ou supprimez-le, puis commencez à publier !'),
(14, 1, 'siteurl', 'http://cohabit.utila.io/'),
(15, 1, 'add_new_users', '0'),
(16, 1, 'upload_space_check_disabled', '1'),
(17, 1, 'subdomain_install', '0'),
(18, 1, 'global_terms_enabled', '0'),
(19, 1, 'ms_files_rewriting', '0'),
(20, 1, 'initial_db_version', '43764'),
(21, 1, 'active_sitewide_plugins', 'a:1:{s:31:"wp-migrate-db/wp-migrate-db.php";i:1546962750;}'),
(22, 1, 'WPLANG', 'fr_FR'),
(30, 1, 'user_count', '2'),
(31, 1, 'blog_count', '3'),
(32, 1, 'can_compress_scripts', '0'),
(46, 1, 'recently_activated', 'a:0:{}'),
(51, 1, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1546962801;}') ;

#
# End of data contents of table `wpc_sitemeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_term_relationships`
#

DROP TABLE IF EXISTS `wpc_term_relationships`;


#
# Table structure of table `wpc_term_relationships`
#

CREATE TABLE `wpc_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_term_relationships`
#
INSERT INTO `wpc_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0) ;

#
# End of data contents of table `wpc_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wpc_term_taxonomy`
#

DROP TABLE IF EXISTS `wpc_term_taxonomy`;


#
# Table structure of table `wpc_term_taxonomy`
#

CREATE TABLE `wpc_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_term_taxonomy`
#
INSERT INTO `wpc_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1) ;

#
# End of data contents of table `wpc_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wpc_termmeta`
#

DROP TABLE IF EXISTS `wpc_termmeta`;


#
# Table structure of table `wpc_termmeta`
#

CREATE TABLE `wpc_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_termmeta`
#

#
# End of data contents of table `wpc_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_terms`
#

DROP TABLE IF EXISTS `wpc_terms`;


#
# Table structure of table `wpc_terms`
#

CREATE TABLE `wpc_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_terms`
#
INSERT INTO `wpc_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0) ;

#
# End of data contents of table `wpc_terms`
# --------------------------------------------------------



#
# Delete any existing table `wpc_usermeta`
#

DROP TABLE IF EXISTS `wpc_usermeta`;


#
# Table structure of table `wpc_usermeta`
#

CREATE TABLE `wpc_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_usermeta`
#
INSERT INTO `wpc_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'wpc_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wpc_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"7f021fd191e2faa26898e7c61b2493b92a818498b0351fc97367802719e561d9";a:4:{s:10:"expiration";i:1548171090;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546961490;}s:64:"adf1198ccaade095160bf7b98586599bdbf7251157cdec1efe3aeb8d8c326d2d";a:4:{s:10:"expiration";i:1547134673;s:2:"ip";s:15:"147.210.245.181";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36";s:5:"login";i:1546961873;}}'),
(17, 1, 'wpc_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:13:"147.210.245.0";}'),
(19, 1, 'source_domain', 'cohabit.utila.io'),
(20, 1, 'primary_blog', '1'),
(21, 2, 'nickname', 'fablab'),
(22, 2, 'first_name', ''),
(23, 2, 'last_name', ''),
(24, 2, 'description', ''),
(25, 2, 'rich_editing', 'true'),
(26, 2, 'syntax_highlighting', 'true'),
(27, 2, 'comment_shortcuts', 'false'),
(28, 2, 'admin_color', 'fresh'),
(29, 2, 'use_ssl', '0'),
(30, 2, 'show_admin_bar_front', 'true'),
(31, 2, 'locale', ''),
(34, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(35, 2, 'show_welcome_panel', '2'),
(36, 2, 'primary_blog', '2'),
(37, 2, 'source_domain', 'cohabit.utila.io'),
(38, 2, 'wpc_2_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(39, 2, 'wpc_2_user_level', '10'),
(40, 1, 'wpc_3_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(41, 1, 'wpc_3_user_level', '10'),
(42, 1, 'wpc_2_capabilities', 'a:1:{s:15:"bbp_participant";b:1;}'),
(43, 1, 'wpc_2_user_level', '0'),
(44, 1, 'wpc_2_dashboard_quick_press_last_post_id', '153'),
(45, 1, 'wpc_3_dashboard_quick_press_last_post_id', '117') ;

#
# End of data contents of table `wpc_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wpc_users`
#

DROP TABLE IF EXISTS `wpc_users`;


#
# Table structure of table `wpc_users`
#

CREATE TABLE `wpc_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT '0',
  `deleted` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wpc_users`
#
INSERT INTO `wpc_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`, `spam`, `deleted`) VALUES
(1, 'admin', '$P$B36DnfQMDUrgwqCEsXVjTRhTAD4H8g1', 'admin', 'jules.raffoux@etu.u-bordeaux.fr', '', '2019-01-08 15:31:16', '', 0, 'admin', 0, 0),
(2, 'fablab', '$P$BeSuLlaQ6h6mW.PWVp/5eqD.rLqjD91', 'fablab', 'sebastien.gaya@etu.u-bordeaux.fr', '', '2019-01-08 15:39:06', '1546961946:$P$BYV8ypqz2waCnhRciUmCRgiNPS6QpW.', 0, 'fablab', 0, 0) ;

#
# End of data contents of table `wpc_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

