-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.9 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table madapp.categories
DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.categories: 0 rows
DELETE FROM `categories`;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;


-- Dumping structure for table madapp.comics
DROP TABLE IF EXISTS `comics`;
CREATE TABLE IF NOT EXISTS `comics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8_unicode_ci NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `live` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `comics_name_unique` (`name`),
  UNIQUE KEY `comics_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.comics: 0 rows
DELETE FROM `comics`;
/*!40000 ALTER TABLE `comics` DISABLE KEYS */;
/*!40000 ALTER TABLE `comics` ENABLE KEYS */;


-- Dumping structure for table madapp.data_rows
DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE IF NOT EXISTS `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.data_rows: 83 rows
DELETE FROM `data_rows`;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`) VALUES
	(1, 1, 'id', 'PRI', 'ID', 1, 0, 1, 1, 0, 1, ''),
	(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, ''),
	(3, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, ''),
	(4, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, ''),
	(5, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, ''),
	(6, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\r\n    "resize": {\r\n        "width": "1080",\r\n        "height": "null"\r\n    },\r\n    "quality": "70%",\r\n    "upsize": true,\r\n    "thumbnails": [\r\n        {\r\n            "name": "medium",\r\n            "scale": "50%"\r\n        },\r\n        {\r\n            "name": "small",\r\n            "scale": "25%"\r\n        },\r\n        {\r\n            "name": "cropped",\r\n            "crop": {\r\n                "width": "300",\r\n                "height": "250"\r\n            }\r\n        }\r\n    ]\r\n}'),
	(7, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify": {"origin": "title", "forceUpdate": true}}'),
	(8, 1, 'meta_description', 'text_area', 'meta_description', 1, 0, 1, 1, 1, 1, ''),
	(9, 1, 'meta_keywords', 'text_area', 'meta_keywords', 1, 0, 1, 1, 1, 1, ''),
	(10, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\r\n    "default": "DRAFT",\r\n    "options": {\r\n        "PUBLISHED": "published",\r\n        "DRAFT": "draft",\r\n        "PENDING": "pending"\r\n    }\r\n}'),
	(11, 1, 'created_at', 'text', 'created_at', 0, 1, 1, 0, 0, 0, ''),
	(12, 1, 'updated_at', 'text', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
	(13, 2, 'id', 'PRI', 'ID', 1, 1, 0, 0, 0, 0, ''),
	(92, 1, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, ''),
	(22, 2, 'created_at', 'text', 'created_at', 0, 0, 1, 0, 0, 1, ''),
	(23, 2, 'updated_at', 'text', 'updated_at', 0, 0, 1, 0, 0, 1, ''),
	(24, 2, 'image', 'image', 'image', 1, 1, 1, 1, 1, 1, '{\r\n    "resize": {\r\n        "width": "1080",\r\n        "height": "null"\r\n    },\r\n    "quality": "80%",\r\n    "upsize": true,\r\n    "thumbnails": [\r\n        {\r\n            "name": "small",\r\n            "scale": "25%"\r\n        },\r\n        {\r\n            "name": "cropped",\r\n            "crop": {\r\n                "width": "300",\r\n                "height": "300"\r\n            }\r\n        }\r\n    ]\r\n}'),
	(25, 3, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
	(26, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, ''),
	(27, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, ''),
	(28, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, ''),
	(29, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, ''),
	(30, 3, 'created_at', 'text', 'created_at', 0, 1, 1, 0, 0, 1, ''),
	(31, 3, 'updated_at', 'text', 'updated_at', 0, 0, 1, 0, 0, 1, ''),
	(32, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, ''),
	(33, 5, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
	(34, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, ''),
	(35, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, ''),
	(36, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
	(37, 4, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
	(38, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\n"default": "__null__",\n"null": "__null__",\n"options": {\n"__null__": "NULL"\n},\n"relationship": {\n"key": "id",\n"label": "name"\n}\n}'),
	(39, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\n"default": 1\n}\n'),
	(40, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, ''),
	(41, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, ''),
	(42, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, ''),
	(43, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
	(44, 6, 'id', 'PRI', 'id', 1, 0, 0, 0, 0, 0, ''),
	(45, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, ''),
	(46, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, ''),
	(47, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, ''),
	(48, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, ''),
	(49, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, ''),
	(50, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, ''),
	(51, 3, 'role_id', 'text', 'role_id', 0, 0, 0, 1, 1, 0, ''),
	(52, 7, 'id', 'PRI', 'Id', 1, 0, 0, 0, 0, 0, ''),
	(53, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, ''),
	(54, 7, 'slug', 'text', 'Slug', 1, 0, 1, 0, 0, 1, '{\r\n    "slugify": {\r\n        "origin": "name",\r\n        "forceUpdate": true\r\n    }\r\n}'),
	(55, 7, 'image', 'image', 'Image', 1, 0, 1, 1, 1, 1, '{\r\n    "resize": {\r\n        "width": "1080",\r\n        "height": "null"\r\n    },\r\n    "quality": "80%",\r\n    "upsize": true,\r\n    "thumbnails": [\r\n        {\r\n            "name": "small",\r\n            "scale": "25%"\r\n        },\r\n        {\r\n            "name": "cropped",\r\n            "crop": {\r\n                "width": "300",\r\n                "height": "300"\r\n            }\r\n        }\r\n    ]\r\n}'),
	(56, 7, 'synopsis', 'text_area', 'Synopsis', 1, 0, 1, 1, 1, 1, ''),
	(57, 7, 'views', 'text', 'Views', 1, 1, 1, 1, 1, 1, ''),
	(58, 7, 'live', 'checkbox', 'Live', 1, 1, 1, 1, 1, 1, '{\r\n    "on": "1",\r\n    "off": "0",\r\n    "checked": "true"\r\n}'),
	(59, 7, 'created_at', 'date-time', 'Created At', 0, 0, 1, 0, 0, 1, ''),
	(60, 7, 'updated_at', 'date-time', 'Updated At', 0, 0, 1, 0, 0, 1, ''),
	(61, 7, 'deleted_at', 'date-time', 'Deleted At', 0, 0, 1, 0, 0, 1, ''),
	(62, 8, 'id', 'PRI', 'Id', 1, 1, 0, 0, 0, 0, ''),
	(63, 8, 'comic_id', 'select_dropdown', 'Comic', 1, 1, 1, 1, 1, 1, '{\r\n    "relationship": {\r\n        "key": "id",\r\n        "label": "name"\r\n    }\r\n}'),
	(64, 8, 'number', 'text', 'Volume Number', 1, 1, 1, 1, 1, 1, '{\r\n    "validation": {\r\n        "rules": [\r\n            "required",\r\n            "max:3"\r\n        ]\r\n    }\r\n}'),
	(65, 8, 'name', 'text', 'Name', 0, 0, 1, 1, 1, 1, '{\r\n    "validation": {\r\n        "rules": [\r\n            "required",\r\n            "max:190"\r\n        ]\r\n    }\r\n}'),
	(66, 8, 'slug', 'text', 'Slug', 0, 1, 1, 0, 0, 1, '{\r\n    "slugify": {\r\n        "origin": "name",\r\n        "forceUpdate": true\r\n    }\r\n}'),
	(67, 8, 'image', 'image', 'Image', 1, 0, 1, 1, 1, 1, '{\r\n    "resize": {\r\n        "width": "1080",\r\n        "height": "null"\r\n    },\r\n    "quality": "80%",\r\n    "upsize": true,\r\n    "thumbnails": [\r\n        {\r\n            "name": "small",\r\n            "scale": "25%"\r\n        },\r\n        {\r\n            "name": "cropped",\r\n            "crop": {\r\n                "width": "300",\r\n                "height": "300"\r\n            }\r\n        }\r\n    ]\r\n}'),
	(68, 8, 'live', 'checkbox', 'Live', 1, 1, 1, 1, 1, 1, '{\r\n    "on": "1",\r\n    "off": "0",\r\n    "checked": "true"\r\n}'),
	(69, 8, 'created_at', 'text', 'Created At', 0, 0, 1, 0, 0, 1, ''),
	(70, 8, 'updated_at', 'text', 'Updated At', 0, 0, 1, 0, 0, 1, ''),
	(71, 8, 'deleted_at', 'text', 'Deleted At', 0, 0, 1, 0, 0, 1, ''),
	(72, 9, 'id', 'PRI', 'Id', 1, 1, 0, 0, 0, 0, ''),
	(73, 9, 'volume_id', 'select_dropdown', 'Volume', 1, 1, 1, 1, 1, 1, '{\r\n    "relationship": {\r\n        "key": "id",\r\n        "label": "name"\r\n    }\r\n}'),
	(74, 9, 'number', 'text', 'Number', 1, 1, 1, 1, 1, 1, '{\r\n    "validation": {\r\n        "rules": [\r\n            "required",\r\n            "max:3"\r\n        ]\r\n    }\r\n}'),
	(75, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 1, 1, '{\r\n    "validation": {\r\n        "rules": [\r\n            "required",\r\n            "max:190"\r\n        ]\r\n    }\r\n}'),
	(76, 9, 'slug', 'text', 'Slug', 0, 0, 1, 0, 0, 1, '{\r\n    "slugify": {\r\n        "origin": "name",\r\n        "forceUpdate": true\r\n    }\r\n}'),
	(77, 9, 'image', 'image', 'Image', 1, 0, 1, 1, 1, 1, '{\r\n    "resize": {\r\n        "width": "1080",\r\n        "height": "null"\r\n    },\r\n    "quality": "80%",\r\n    "upsize": true,\r\n    "thumbnails": [\r\n        {\r\n            "name": "small",\r\n            "scale": "25%"\r\n        },\r\n        {\r\n            "name": "cropped",\r\n            "crop": {\r\n                "width": "300",\r\n                "height": "300"\r\n            }\r\n        }\r\n    ]\r\n}'),
	(78, 9, 'views', 'text', 'Views', 1, 1, 1, 0, 0, 1, ''),
	(79, 9, 'live', 'checkbox', 'Live', 1, 1, 1, 1, 1, 1, '{\r\n    "on": "1",\r\n    "off": "0",\r\n    "checked": "true"\r\n}'),
	(80, 9, 'created_at', 'text', 'Created At', 0, 0, 1, 0, 0, 1, ''),
	(81, 9, 'updated_at', 'text', 'Updated At', 0, 0, 1, 0, 0, 1, ''),
	(82, 9, 'deleted_at', 'text', 'Deleted At', 0, 0, 1, 0, 0, 1, ''),
	(83, 2, 'issue_id', 'select_dropdown', 'Issue', 1, 1, 1, 1, 1, 1, '{\r\n    "relationship": {\r\n        "key": "id",\r\n        "label": "name"\r\n    }\r\n}'),
	(84, 2, 'number', 'text', 'Number', 1, 1, 1, 1, 1, 1, '{\r\n    "validation": {\r\n        "rules": [\r\n            "required",\r\n            "max:3"\r\n        ]\r\n    }\r\n}'),
	(85, 2, 'live', 'checkbox', 'Live', 1, 1, 1, 1, 1, 1, '{\r\n    "on": "1",\r\n    "off": "0",\r\n    "checked": "true"\r\n}'),
	(86, 2, 'deleted_at', 'text', 'Deleted At', 0, 0, 1, 0, 0, 1, ''),
	(87, 3, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, ''),
	(88, 3, 'admin', 'text', 'Admin', 1, 0, 0, 0, 0, 0, ''),
	(89, 3, 'optin', 'text', 'Optin', 1, 1, 1, 1, 1, 1, '{\r\n    "description": "Added an hidden element with this name in users/edit-add.blade.php"\r\n}'),
	(90, 3, 'deleted_at', 'text', 'Deleted At', 0, 0, 1, 0, 0, 1, '');
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;


-- Dumping structure for table madapp.data_types
DROP TABLE IF EXISTS `data_types`;
CREATE TABLE IF NOT EXISTS `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.data_types: 9 rows
DELETE FROM `data_types`;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
	(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', '', 1, 1, '2017-02-17 03:00:54', '2017-02-18 09:12:29'),
	(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', '\\MadComics\\Models\\Page', 'Mad Comics Issue Page', 1, 1, '2017-02-17 03:00:54', '2017-02-17 05:35:06'),
	(3, 'users', 'users', 'User', 'Users', 'voyager-person', '\\MadComics\\Models\\User', '', 1, 1, '2017-02-17 03:00:54', '2017-02-17 09:20:24'),
	(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', '', 1, 0, '2017-02-17 03:00:54', '2017-02-17 03:00:54'),
	(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', '', 1, 0, '2017-02-17 03:00:54', '2017-02-17 03:00:54'),
	(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', '', 1, 0, '2017-02-17 03:00:54', '2017-02-17 03:00:54'),
	(7, 'comics', 'comics', 'Comic', 'Comics', 'voyager-file-text', '\\MadComics\\Models\\Comic', 'Mad Comics', 1, 1, '2017-02-17 03:26:58', '2017-02-17 03:27:44'),
	(8, 'volumes', 'volumes', 'Volume', 'Volumes', 'voyager-photos', 'MadComics\\Models\\Volume', 'Mad Comics Volume', 1, 1, '2017-02-17 04:51:35', '2017-02-17 05:15:25'),
	(9, 'issues', 'issues', 'Issue', 'Issues', 'voyager-news', '\\MadComics\\Models\\Issue', 'Mad Comics Issue', 1, 1, '2017-02-17 05:11:53', '2017-02-17 05:14:02');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;


-- Dumping structure for table madapp.issues
DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `volume_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `views` int(10) unsigned NOT NULL,
  `live` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issues_volume_id_foreign` (`volume_id`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.issues: 0 rows
DELETE FROM `issues`;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;


-- Dumping structure for table madapp.menus
DROP TABLE IF EXISTS `menus`;
CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.menus: 1 rows
DELETE FROM `menus`;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', '2017-02-17 03:00:55', '2017-02-17 03:00:55');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;


-- Dumping structure for table madapp.menu_items
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.menu_items: 13 rows
DELETE FROM `menu_items`;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Dashboard', '/admin', '_self', 'voyager-boat', NULL, NULL, 1, '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(2, 1, 'Media', '/admin/media', '_self', 'voyager-images', NULL, NULL, 9, '2017-02-17 03:00:55', '2017-02-18 09:16:21'),
	(3, 1, 'Comics', '/admin/comics', '_self', 'voyager-book', '#000000', NULL, 2, '2017-02-17 03:00:55', '2017-02-17 03:38:26'),
	(4, 1, 'Users', '/admin/users', '_self', 'voyager-person', NULL, NULL, 7, '2017-02-17 03:00:55', '2017-02-18 09:16:21'),
	(12, 1, 'Volumes', '/admin/volumes', '_self', 'voyager-photos', '#000000', NULL, 3, '2017-02-17 04:53:00', '2017-02-17 04:53:06'),
	(6, 1, 'Issues', '/admin/issues', '_self', 'voyager-news', '#000000', NULL, 4, '2017-02-17 03:00:55', '2017-02-17 04:53:06'),
	(7, 1, 'Roles', '/admin/roles', '_self', 'voyager-lock', NULL, NULL, 8, '2017-02-17 03:00:55', '2017-02-18 09:16:21'),
	(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2017-02-17 03:00:55', '2017-02-18 09:16:21'),
	(9, 1, 'Menu Builder', '/admin/menus', '_self', 'voyager-list', NULL, 8, 1, '2017-02-17 03:00:55', '2017-02-17 03:38:26'),
	(10, 1, 'Database', '/admin/database', '_self', 'voyager-data', NULL, 8, 2, '2017-02-17 03:00:55', '2017-02-17 03:38:26'),
	(11, 1, 'Settings', '/admin/settings', '_self', 'voyager-settings', NULL, NULL, 11, '2017-02-17 03:00:55', '2017-02-18 09:16:21'),
	(13, 1, 'Pages', '/admin/pages', '_self', 'voyager-file-text', '#000000', NULL, 5, '2017-02-17 11:38:09', '2017-02-17 11:38:17'),
	(14, 1, 'Posts', '/admin/posts', '_self', 'voyager-news', '#000000', NULL, 6, '2017-02-18 09:16:11', '2017-02-18 09:16:21');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;


-- Dumping structure for table madapp.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.migrations: 18 rows
DELETE FROM `migrations`;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(127, '2014_10_12_000000_create_users_table', 1),
	(128, '2014_10_12_100000_create_password_resets_table', 1),
	(129, '2016_12_21_052357_create_comics_table', 1),
	(130, '2016_12_22_095803_create_volumes_table', 1),
	(131, '2016_12_22_191716_create_issues_table', 1),
	(132, '2016_12_22_192212_create_pages_table', 1),
	(133, '2016_01_01_000000_add_user_avatar', 2),
	(134, '2016_01_01_000000_create_data_types_table', 2),
	(135, '2016_02_15_204651_create_categories_table', 3),
	(136, '2016_05_19_173453_create_menu_table', 3),
	(137, '2016_10_21_190000_create_roles_table', 3),
	(138, '2016_10_21_190000_create_settings_table', 3),
	(139, '2016_10_30_000000_set_user_avatar_nullable', 3),
	(140, '2016_11_30_131710_add_user_role', 3),
	(141, '2016_11_30_135954_create_permission_table', 3),
	(142, '2016_11_30_141208_create_permission_role_table', 3),
	(143, '2016_12_26_201236_data_types__add__server_side', 3),
	(144, '2016_01_01_000000_create_posts_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table madapp.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `issue_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned NOT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_issue_id_foreign` (`issue_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1458 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.pages: 0 rows
DELETE FROM `pages`;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;


-- Dumping structure for table madapp.password_resets
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.password_resets: 0 rows
DELETE FROM `password_resets`;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table madapp.permissions
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.permissions: 49 rows
DELETE FROM `permissions`;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
	(1, 'browse_admin', 'admin', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(2, 'browse_database', 'admin', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(3, 'browse_media', 'admin', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(4, 'browse_settings', 'admin', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(5, 'browse_menus', 'menus', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(6, 'read_menus', 'menus', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(7, 'edit_menus', 'menus', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(8, 'add_menus', 'menus', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(9, 'delete_menus', 'menus', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(10, 'browse_pages', 'pages', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(11, 'read_pages', 'pages', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(12, 'edit_pages', 'pages', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(13, 'add_pages', 'pages', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(14, 'delete_pages', 'pages', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(15, 'browse_roles', 'roles', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(16, 'read_roles', 'roles', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(17, 'edit_roles', 'roles', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(18, 'add_roles', 'roles', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(19, 'delete_roles', 'roles', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(20, 'browse_users', 'users', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(21, 'read_users', 'users', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(22, 'edit_users', 'users', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(23, 'add_users', 'users', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(24, 'delete_users', 'users', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(25, 'browse_posts', 'posts', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(26, 'read_posts', 'posts', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(27, 'edit_posts', 'posts', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(28, 'add_posts', 'posts', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(29, 'delete_posts', 'posts', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(30, 'browse_categories', 'categories', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(31, 'read_categories', 'categories', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(32, 'edit_categories', 'categories', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(33, 'add_categories', 'categories', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(34, 'delete_categories', 'categories', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(35, 'browse_comics', 'comics', '2017-02-17 03:27:44', '2017-02-17 03:27:44'),
	(36, 'read_comics', 'comics', '2017-02-17 03:27:44', '2017-02-17 03:27:44'),
	(37, 'edit_comics', 'comics', '2017-02-17 03:27:44', '2017-02-17 03:27:44'),
	(38, 'add_comics', 'comics', '2017-02-17 03:27:44', '2017-02-17 03:27:44'),
	(39, 'delete_comics', 'comics', '2017-02-17 03:27:44', '2017-02-17 03:27:44'),
	(40, 'browse_volumes', 'volumes', '2017-02-17 04:51:35', '2017-02-17 04:51:35'),
	(41, 'read_volumes', 'volumes', '2017-02-17 04:51:35', '2017-02-17 04:51:35'),
	(42, 'edit_volumes', 'volumes', '2017-02-17 04:51:35', '2017-02-17 04:51:35'),
	(43, 'add_volumes', 'volumes', '2017-02-17 04:51:35', '2017-02-17 04:51:35'),
	(44, 'delete_volumes', 'volumes', '2017-02-17 04:51:35', '2017-02-17 04:51:35'),
	(45, 'browse_issues', 'issues', '2017-02-17 05:11:53', '2017-02-17 05:11:53'),
	(46, 'read_issues', 'issues', '2017-02-17 05:11:53', '2017-02-17 05:11:53'),
	(47, 'edit_issues', 'issues', '2017-02-17 05:11:53', '2017-02-17 05:11:53'),
	(48, 'add_issues', 'issues', '2017-02-17 05:11:53', '2017-02-17 05:11:53'),
	(49, 'delete_issues', 'issues', '2017-02-17 05:11:53', '2017-02-17 05:11:53');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;


-- Dumping structure for table madapp.permission_role
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.permission_role: 77 rows
DELETE FROM `permission_role`;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
	(1, 1),
	(1, 3),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1),
	(6, 1),
	(7, 1),
	(8, 1),
	(9, 1),
	(10, 1),
	(10, 3),
	(11, 1),
	(11, 3),
	(12, 1),
	(12, 3),
	(13, 1),
	(13, 3),
	(14, 1),
	(14, 3),
	(15, 1),
	(16, 1),
	(17, 1),
	(18, 1),
	(19, 1),
	(20, 1),
	(20, 3),
	(21, 1),
	(21, 3),
	(22, 1),
	(23, 1),
	(24, 1),
	(25, 1),
	(25, 3),
	(26, 1),
	(26, 3),
	(27, 1),
	(27, 3),
	(28, 1),
	(28, 3),
	(29, 1),
	(29, 3),
	(30, 1),
	(31, 1),
	(32, 1),
	(33, 1),
	(34, 1),
	(35, 1),
	(35, 3),
	(36, 1),
	(36, 3),
	(37, 1),
	(37, 3),
	(38, 1),
	(38, 3),
	(39, 1),
	(39, 3),
	(40, 1),
	(40, 3),
	(41, 1),
	(41, 3),
	(42, 1),
	(42, 3),
	(43, 1),
	(43, 3),
	(44, 1),
	(44, 3),
	(45, 1),
	(45, 3),
	(46, 1),
	(46, 3),
	(47, 1),
	(47, 3),
	(48, 1),
	(48, 3),
	(49, 1),
	(49, 3);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;


-- Dumping structure for table madapp.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.posts: 2 rows
DELETE FROM `posts`;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
	(1, 0, NULL, 'Welcome to Mad Comics', NULL, 'Welcome to Mad Comics; we hope you like the new site...', '<p>Welcome to <strong>Mad Comics</strong>; we hope you like the new site...</p>', 'posts/7uelXHi85YOfZKsoS6Tq.jpg', 'welcome-to-mad-comics', 'Welcome post to Mad Comics', 'Mad, Comics, Nigeria', 'PUBLISHED', 0, '2017-02-18 09:08:06', '2017-02-18 09:08:06'),
	(2, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/9txUSY6wb7LTBSbDPrD9.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2017-02-18 09:08:06', '2017-02-18 09:08:06');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


-- Dumping structure for table madapp.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.roles: 3 rows
DELETE FROM `roles`;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
	(1, 'admin', 'Administrator', '2017-02-17 02:58:43', '2017-02-17 02:58:43'),
	(2, 'user', 'Normal User', '2017-02-17 03:00:55', '2017-02-17 03:00:55'),
	(3, 'publisher', 'Publisher', '2017-02-17 05:38:14', '2017-02-17 05:38:14');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- Dumping structure for table madapp.settings
DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `details` text COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.settings: 3 rows
DELETE FROM `settings`;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`) VALUES
	(3, 'admin_description', 'Description', 'Administration Portal', '', 'text', 2),
	(2, 'admin_title', 'Mad Comics', 'Mad Comics', '', 'text', 1),
	(4, 'google_analytics_client_id', 'Google Analytics Client ID', 'UA-92173218-1', '', 'text', 3);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;


-- Dumping structure for table madapp.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(21) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `optin` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'users/default.png',
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.users: 2 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `admin`, `optin`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `avatar`, `role_id`) VALUES
	(1, 'Mad Admin', 'admin@madcomics.ng', '08055146000', '$2y$10$bLjITPMb5Xep/JcJsXB9uOkVyOmNz7pSjVL9eGKM1FqE0XtVWi6Le', 1, 1, NULL, '2017-02-05 09:43:49', '2017-02-17 03:14:52', NULL, 'users/February2017/OvEnp2gD1XQ49LMb0Vim.png', 1),
	(2, 'Mad Publisher', 'publisher@madcomics.ng', '07011307597', '$2y$10$7VeGF89354qYIsi8Mo.6hOxmmqxnvy4SQIG83P2e.kumV29d.U8Ji', 0, 1, 'zYOaFz5bvrmrstlofNS5Yo1wkYdDjzpzEGFm2zFi60QUt7tiKQ1skZbTuzXX', '2017-02-17 11:27:55', '2017-02-18 18:30:30', NULL, 'users/February2017/JBm2rmOGuXYEdSMNXXdE.jpg', 3);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Dumping structure for table madapp.volumes
DROP TABLE IF EXISTS `volumes`;
CREATE TABLE IF NOT EXISTS `volumes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comic_id` int(10) unsigned NOT NULL,
  `number` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `live` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `volumes_comic_id_foreign` (`comic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table madapp.volumes: 0 rows
DELETE FROM `volumes`;
/*!40000 ALTER TABLE `volumes` DISABLE KEYS */;
/*!40000 ALTER TABLE `volumes` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
