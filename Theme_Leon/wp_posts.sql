-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2020 at 03:44 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-01-25 13:16:34', '2020-01-25 13:16:34', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-01-25 13:16:34', '2020-01-25 13:16:34', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-01-25 13:16:34', '2020-01-25 13:16:34', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-01-25 13:16:34', '2020-01-25 13:16:34', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-01-25 13:16:34', '2020-01-25 13:16:34', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-01-25 13:16:34', '2020-01-25 13:16:34', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-01-25 13:16:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-01-25 13:16:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2020-01-25 13:26:21', '2020-01-25 13:26:21', '', 'erdoni din shum', '', 'trash', 'open', 'open', '', 'erdoni-din-shum__trashed', '', '', '2020-01-25 14:14:50', '2020-01-25 14:14:50', '', 0, 'http://localhost/wordpress/?p=5', 0, 'post', '', 0),
(6, 1, '2020-01-25 13:26:21', '2020-01-25 13:26:21', '', 'erdoni din shum', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2020-01-25 13:26:21', '2020-01-25 13:26:21', '', 5, 'http://localhost/wordpress/2020/01/25/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2020-01-25 14:05:50', '2020-01-25 14:05:50', '<!-- wp:paragraph -->\n<p>asdasdasdasdasdasdasdasdcasdasdcasdasdasdas</p>\n<!-- /wp:paragraph -->', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-01-25 14:06:03', '2020-01-25 14:06:03', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-01-25 14:05:50', '2020-01-25 14:05:50', '', 'blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-01-25 14:05:50', '2020-01-25 14:05:50', '', 7, 'http://localhost/wordpress/2020/01/25/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-01-25 14:06:03', '2020-01-25 14:06:03', '<!-- wp:paragraph -->\n<p>asdasdasdasdasdasdasdasdcasdasdcasdasdasdas</p>\n<!-- /wp:paragraph -->', 'blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2020-01-25 14:06:03', '2020-01-25 14:06:03', '', 7, 'http://localhost/wordpress/2020/01/25/7-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-01-25 14:20:18', '2020-01-25 14:20:18', '<!-- wp:paragraph -->\n<p>Tashmë kemi parë tashmë konceptet vizuale të Galaxy S20 dhe S20 +, por këtu është një grup I ri I imazheve për të rifreskuar kujtesën.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":2755918} -->\n<figure class=\"wp-block-image\"><img src=\"https://telegrafi.com/wp-content/uploads/2020/01/samsung-galaxy-s20-image-12-800x1029-1.jpg\" alt=\"\" class=\"wp-image-2755918\"/></figure>\n<!-- /wp:image -->', 'Imazhet e Galaxy S20 shfaqen sërish online', '', 'publish', 'open', 'open', '', 'imazhet-e-galaxy-s20-shfaqen-serish-online', '', '', '2020-01-25 14:23:54', '2020-01-25 14:23:54', '', 0, 'http://localhost/wordpress/?p=10', 0, 'post', '', 0),
(11, 1, '2020-01-25 14:20:18', '2020-01-25 14:20:18', '<!-- wp:paragraph -->\n<p>Tashmë kemi parë tashmë konceptet vizuale të Galaxy S20 dhe S20 +, por këtu është një grup I ri I imazheve për të rifreskuar kujtesën.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":2755918} -->\n<figure class=\"wp-block-image\"><img src=\"https://telegrafi.com/wp-content/uploads/2020/01/samsung-galaxy-s20-image-12-800x1029-1.jpg\" alt=\"\" class=\"wp-image-2755918\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<figure><iframe width=\"300\" height=\"250\"></iframe></figure>\n<!-- /wp:html -->\n\n<!-- wp:paragraph -->\n<p>Galaxy S20 (lart) dhe Galaxy S20 + (më poshtë) do të jenë të disponueshëm në ngjyrat Cosmic Black, Cosmic Blue dhe Cloud Blue, sipas raportit të ri.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":2755917} -->\n<figure class=\"wp-block-image\"><img src=\"https://telegrafi.com/wp-content/uploads/2020/01/samsung-galaxy-s20-image-03-796x1024-1.jpg\" alt=\"\" class=\"wp-image-2755917\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Raporti përmend gjithashtu që ata do të kushtojnë diku mes 899 €, pikës fillestare të Galaxy S20 dhe deri në 1,099 €, çmimi fillestar për Galaxy S20 +.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Të dy pajisjet do të marrin pjesën e tyre të vëmendjes më 11 shkurt, në ngjarjen e lansimit Unpacked, duke ndarë titujt me telefonin të dytë të palosshëm Samsung.&nbsp;<strong>/Telegrafi/</strong></p>\n<!-- /wp:paragraph -->', 'Imazhet e Galaxy S20 shfaqen sërish online', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-01-25 14:20:18', '2020-01-25 14:20:18', '', 10, 'http://localhost/wordpress/2020/01/25/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-01-25 14:22:10', '2020-01-25 14:22:10', '<!-- wp:paragraph -->\n<p>Tashmë kemi parë tashmë konceptet vizuale të Galaxy S20 dhe S20 +, por këtu është një grup I ri I imazheve për të rifreskuar kujtesën.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":2755918} -->\n<figure class=\"wp-block-image\"><img src=\"https://telegrafi.com/wp-content/uploads/2020/01/samsung-galaxy-s20-image-12-800x1029-1.jpg\" alt=\"\" class=\"wp-image-2755918\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Galaxy S20 (lart) dhe Galaxy S20 + (më poshtë) do të jenë të disponueshëm në ngjyrat Cosmic Black, Cosmic Blue dhe Cloud Blue, sipas raportit të ri.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":2755917} -->\n<figure class=\"wp-block-image\"><img src=\"https://telegrafi.com/wp-content/uploads/2020/01/samsung-galaxy-s20-image-03-796x1024-1.jpg\" alt=\"\" class=\"wp-image-2755917\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Raporti përmend gjithashtu që ata do të kushtojnë diku mes 899 €, pikës fillestare të Galaxy S20 dhe deri në 1,099 €, çmimi fillestar për Galaxy S20 +.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Të dy pajisjet do të marrin pjesën e tyre të vëmendjes më 11 shkurt, në ngjarjen e lansimit Unpacked, duke ndarë titujt me telefonin të dytë të palosshëm Samsung.&nbsp;<strong>/Telegrafi/</strong></p>\n<!-- /wp:paragraph -->', 'Imazhet e Galaxy S20 shfaqen sërish online', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2020-01-25 14:22:10', '2020-01-25 14:22:10', '', 10, 'http://localhost/wordpress/2020/01/25/10-autosave-v1/', 0, 'revision', '', 0),
(13, 1, '2020-01-25 14:23:54', '2020-01-25 14:23:54', '<!-- wp:paragraph -->\n<p>Tashmë kemi parë tashmë konceptet vizuale të Galaxy S20 dhe S20 +, por këtu është një grup I ri I imazheve për të rifreskuar kujtesën.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":2755918} -->\n<figure class=\"wp-block-image\"><img src=\"https://telegrafi.com/wp-content/uploads/2020/01/samsung-galaxy-s20-image-12-800x1029-1.jpg\" alt=\"\" class=\"wp-image-2755918\"/></figure>\n<!-- /wp:image -->', 'Imazhet e Galaxy S20 shfaqen sërish online', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-01-25 14:23:54', '2020-01-25 14:23:54', '', 10, 'http://localhost/wordpress/2020/01/25/10-revision-v1/', 0, 'revision', '', 0);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
