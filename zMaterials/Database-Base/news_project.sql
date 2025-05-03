-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2025 at 01:06 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `user_name`, `password`, `email`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$12$E461bKu1wSAb/V8GMFl4O.A5nvsfyIFmsKDi8dZIODA8e2lAvQcXO', 'admin@gmail.com', '1', '2025-03-14 00:13:38', '2025-03-14 00:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('latest_posts', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:4:\"slug\";s:25:\"magnam-possimus-explicabo\";s:5:\"title\";s:26:\"Magnam possimus explicabo.\";s:10:\"created_at\";s:19:\"2023-11-12 01:11:12\";s:2:\"id\";i:32;}s:11:\"\0*\0original\";a:4:{s:4:\"slug\";s:25:\"magnam-possimus-explicabo\";s:5:\"title\";s:26:\"Magnam possimus explicabo.\";s:10:\"created_at\";s:19:\"2023-11-12 01:11:12\";s:2:\"id\";i:32;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:4:\"slug\";s:17:\"nihil-dolor-iusto\";s:5:\"title\";s:18:\"Nihil dolor iusto.\";s:10:\"created_at\";s:19:\"2023-05-29 02:05:11\";s:2:\"id\";i:20;}s:11:\"\0*\0original\";a:4:{s:4:\"slug\";s:17:\"nihil-dolor-iusto\";s:5:\"title\";s:18:\"Nihil dolor iusto.\";s:10:\"created_at\";s:19:\"2023-05-29 02:05:11\";s:2:\"id\";i:20;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:4:{s:4:\"slug\";s:15:\"eius-ipsa-nihil\";s:5:\"title\";s:16:\"Eius ipsa nihil.\";s:10:\"created_at\";s:19:\"2023-04-05 07:04:33\";s:2:\"id\";i:43;}s:11:\"\0*\0original\";a:4:{s:4:\"slug\";s:15:\"eius-ipsa-nihil\";s:5:\"title\";s:16:\"Eius ipsa nihil.\";s:10:\"created_at\";s:19:\"2023-04-05 07:04:33\";s:2:\"id\";i:43;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1746144297);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('popular_posts', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:3:{i:0;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:12;s:5:\"title\";s:14:\"Dolore qui et.\";s:11:\"description\";s:309:\"Omnis sit sit qui vel voluptatibus modi sequi. Commodi odit et deleniti qui excepturi. Dolorum adipisci cum omnis excepturi voluptatem. Occaecati laborum nobis vel sint et iure fugiat commodi. Atque rem aliquam quod. Sunt nisi est ut aut dolorem qui minima. Accusamus eum sed iste enim deleniti repellat nemo.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:13:\"dolore-qui-et\";s:9:\"views_num\";i:84;s:7:\"user_id\";i:45;s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2012-05-03 02:05:17\";s:10:\"updated_at\";s:19:\"2012-05-03 02:05:17\";s:14:\"comments_count\";i:9;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:12;s:5:\"title\";s:14:\"Dolore qui et.\";s:11:\"description\";s:309:\"Omnis sit sit qui vel voluptatibus modi sequi. Commodi odit et deleniti qui excepturi. Dolorum adipisci cum omnis excepturi voluptatem. Occaecati laborum nobis vel sint et iure fugiat commodi. Atque rem aliquam quod. Sunt nisi est ut aut dolorem qui minima. Accusamus eum sed iste enim deleniti repellat nemo.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:13:\"dolore-qui-et\";s:9:\"views_num\";i:84;s:7:\"user_id\";i:45;s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2012-05-03 02:05:17\";s:10:\"updated_at\";s:19:\"2012-05-03 02:05:17\";s:14:\"comments_count\";i:9;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"comments\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:9:{i:0;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:8;s:5:\"value\";s:94:\"Magni sunt veritatis adipisci accusantium culpa illo. Laborum quasi enim officia similique et.\";s:10:\"ip_address\";s:12:\"43.108.75.56\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:25;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:8;s:5:\"value\";s:94:\"Magni sunt veritatis adipisci accusantium culpa illo. Laborum quasi enim officia similique et.\";s:10:\"ip_address\";s:12:\"43.108.75.56\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:25;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:39;s:5:\"value\";s:143:\"Doloremque et molestiae itaque eos eius autem voluptas adipisci. Aut doloribus ad omnis et dolore et. Vel cumque non nemo est velit eum veniam.\";s:10:\"ip_address\";s:14:\"166.140.179.14\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:23;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:39;s:5:\"value\";s:143:\"Doloremque et molestiae itaque eos eius autem voluptas adipisci. Aut doloribus ad omnis et dolore et. Vel cumque non nemo est velit eum veniam.\";s:10:\"ip_address\";s:14:\"166.140.179.14\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:23;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:40;s:5:\"value\";s:94:\"Incidunt quaerat impedit et. Aut autem eaque sit ut. Et soluta tenetur sequi similique cumque.\";s:10:\"ip_address\";s:13:\"87.153.196.59\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:40;s:5:\"value\";s:94:\"Incidunt quaerat impedit et. Aut autem eaque sit ut. Et soluta tenetur sequi similique cumque.\";s:10:\"ip_address\";s:13:\"87.153.196.59\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:94;s:5:\"value\";s:114:\"In voluptatum iusto sit odit sed qui consequatur quam. Aliquam consequatur molestias ut necessitatibus atque vero.\";s:10:\"ip_address\";s:14:\"90.194.117.194\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:45;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:94;s:5:\"value\";s:114:\"In voluptatum iusto sit odit sed qui consequatur quam. Aliquam consequatur molestias ut necessitatibus atque vero.\";s:10:\"ip_address\";s:14:\"90.194.117.194\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:45;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:114;s:5:\"value\";s:98:\"Ea iste quidem aut amet. Tempora sed dicta ea qui sit et non. Odit qui aut repellendus vel libero.\";s:10:\"ip_address\";s:14:\"218.117.212.89\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:33;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:114;s:5:\"value\";s:98:\"Ea iste quidem aut amet. Tempora sed dicta ea qui sit et non. Odit qui aut repellendus vel libero.\";s:10:\"ip_address\";s:14:\"218.117.212.89\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:33;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:152;s:5:\"value\";s:59:\"Vitae accusamus dolorem ea ea rerum. Est est eum voluptate.\";s:10:\"ip_address\";s:12:\"101.3.46.109\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:152;s:5:\"value\";s:59:\"Vitae accusamus dolorem ea ea rerum. Est est eum voluptate.\";s:10:\"ip_address\";s:12:\"101.3.46.109\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:167;s:5:\"value\";s:89:\"Quae sed quisquam quo sed sed odio. Non aut tempore laboriosam maiores laboriosam labore.\";s:10:\"ip_address\";s:12:\"143.27.52.85\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:14;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:167;s:5:\"value\";s:89:\"Quae sed quisquam quo sed sed odio. Non aut tempore laboriosam maiores laboriosam labore.\";s:10:\"ip_address\";s:12:\"143.27.52.85\";s:6:\"status\";i:1;s:7:\"post_id\";i:12;s:7:\"user_id\";i:14;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:175;s:5:\"value\";s:137:\"Sed illo sed fugit quo. Atque praesentium tempora maiores reiciendis consectetur quos. Consectetur autem dolore itaque odit quos maiores.\";s:10:\"ip_address\";s:12:\"60.67.242.63\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:175;s:5:\"value\";s:137:\"Sed illo sed fugit quo. Atque praesentium tempora maiores reiciendis consectetur quos. Consectetur autem dolore itaque odit quos maiores.\";s:10:\"ip_address\";s:12:\"60.67.242.63\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:200;s:5:\"value\";s:76:\"Rerum autem nulla consequatur asperiores. Nihil beatae earum quas eius sunt.\";s:10:\"ip_address\";s:15:\"140.248.143.214\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:48;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:200;s:5:\"value\";s:76:\"Rerum autem nulla consequatur asperiores. Nihil beatae earum quas eius sunt.\";s:10:\"ip_address\";s:15:\"140.248.143.214\";s:6:\"status\";i:0;s:7:\"post_id\";i:12;s:7:\"user_id\";i:48;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:31;s:5:\"title\";s:22:\"Dolorem doloribus aut.\";s:11:\"description\";s:279:\"Possimus eligendi excepturi vel explicabo vel quaerat est. Corrupti optio et perferendis occaecati. Vel cupiditate accusamus saepe placeat quo doloremque enim labore. Corporis esse qui similique. Recusandae vel minus maiores enim ullam similique. Molestias aspernatur ut aliquam.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:21:\"dolorem-doloribus-aut\";s:9:\"views_num\";i:5;s:7:\"user_id\";i:40;s:11:\"category_id\";i:2;s:10:\"created_at\";s:19:\"1990-12-09 03:12:01\";s:10:\"updated_at\";s:19:\"1990-12-09 03:12:01\";s:14:\"comments_count\";i:7;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:31;s:5:\"title\";s:22:\"Dolorem doloribus aut.\";s:11:\"description\";s:279:\"Possimus eligendi excepturi vel explicabo vel quaerat est. Corrupti optio et perferendis occaecati. Vel cupiditate accusamus saepe placeat quo doloremque enim labore. Corporis esse qui similique. Recusandae vel minus maiores enim ullam similique. Molestias aspernatur ut aliquam.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:21:\"dolorem-doloribus-aut\";s:9:\"views_num\";i:5;s:7:\"user_id\";i:40;s:11:\"category_id\";i:2;s:10:\"created_at\";s:19:\"1990-12-09 03:12:01\";s:10:\"updated_at\";s:19:\"1990-12-09 03:12:01\";s:14:\"comments_count\";i:7;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"comments\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:7:{i:0;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:24;s:5:\"value\";s:63:\"Rerum in alias id. Asperiores placeat cum in qui ut maxime eos.\";s:10:\"ip_address\";s:13:\"96.153.13.249\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:16;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:24;s:5:\"value\";s:63:\"Rerum in alias id. Asperiores placeat cum in qui ut maxime eos.\";s:10:\"ip_address\";s:13:\"96.153.13.249\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:16;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:89;s:5:\"value\";s:109:\"Consequatur omnis inventore nisi numquam soluta quas. Quasi accusantium culpa et quaerat neque quo quo omnis.\";s:10:\"ip_address\";s:11:\"79.93.7.213\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:3;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:89;s:5:\"value\";s:109:\"Consequatur omnis inventore nisi numquam soluta quas. Quasi accusantium culpa et quaerat neque quo quo omnis.\";s:10:\"ip_address\";s:11:\"79.93.7.213\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:3;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:91;s:5:\"value\";s:73:\"Est a explicabo iusto deserunt aut et tenetur. Animi omnis dolores rerum.\";s:10:\"ip_address\";s:13:\"33.51.188.209\";s:6:\"status\";i:0;s:7:\"post_id\";i:31;s:7:\"user_id\";i:50;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:91;s:5:\"value\";s:73:\"Est a explicabo iusto deserunt aut et tenetur. Animi omnis dolores rerum.\";s:10:\"ip_address\";s:13:\"33.51.188.209\";s:6:\"status\";i:0;s:7:\"post_id\";i:31;s:7:\"user_id\";i:50;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:103;s:5:\"value\";s:88:\"Alias et repudiandae at optio ipsa porro. Et beatae ducimus quis minus dolores repellat.\";s:10:\"ip_address\";s:13:\"66.17.135.117\";s:6:\"status\";i:0;s:7:\"post_id\";i:31;s:7:\"user_id\";i:41;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:103;s:5:\"value\";s:88:\"Alias et repudiandae at optio ipsa porro. Et beatae ducimus quis minus dolores repellat.\";s:10:\"ip_address\";s:13:\"66.17.135.117\";s:6:\"status\";i:0;s:7:\"post_id\";i:31;s:7:\"user_id\";i:41;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:120;s:5:\"value\";s:127:\"Accusamus minus quos sit dolor qui consequatur. Iusto quis aspernatur quia. Nobis commodi voluptatem facilis animi ab autem et.\";s:10:\"ip_address\";s:14:\"155.194.103.50\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:23;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:120;s:5:\"value\";s:127:\"Accusamus minus quos sit dolor qui consequatur. Iusto quis aspernatur quia. Nobis commodi voluptatem facilis animi ab autem et.\";s:10:\"ip_address\";s:14:\"155.194.103.50\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:23;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:127;s:5:\"value\";s:102:\"Occaecati cumque aliquid ut sed rerum nam mollitia omnis. Voluptates explicabo aut aut pariatur natus.\";s:10:\"ip_address\";s:14:\"146.85.232.205\";s:6:\"status\";i:0;s:7:\"post_id\";i:31;s:7:\"user_id\";i:46;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:127;s:5:\"value\";s:102:\"Occaecati cumque aliquid ut sed rerum nam mollitia omnis. Voluptates explicabo aut aut pariatur natus.\";s:10:\"ip_address\";s:14:\"146.85.232.205\";s:6:\"status\";i:0;s:7:\"post_id\";i:31;s:7:\"user_id\";i:46;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:201;s:5:\"value\";s:2:\"ll\";s:10:\"ip_address\";s:9:\"127.0.0.1\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-03-26 22:04:03\";s:10:\"updated_at\";s:19:\"2025-03-26 22:04:03\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:201;s:5:\"value\";s:2:\"ll\";s:10:\"ip_address\";s:9:\"127.0.0.1\";s:6:\"status\";i:1;s:7:\"post_id\";i:31;s:7:\"user_id\";i:1;s:10:\"created_at\";s:19:\"2025-03-26 22:04:03\";s:10:\"updated_at\";s:19:\"2025-03-26 22:04:03\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:12:{s:2:\"id\";i:9;s:5:\"title\";s:18:\"Aut voluptate qui.\";s:11:\"description\";s:333:\"Pariatur odio eum quisquam est architecto vero. Odio accusantium dolorum error omnis libero. Dolore eaque officiis repellat aut voluptas sint accusantium. Veritatis dignissimos perferendis ut a tempore. Ducimus facilis tenetur omnis voluptates voluptatem quasi sint voluptas. Adipisci et dignissimos molestias molestiae aut et sequi.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:17:\"aut-voluptate-qui\";s:9:\"views_num\";i:47;s:7:\"user_id\";i:25;s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2002-10-03 07:10:23\";s:10:\"updated_at\";s:19:\"2002-10-03 07:10:23\";s:14:\"comments_count\";i:6;}s:11:\"\0*\0original\";a:12:{s:2:\"id\";i:9;s:5:\"title\";s:18:\"Aut voluptate qui.\";s:11:\"description\";s:333:\"Pariatur odio eum quisquam est architecto vero. Odio accusantium dolorum error omnis libero. Dolore eaque officiis repellat aut voluptas sint accusantium. Veritatis dignissimos perferendis ut a tempore. Ducimus facilis tenetur omnis voluptates voluptatem quasi sint voluptas. Adipisci et dignissimos molestias molestiae aut et sequi.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:17:\"aut-voluptate-qui\";s:9:\"views_num\";i:47;s:7:\"user_id\";i:25;s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2002-10-03 07:10:23\";s:10:\"updated_at\";s:19:\"2002-10-03 07:10:23\";s:14:\"comments_count\";i:6;}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:1:{s:8:\"comments\";O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:6:{i:0;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:7;s:5:\"value\";s:169:\"Explicabo accusamus et sunt autem repudiandae sequi aliquam. Sit alias laudantium adipisci eum est aliquid. Voluptate veniam non magni deleniti numquam dignissimos quia.\";s:10:\"ip_address\";s:14:\"66.216.110.103\";s:6:\"status\";i:1;s:7:\"post_id\";i:9;s:7:\"user_id\";i:10;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:7;s:5:\"value\";s:169:\"Explicabo accusamus et sunt autem repudiandae sequi aliquam. Sit alias laudantium adipisci eum est aliquid. Voluptate veniam non magni deleniti numquam dignissimos quia.\";s:10:\"ip_address\";s:14:\"66.216.110.103\";s:6:\"status\";i:1;s:7:\"post_id\";i:9;s:7:\"user_id\";i:10;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:30;s:5:\"value\";s:77:\"Ipsa nisi quidem voluptates eius inventore aut ab. Et sapiente non accusamus.\";s:10:\"ip_address\";s:15:\"252.105.134.205\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:10;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:30;s:5:\"value\";s:77:\"Ipsa nisi quidem voluptates eius inventore aut ab. Et sapiente non accusamus.\";s:10:\"ip_address\";s:15:\"252.105.134.205\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:10;s:10:\"created_at\";s:19:\"2025-03-14 02:13:46\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:46\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:113;s:5:\"value\";s:102:\"Voluptatem voluptatem reiciendis nihil nisi id. Dolor dignissimos commodi maiores repudiandae et quis.\";s:10:\"ip_address\";s:13:\"255.225.33.74\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:9;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:113;s:5:\"value\";s:102:\"Voluptatem voluptatem reiciendis nihil nisi id. Dolor dignissimos commodi maiores repudiandae et quis.\";s:10:\"ip_address\";s:13:\"255.225.33.74\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:9;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:126;s:5:\"value\";s:95:\"Quos voluptatem sint quaerat et hic est eaque. Repellat ea quia ducimus debitis rem quia et ea.\";s:10:\"ip_address\";s:14:\"251.77.231.203\";s:6:\"status\";i:1;s:7:\"post_id\";i:9;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:126;s:5:\"value\";s:95:\"Quos voluptatem sint quaerat et hic est eaque. Repellat ea quia ducimus debitis rem quia et ea.\";s:10:\"ip_address\";s:14:\"251.77.231.203\";s:6:\"status\";i:1;s:7:\"post_id\";i:9;s:7:\"user_id\";i:22;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:135;s:5:\"value\";s:121:\"Quis et voluptas culpa consequatur similique. Ipsa expedita quam ullam necessitatibus. Tempore eaque quis debitis itaque.\";s:10:\"ip_address\";s:13:\"98.230.178.78\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:3;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:135;s:5:\"value\";s:121:\"Quis et voluptas culpa consequatur similique. Ipsa expedita quam ullam necessitatibus. Tempore eaque quis debitis itaque.\";s:10:\"ip_address\";s:13:\"98.230.178.78\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:3;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:18:\"App\\Models\\Comment\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"comments\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:8:{s:2:\"id\";i:174;s:5:\"value\";s:120:\"Consequatur eius quia et vitae unde qui libero. Expedita quaerat sunt cum magnam quod est quia. Nam aut quo tenetur qui.\";s:10:\"ip_address\";s:11:\"141.8.70.69\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:44;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:11:\"\0*\0original\";a:8:{s:2:\"id\";i:174;s:5:\"value\";s:120:\"Consequatur eius quia et vitae unde qui libero. Expedita quaerat sunt cum magnam quod est quia. Nam aut quo tenetur qui.\";s:10:\"ip_address\";s:11:\"141.8.70.69\";s:6:\"status\";i:0;s:7:\"post_id\";i:9;s:7:\"user_id\";i:44;s:10:\"created_at\";s:19:\"2025-03-14 02:13:47\";s:10:\"updated_at\";s:19:\"2025-03-14 02:13:47\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:5:{i:0;s:5:\"value\";i:1;s:10:\"ip_address\";i:2;s:6:\"status\";i:3;s:7:\"post_id\";i:4;s:7:\"user_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1746144298);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('read_more_posts', 'O:39:\"Illuminate\\Database\\Eloquent\\Collection\":2:{s:8:\"\0*\0items\";a:10:{i:0;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:32;s:5:\"title\";s:26:\"Magnam possimus explicabo.\";s:11:\"description\";s:325:\"Commodi ut laboriosam mollitia eveniet fugit error est magnam. Doloribus aspernatur qui molestiae rem est dolore a quos. Corrupti non enim omnis qui iste libero. Et aut quas alias doloribus voluptatem mollitia cumque quis. Debitis nihil dolores ad ut non consectetur. Similique facilis eligendi aut non accusantium itaque et.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:25:\"magnam-possimus-explicabo\";s:9:\"views_num\";i:88;s:7:\"user_id\";i:22;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2023-11-12 01:11:12\";s:10:\"updated_at\";s:19:\"2023-11-12 01:11:12\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:32;s:5:\"title\";s:26:\"Magnam possimus explicabo.\";s:11:\"description\";s:325:\"Commodi ut laboriosam mollitia eveniet fugit error est magnam. Doloribus aspernatur qui molestiae rem est dolore a quos. Corrupti non enim omnis qui iste libero. Et aut quas alias doloribus voluptatem mollitia cumque quis. Debitis nihil dolores ad ut non consectetur. Similique facilis eligendi aut non accusantium itaque et.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:25:\"magnam-possimus-explicabo\";s:9:\"views_num\";i:88;s:7:\"user_id\";i:22;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2023-11-12 01:11:12\";s:10:\"updated_at\";s:19:\"2023-11-12 01:11:12\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:1;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:20;s:5:\"title\";s:18:\"Nihil dolor iusto.\";s:11:\"description\";s:225:\"Ratione non corporis et voluptas reiciendis. Quam commodi nulla recusandae provident quasi autem. Ut reprehenderit voluptatem sequi. Sunt rerum quidem voluptatum enim quidem aut. Deleniti tempora fugit quibusdam est repellat.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:17:\"nihil-dolor-iusto\";s:9:\"views_num\";i:21;s:7:\"user_id\";i:36;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2023-05-29 02:05:11\";s:10:\"updated_at\";s:19:\"2023-05-29 02:05:11\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:20;s:5:\"title\";s:18:\"Nihil dolor iusto.\";s:11:\"description\";s:225:\"Ratione non corporis et voluptas reiciendis. Quam commodi nulla recusandae provident quasi autem. Ut reprehenderit voluptatem sequi. Sunt rerum quidem voluptatum enim quidem aut. Deleniti tempora fugit quibusdam est repellat.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:17:\"nihil-dolor-iusto\";s:9:\"views_num\";i:21;s:7:\"user_id\";i:36;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2023-05-29 02:05:11\";s:10:\"updated_at\";s:19:\"2023-05-29 02:05:11\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:2;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:43;s:5:\"title\";s:16:\"Eius ipsa nihil.\";s:11:\"description\";s:224:\"Nesciunt accusantium voluptatum repellat. Consequatur eos aut doloremque possimus nihil. Voluptas voluptatum aut ea est. Accusantium facilis commodi sequi beatae inventore fuga non nihil. Nisi assumenda nostrum optio ut nam.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:15:\"eius-ipsa-nihil\";s:9:\"views_num\";i:51;s:7:\"user_id\";i:30;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2023-04-05 07:04:33\";s:10:\"updated_at\";s:19:\"2023-04-05 07:04:33\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:43;s:5:\"title\";s:16:\"Eius ipsa nihil.\";s:11:\"description\";s:224:\"Nesciunt accusantium voluptatum repellat. Consequatur eos aut doloremque possimus nihil. Voluptas voluptatum aut ea est. Accusantium facilis commodi sequi beatae inventore fuga non nihil. Nisi assumenda nostrum optio ut nam.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:15:\"eius-ipsa-nihil\";s:9:\"views_num\";i:51;s:7:\"user_id\";i:30;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2023-04-05 07:04:33\";s:10:\"updated_at\";s:19:\"2023-04-05 07:04:33\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:3;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:46;s:5:\"title\";s:14:\"Dolor eos qui.\";s:11:\"description\";s:266:\"Provident cupiditate animi voluptatem ut maxime totam assumenda. Assumenda quia est quis quis voluptas aliquid. Ipsum iusto quibusdam aperiam ratione ut corrupti soluta eaque. Ad sunt a repudiandae natus fugit distinctio. Nihil maxime distinctio corporis aspernatur.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:13:\"dolor-eos-qui\";s:9:\"views_num\";i:37;s:7:\"user_id\";i:8;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2020-10-29 06:10:38\";s:10:\"updated_at\";s:19:\"2020-10-29 06:10:38\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:46;s:5:\"title\";s:14:\"Dolor eos qui.\";s:11:\"description\";s:266:\"Provident cupiditate animi voluptatem ut maxime totam assumenda. Assumenda quia est quis quis voluptas aliquid. Ipsum iusto quibusdam aperiam ratione ut corrupti soluta eaque. Ad sunt a repudiandae natus fugit distinctio. Nihil maxime distinctio corporis aspernatur.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:13:\"dolor-eos-qui\";s:9:\"views_num\";i:37;s:7:\"user_id\";i:8;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2020-10-29 06:10:38\";s:10:\"updated_at\";s:19:\"2020-10-29 06:10:38\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:4;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:19;s:5:\"title\";s:16:\"Id et sed velit.\";s:11:\"description\";s:238:\"Impedit minus dolore optio. Perspiciatis iusto cumque unde alias. Reiciendis et quasi dicta at pariatur dolores voluptatem. Reprehenderit sunt repudiandae non ab ut qui. Aut non enim rerum ut accusantium. Totam ex velit voluptate est eum.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:15:\"id-et-sed-velit\";s:9:\"views_num\";i:29;s:7:\"user_id\";i:37;s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2015-08-04 11:08:35\";s:10:\"updated_at\";s:19:\"2015-08-04 11:08:35\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:19;s:5:\"title\";s:16:\"Id et sed velit.\";s:11:\"description\";s:238:\"Impedit minus dolore optio. Perspiciatis iusto cumque unde alias. Reiciendis et quasi dicta at pariatur dolores voluptatem. Reprehenderit sunt repudiandae non ab ut qui. Aut non enim rerum ut accusantium. Totam ex velit voluptate est eum.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:15:\"id-et-sed-velit\";s:9:\"views_num\";i:29;s:7:\"user_id\";i:37;s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2015-08-04 11:08:35\";s:10:\"updated_at\";s:19:\"2015-08-04 11:08:35\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:5;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:25;s:5:\"title\";s:23:\"Dolores in laborum cum.\";s:11:\"description\";s:215:\"Sunt quia harum soluta similique accusamus. Consequatur et quod accusamus harum rerum ab libero. Voluptas occaecati quae quis vel. Autem molestiae doloremque aperiam qui ipsum. Nostrum assumenda ducimus aut ab sunt.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:22:\"dolores-in-laborum-cum\";s:9:\"views_num\";i:66;s:7:\"user_id\";i:13;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2012-11-29 04:11:34\";s:10:\"updated_at\";s:19:\"2012-11-29 04:11:34\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:25;s:5:\"title\";s:23:\"Dolores in laborum cum.\";s:11:\"description\";s:215:\"Sunt quia harum soluta similique accusamus. Consequatur et quod accusamus harum rerum ab libero. Voluptas occaecati quae quis vel. Autem molestiae doloremque aperiam qui ipsum. Nostrum assumenda ducimus aut ab sunt.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:22:\"dolores-in-laborum-cum\";s:9:\"views_num\";i:66;s:7:\"user_id\";i:13;s:11:\"category_id\";i:1;s:10:\"created_at\";s:19:\"2012-11-29 04:11:34\";s:10:\"updated_at\";s:19:\"2012-11-29 04:11:34\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:6;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:12;s:5:\"title\";s:14:\"Dolore qui et.\";s:11:\"description\";s:309:\"Omnis sit sit qui vel voluptatibus modi sequi. Commodi odit et deleniti qui excepturi. Dolorum adipisci cum omnis excepturi voluptatem. Occaecati laborum nobis vel sint et iure fugiat commodi. Atque rem aliquam quod. Sunt nisi est ut aut dolorem qui minima. Accusamus eum sed iste enim deleniti repellat nemo.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:13:\"dolore-qui-et\";s:9:\"views_num\";i:84;s:7:\"user_id\";i:45;s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2012-05-03 02:05:17\";s:10:\"updated_at\";s:19:\"2012-05-03 02:05:17\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:12;s:5:\"title\";s:14:\"Dolore qui et.\";s:11:\"description\";s:309:\"Omnis sit sit qui vel voluptatibus modi sequi. Commodi odit et deleniti qui excepturi. Dolorum adipisci cum omnis excepturi voluptatem. Occaecati laborum nobis vel sint et iure fugiat commodi. Atque rem aliquam quod. Sunt nisi est ut aut dolorem qui minima. Accusamus eum sed iste enim deleniti repellat nemo.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:13:\"dolore-qui-et\";s:9:\"views_num\";i:84;s:7:\"user_id\";i:45;s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2012-05-03 02:05:17\";s:10:\"updated_at\";s:19:\"2012-05-03 02:05:17\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:7;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:36;s:5:\"title\";s:24:\"Deserunt veritatis quia.\";s:11:\"description\";s:340:\"Officiis delectus sint cumque eum vitae necessitatibus facilis. Ut et repellendus velit dolor exercitationem. Qui quo sunt dicta cumque est. Quam ex sit minus fugit consequuntur et et qui. Tempora iste quia a voluptatem accusantium. Quam sed sit in voluptatem voluptas ullam accusantium. Doloremque rerum sapiente sint ex doloremque sit et.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:23:\"deserunt-veritatis-quia\";s:9:\"views_num\";i:2;s:7:\"user_id\";i:48;s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2011-01-26 07:01:10\";s:10:\"updated_at\";s:19:\"2011-01-26 07:01:10\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:36;s:5:\"title\";s:24:\"Deserunt veritatis quia.\";s:11:\"description\";s:340:\"Officiis delectus sint cumque eum vitae necessitatibus facilis. Ut et repellendus velit dolor exercitationem. Qui quo sunt dicta cumque est. Quam ex sit minus fugit consequuntur et et qui. Tempora iste quia a voluptatem accusantium. Quam sed sit in voluptatem voluptas ullam accusantium. Doloremque rerum sapiente sint ex doloremque sit et.\";s:12:\"comment_able\";i:1;s:6:\"status\";i:1;s:4:\"slug\";s:23:\"deserunt-veritatis-quia\";s:9:\"views_num\";i:2;s:7:\"user_id\";i:48;s:11:\"category_id\";i:3;s:10:\"created_at\";s:19:\"2011-01-26 07:01:10\";s:10:\"updated_at\";s:19:\"2011-01-26 07:01:10\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:8;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:6;s:5:\"title\";s:29:\"Quo corrupti perferendis aut.\";s:11:\"description\";s:211:\"Maiores eius non quos voluptatem iusto architecto. Nihil quo minus doloribus hic non. Ut autem iure perspiciatis. Non beatae occaecati optio ipsa alias quia. Ea et laborum reiciendis sed nulla modi vel deleniti.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:28:\"quo-corrupti-perferendis-aut\";s:9:\"views_num\";i:95;s:7:\"user_id\";i:43;s:11:\"category_id\";i:2;s:10:\"created_at\";s:19:\"2010-01-15 07:01:49\";s:10:\"updated_at\";s:19:\"2010-01-15 07:01:49\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:6;s:5:\"title\";s:29:\"Quo corrupti perferendis aut.\";s:11:\"description\";s:211:\"Maiores eius non quos voluptatem iusto architecto. Nihil quo minus doloribus hic non. Ut autem iure perspiciatis. Non beatae occaecati optio ipsa alias quia. Ea et laborum reiciendis sed nulla modi vel deleniti.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:28:\"quo-corrupti-perferendis-aut\";s:9:\"views_num\";i:95;s:7:\"user_id\";i:43;s:11:\"category_id\";i:2;s:10:\"created_at\";s:19:\"2010-01-15 07:01:49\";s:10:\"updated_at\";s:19:\"2010-01-15 07:01:49\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}i:9;O:15:\"App\\Models\\Post\":30:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:5:\"posts\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:19:\"preventsLazyLoading\";b:0;s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:28:\"\0*\0escapeWhenCastingToString\";b:0;s:13:\"\0*\0attributes\";a:11:{s:2:\"id\";i:9;s:5:\"title\";s:18:\"Aut voluptate qui.\";s:11:\"description\";s:333:\"Pariatur odio eum quisquam est architecto vero. Odio accusantium dolorum error omnis libero. Dolore eaque officiis repellat aut voluptas sint accusantium. Veritatis dignissimos perferendis ut a tempore. Ducimus facilis tenetur omnis voluptates voluptatem quasi sint voluptas. Adipisci et dignissimos molestias molestiae aut et sequi.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:17:\"aut-voluptate-qui\";s:9:\"views_num\";i:47;s:7:\"user_id\";i:25;s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2002-10-03 07:10:23\";s:10:\"updated_at\";s:19:\"2002-10-03 07:10:23\";}s:11:\"\0*\0original\";a:11:{s:2:\"id\";i:9;s:5:\"title\";s:18:\"Aut voluptate qui.\";s:11:\"description\";s:333:\"Pariatur odio eum quisquam est architecto vero. Odio accusantium dolorum error omnis libero. Dolore eaque officiis repellat aut voluptas sint accusantium. Veritatis dignissimos perferendis ut a tempore. Ducimus facilis tenetur omnis voluptates voluptatem quasi sint voluptas. Adipisci et dignissimos molestias molestiae aut et sequi.\";s:12:\"comment_able\";i:0;s:6:\"status\";i:1;s:4:\"slug\";s:17:\"aut-voluptate-qui\";s:9:\"views_num\";i:47;s:7:\"user_id\";i:25;s:11:\"category_id\";i:4;s:10:\"created_at\";s:19:\"2002-10-03 07:10:23\";s:10:\"updated_at\";s:19:\"2002-10-03 07:10:23\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:21:\"\0*\0attributeCastCache\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:13:\"usesUniqueIds\";b:0;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:7:{i:0;s:5:\"title\";i:1;s:11:\"description\";i:2;s:12:\"comment_able\";i:3;s:6:\"status\";i:4;s:4:\"slug\";i:5;s:7:\"user_id\";i:6;s:11:\"category_id\";}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', 1746144297);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Category', 1, 'mobile-category', '2000-03-17 07:03:12', '2000-03-17 07:03:12'),
(2, 'Sports Category', 1, 'sports-category', '2000-03-17 07:03:12', '2000-03-17 07:03:12'),
(3, 'Fashion Category', 1, 'fashion-category', '2000-03-17 07:03:12', '2000-03-17 07:03:12'),
(4, 'Clothe Category', 1, 'clothe-category', '2000-03-17 07:03:12', '2000-03-17 07:03:12');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `value`, `ip_address`, `status`, `post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ab aut asperiores quia ad. Dignissimos voluptatum odit possimus optio voluptatem.', '231.68.194.62', 1, 43, 22, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(2, 'Optio natus laboriosam totam. Voluptatibus repudiandae odio explicabo asperiores a voluptatibus. Dolore facere optio et quis.', '184.235.46.248', 0, 2, 36, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(3, 'Fuga illum sit aut qui magni eos a maxime. Odio ab veniam nulla sit porro amet.', '76.211.70.238', 0, 44, 22, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(4, 'Enim et quia cupiditate quibusdam voluptas. Ut eos aut et nemo est accusamus quas. Sed sequi nesciunt distinctio nam.', '217.205.194.23', 0, 4, 8, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(5, 'Voluptatem vel iure et. Debitis quis explicabo et ullam dicta. Aliquam corrupti aut vel vel minus ipsum aut.', '193.231.50.41', 0, 27, 32, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(6, 'Et ut eveniet ut non error sint. Hic in ut vel quis aut deserunt. Vero quo sed aut cupiditate aperiam.', '99.112.0.197', 1, 46, 49, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(7, 'Explicabo accusamus et sunt autem repudiandae sequi aliquam. Sit alias laudantium adipisci eum est aliquid. Voluptate veniam non magni deleniti numquam dignissimos quia.', '66.216.110.103', 1, 9, 10, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(8, 'Magni sunt veritatis adipisci accusantium culpa illo. Laborum quasi enim officia similique et.', '43.108.75.56', 0, 12, 25, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(9, 'Aut est commodi voluptas. Et consequuntur commodi molestias facere minima sed sint. Voluptatibus sit placeat inventore et voluptas placeat itaque.', '238.18.224.138', 1, 38, 43, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(10, 'Autem saepe aut tempora similique. At laboriosam inventore eligendi est ut dignissimos asperiores. Adipisci sunt suscipit reprehenderit ut non fugiat aut officia.', '229.66.126.81', 1, 3, 31, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(11, 'Delectus amet soluta est omnis cumque provident. Est possimus nobis omnis ut voluptas a asperiores accusamus.', '147.100.157.36', 0, 46, 31, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(12, 'Et labore nostrum quibusdam nihil veritatis. Numquam voluptatem cupiditate laudantium nulla ullam esse.', '9.190.228.138', 1, 7, 15, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(13, 'Expedita harum odit omnis. Est autem temporibus qui reiciendis. Reiciendis sint velit occaecati doloremque ipsa ipsam.', '13.51.222.73', 1, 25, 14, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(14, 'Consequatur eos voluptas ullam rerum. Alias beatae possimus aut ut est quibusdam vitae.', '24.32.63.209', 1, 25, 11, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(15, 'Et modi sint at velit voluptatibus. Pariatur sit natus qui totam velit quisquam.', '236.22.68.111', 0, 20, 28, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(16, 'Dolores fugiat error illo corrupti. Quis repudiandae ut nihil officiis. Quia corporis reprehenderit molestiae qui porro quos alias explicabo.', '141.53.72.114', 0, 48, 20, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(17, 'Rerum a autem ipsam. Molestiae sapiente quia eligendi quo labore fuga. Odio perspiciatis doloribus quos sit voluptatibus laborum.', '113.242.123.244', 0, 22, 4, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(18, 'Quia impedit blanditiis ut quia sed voluptatem qui. Aliquam sint consequuntur ducimus doloremque aliquam.', '219.167.111.14', 1, 20, 27, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(19, 'Est laboriosam tempore consequatur deleniti eligendi. Cumque molestias rem possimus nulla nihil.', '9.189.38.143', 0, 13, 21, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(20, 'Perspiciatis illum eius quae dolores enim facilis expedita. Omnis est unde sit repudiandae quo atque enim. Non aut beatae porro.', '242.150.124.166', 1, 10, 47, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(21, 'Eos velit odio beatae laboriosam consequatur. Labore recusandae distinctio quibusdam nam eius.', '231.53.110.209', 1, 49, 4, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(22, 'Corrupti modi repudiandae repudiandae necessitatibus corporis dolore. Alias expedita tempore et perferendis dolores ea voluptas et. Ut qui dolorem excepturi harum enim voluptatem ex laborum.', '209.84.142.28', 1, 40, 34, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(23, 'Dolores quas voluptate aliquid reprehenderit qui rem veritatis. Aut tempora ea magni harum distinctio. Et aut provident qui iusto ut soluta.', '133.51.98.151', 0, 34, 4, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(24, 'Rerum in alias id. Asperiores placeat cum in qui ut maxime eos.', '96.153.13.249', 1, 31, 16, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(25, 'Soluta dicta quae dolor suscipit illo. Soluta culpa corrupti repudiandae iusto eos fugiat molestiae. Et aut ut ipsum.', '30.13.188.52', 1, 4, 46, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(26, 'Pariatur laboriosam nemo at sed ipsam. Itaque asperiores voluptatem velit deserunt.', '48.245.205.88', 1, 4, 6, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(27, 'Ratione exercitationem itaque quia explicabo rem. Repellendus quam unde cupiditate optio omnis.', '242.235.205.72', 1, 35, 25, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(28, 'Nobis aut voluptatem non a animi odit maxime. Placeat voluptate voluptas rerum. Reiciendis velit amet sed rem perspiciatis.', '27.131.87.112', 1, 5, 10, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(29, 'Ducimus ab ipsa hic iure. Expedita molestiae officia aut vel facere et facilis sit.', '31.55.41.229', 1, 19, 3, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(30, 'Ipsa nisi quidem voluptates eius inventore aut ab. Et sapiente non accusamus.', '252.105.134.205', 0, 9, 10, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(31, 'Quis consequatur delectus eos dolores ratione enim. Aut et numquam est laborum rerum. Ullam rerum blanditiis laudantium consequatur doloremque quo.', '7.94.24.20', 1, 44, 32, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(32, 'Veniam dignissimos assumenda esse asperiores commodi nihil non debitis. Suscipit non sunt nihil recusandae quis ad eos. Eligendi dolores aut voluptatem aut minima quis quidem.', '218.78.8.218', 1, 42, 23, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(33, 'Necessitatibus ea possimus autem deleniti facilis omnis. Adipisci rerum molestiae aut facilis.', '96.173.74.235', 1, 40, 50, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(34, 'Est dolor nisi et recusandae. Omnis aliquam minus est laboriosam quisquam quo ut. Voluptatum voluptas ad autem.', '60.38.212.199', 1, 15, 42, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(35, 'Corrupti ullam a dolores nobis possimus ea. Quis et eius laudantium tempore incidunt distinctio cum. Sit error esse iure in eum.', '52.150.251.13', 1, 29, 31, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(36, 'Et voluptas reiciendis voluptas ullam soluta aut iste. Exercitationem asperiores aut laborum vitae animi qui.', '137.188.119.210', 1, 23, 37, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(37, 'Molestiae modi ipsam aut blanditiis. Aut deleniti est dolore. Sunt ut reprehenderit quibusdam maiores ipsa.', '27.145.181.65', 1, 10, 28, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(38, 'Velit sed rerum ea autem quo. Voluptas provident adipisci magni impedit sapiente dicta.', '143.211.71.90', 0, 42, 37, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(39, 'Doloremque et molestiae itaque eos eius autem voluptas adipisci. Aut doloribus ad omnis et dolore et. Vel cumque non nemo est velit eum veniam.', '166.140.179.14', 0, 12, 23, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(40, 'Incidunt quaerat impedit et. Aut autem eaque sit ut. Et soluta tenetur sequi similique cumque.', '87.153.196.59', 1, 12, 22, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(41, 'Dignissimos ad ullam nesciunt consequatur. Veritatis maxime aliquid cupiditate nisi consequatur.', '21.169.125.48', 1, 15, 12, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(42, 'Maiores placeat voluptatum et qui voluptatem aut. Ut voluptas molestiae et omnis laboriosam placeat.', '109.66.244.212', 1, 24, 2, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(43, 'Nihil assumenda repellat dolor ad inventore sit rerum. Quos saepe sapiente facilis laudantium consequatur illo.', '115.70.53.231', 1, 23, 15, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(44, 'Voluptas sit qui rerum deleniti. Ad architecto laudantium est et neque.', '57.183.57.241', 0, 5, 34, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(45, 'Et qui nemo ut. Ut odio et et a provident. Quia recusandae pariatur harum perferendis distinctio.', '156.183.10.176', 0, 27, 30, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(46, 'A commodi consequatur eligendi perferendis et quas accusamus et. Fuga voluptatem ad autem amet nemo enim a.', '124.130.38.90', 0, 11, 11, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(47, 'Quis voluptatibus velit illum repellendus ab. Eius repudiandae et fuga reiciendis facilis culpa.', '189.186.205.55', 0, 22, 18, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(48, 'Commodi officiis architecto sed doloremque veniam. Et praesentium animi dignissimos praesentium suscipit labore. Laborum ut similique amet.', '103.209.128.161', 0, 27, 33, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(49, 'Qui qui aut itaque molestiae vel incidunt facere. Perspiciatis accusamus similique perspiciatis eius rerum nemo.', '78.65.75.103', 0, 33, 49, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(50, 'Quos nihil veniam et possimus consequatur illo. Velit ut nostrum enim voluptatum aspernatur.', '177.98.33.75', 0, 43, 9, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(51, 'Assumenda ad assumenda at officia. Cupiditate nihil ullam voluptatem rerum tempore sed.', '131.133.92.108', 1, 18, 12, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(52, 'Sit perferendis est dolores velit sed laboriosam. Natus facilis dolorem enim pariatur delectus nemo.', '41.86.42.65', 1, 48, 22, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(53, 'Beatae perspiciatis repellendus aut quas. Quae consequatur tempora aut beatae repudiandae.', '55.214.176.133', 1, 28, 4, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(54, 'Voluptates pariatur atque eos occaecati qui animi. Velit aut quo corrupti eos.', '33.156.126.254', 1, 47, 34, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(55, 'Rem minima qui sunt neque quis doloribus dignissimos neque. Repellat doloremque rerum molestiae quia quo. Qui a ut voluptatem cupiditate.', '8.171.36.8', 1, 49, 2, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(56, 'Nobis ut exercitationem omnis. Enim molestiae nihil aut.', '232.172.145.23', 1, 20, 47, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(57, 'Aliquid dolores non aspernatur id quis. Qui ut quam quam blanditiis vel est atque.', '57.18.214.164', 0, 6, 44, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(58, 'Omnis qui non architecto quam odio. Animi ducimus ea ea quos aut. Est quaerat voluptatem maiores praesentium quis debitis.', '206.1.161.1', 1, 24, 21, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(59, 'Nobis ullam ipsa itaque qui suscipit. Optio voluptatibus odit esse tenetur impedit.', '20.103.219.158', 1, 22, 19, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(60, 'Deserunt sunt sit possimus ex et. Sunt repudiandae maiores nihil nam laborum. Quia voluptatum voluptates autem at maiores quod.', '220.99.38.187', 0, 29, 4, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(61, 'Facilis iste quia architecto maiores quia quia eligendi sed. Facilis eius labore odio rerum sit consectetur vero.', '108.21.80.178', 0, 1, 14, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(62, 'Odit debitis iste deleniti debitis consequatur enim. Assumenda ipsam est veniam et.', '210.164.244.105', 0, 4, 6, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(63, 'Autem perferendis voluptatibus et. Assumenda nostrum mollitia suscipit fuga.', '167.91.214.27', 1, 10, 30, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(64, 'Temporibus nesciunt possimus dolores maiores quia illum perferendis. Error nesciunt ad eaque reiciendis.', '78.126.139.83', 0, 35, 31, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(65, 'Sapiente non aut quisquam vel. Ipsam autem at omnis aut ad qui doloremque. Accusamus quisquam at dignissimos dolor consectetur.', '37.99.3.150', 1, 38, 27, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(66, 'Ullam exercitationem eos ut expedita nostrum ad. Ullam quia reprehenderit consequatur doloribus. Quod veniam nihil sequi nam.', '253.150.246.234', 1, 32, 16, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(67, 'Impedit ut officiis dolor consequatur cum. Sint autem maiores in similique aut nobis.', '248.171.129.38', 0, 30, 17, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(68, 'Qui repudiandae laudantium sed veniam. Voluptates quis esse possimus dolorem ratione incidunt.', '67.254.95.172', 0, 1, 35, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(69, 'Dolore non rerum provident. Delectus soluta excepturi similique.', '112.209.30.69', 0, 24, 49, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(70, 'Quia aliquam molestiae qui consequuntur dolor voluptas. Delectus possimus dolorum sunt. Incidunt non doloremque qui.', '126.136.40.125', 0, 49, 7, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(71, 'Enim perferendis et ut assumenda et praesentium. Impedit itaque totam quisquam maxime.', '63.34.94.200', 1, 25, 36, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(72, 'Qui porro necessitatibus qui aliquid atque officiis amet. Odio dignissimos impedit perferendis autem culpa.', '110.112.134.111', 1, 35, 37, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(73, 'Necessitatibus magni recusandae exercitationem voluptatem consequatur voluptas magni. Ad maxime odit esse dolores autem veritatis molestiae.', '28.152.224.78', 1, 21, 23, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(74, 'Error non omnis ipsa ea molestiae. Sit eum dolorum ab consequatur molestiae est.', '186.64.146.200', 0, 16, 39, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(75, 'Earum quas qui quia minima adipisci quidem et. Odio velit tempore nostrum facere quia aut. Delectus odit culpa veritatis ut aliquam.', '181.74.166.10', 1, 28, 17, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(76, 'Iure vel vitae ipsa qui. Quasi veritatis vero natus quia totam ad.', '209.106.119.176', 1, 2, 18, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(77, 'Ullam perferendis nihil sed eos non rerum aspernatur esse. Omnis temporibus quia est minus omnis. Repellendus ipsam voluptatibus est officia.', '131.238.244.245', 1, 23, 43, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(78, 'Eos ut a sit dolorum ipsa recusandae. Minima officiis quisquam quo dolor. Corrupti sapiente atque magnam quasi.', '82.143.133.206', 0, 38, 34, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(79, 'Consequatur perspiciatis qui perspiciatis. Officia praesentium in magnam dolores et ut magni cum. Veritatis odit et incidunt totam enim.', '136.21.46.108', 0, 29, 29, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(80, 'Assumenda veniam laborum nemo incidunt animi enim accusamus. Ut non quia est quasi reprehenderit accusamus itaque.', '210.104.110.65', 1, 20, 28, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(81, 'Eum est sint provident. Nesciunt placeat iste nam nemo optio rem sed repellat.', '255.58.26.17', 1, 7, 33, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(82, 'Eum voluptatem eum quia repudiandae eos aut dolores. Quia aspernatur omnis enim nesciunt qui.', '245.121.150.250', 1, 45, 13, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(83, 'Voluptas praesentium perspiciatis porro earum et totam non aut. Temporibus asperiores modi culpa qui vero qui.', '61.149.73.87', 0, 23, 15, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(84, 'Illo est porro autem cumque. Eum reiciendis illum quibusdam reprehenderit dolorum earum aut consequatur.', '166.165.189.47', 0, 1, 32, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(85, 'Eos distinctio non nulla voluptate et cupiditate ut. Qui consequuntur dolorem perferendis nesciunt quis.', '190.254.137.243', 0, 34, 37, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(86, 'Illum tempore alias eos. Molestiae qui natus cum qui. Quas quam officiis aliquam dolorem.', '205.156.180.253', 0, 16, 50, '2025-03-14 00:13:46', '2025-03-14 00:13:46'),
(87, 'Praesentium praesentium est ut expedita. Quae consequatur error ut voluptatem quam.', '211.206.168.19', 1, 18, 19, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(88, 'Perspiciatis et illo repellat est necessitatibus cupiditate. Quisquam ea qui repellendus repellat ipsa eos. Minus est explicabo culpa repellendus fugiat sit facere.', '50.51.173.236', 0, 36, 7, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(89, 'Consequatur omnis inventore nisi numquam soluta quas. Quasi accusantium culpa et quaerat neque quo quo omnis.', '79.93.7.213', 1, 31, 3, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(90, 'Blanditiis ipsam corporis aut perferendis qui amet repellendus omnis. Maiores voluptas iure error quasi maxime fuga. Laudantium enim corrupti facilis et.', '29.211.160.251', 1, 35, 24, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(91, 'Est a explicabo iusto deserunt aut et tenetur. Animi omnis dolores rerum.', '33.51.188.209', 0, 31, 50, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(92, 'Sed ex soluta perspiciatis eius. Ducimus voluptate harum consequatur perferendis aut sequi.', '170.220.138.37', 1, 28, 46, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(93, 'Veniam sint accusantium officiis quis vel vitae. Necessitatibus et ullam ipsa quia officiis dolores.', '62.166.211.39', 1, 29, 3, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(94, 'In voluptatum iusto sit odit sed qui consequatur quam. Aliquam consequatur molestias ut necessitatibus atque vero.', '90.194.117.194', 1, 12, 45, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(95, 'Recusandae rerum et debitis sed et voluptatem pariatur officiis. Quos dolor ducimus et commodi amet consequatur.', '54.109.209.211', 1, 4, 12, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(96, 'Voluptatem earum ipsam facere saepe amet nulla quidem. Doloremque adipisci et est.', '41.26.139.149', 1, 19, 28, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(97, 'Ad enim facilis suscipit molestiae possimus doloremque et ea. Autem impedit dolores ipsa nostrum sit culpa. Impedit excepturi et cumque nam fugit enim accusantium.', '86.65.41.134', 0, 49, 44, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(98, 'Iusto atque officiis repellat quidem. Nostrum qui sunt rerum explicabo et debitis totam voluptate. Et voluptas soluta velit.', '50.93.109.95', 1, 3, 37, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(99, 'Provident eius molestias nemo autem rerum numquam beatae sed. Sit sed magnam similique. Nihil eligendi et nemo dolorem id.', '118.209.75.93', 1, 33, 13, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(100, 'Incidunt iste adipisci nostrum error et omnis. A aliquid amet iusto possimus nihil ullam eligendi.', '65.34.118.78', 1, 4, 12, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(101, 'Corporis ex possimus nulla consequatur at commodi eos. Et corporis error officia quo saepe.', '84.197.16.130', 1, 21, 19, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(102, 'Vero eaque in et quasi. Qui nam qui labore neque.', '149.210.186.192', 0, 14, 28, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(103, 'Alias et repudiandae at optio ipsa porro. Et beatae ducimus quis minus dolores repellat.', '66.17.135.117', 0, 31, 41, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(104, 'Molestiae porro vero veniam et explicabo quibusdam rerum. Adipisci non provident et.', '245.131.55.162', 0, 2, 3, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(105, 'Enim inventore placeat ut expedita. Dolores possimus animi et aspernatur aliquid ut architecto. Facilis et veniam possimus quo.', '252.18.100.122', 1, 13, 23, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(106, 'Dicta vel quia similique voluptates. Sunt veritatis corporis at voluptatum. Omnis veritatis eaque vel aut distinctio.', '73.104.6.72', 0, 50, 41, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(107, 'Corrupti illo tempore porro placeat sed. Illum nesciunt nihil nobis aspernatur.', '37.225.73.208', 1, 27, 26, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(108, 'Recusandae sapiente ullam quia velit. Culpa fuga minima et omnis.', '51.156.60.187', 0, 50, 48, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(109, 'Neque ex consequatur sint distinctio eligendi ut. Aut id voluptatem sunt saepe neque neque expedita.', '108.155.141.175', 0, 29, 6, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(110, 'Recusandae aut qui cum asperiores porro sed. Neque in non consequatur sed. Aut iste quam ipsum voluptatem.', '44.94.133.29', 1, 49, 44, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(111, 'Veritatis reprehenderit omnis in repellat est voluptas aut. Nihil molestiae harum sapiente natus voluptatum dolor quia.', '114.58.95.239', 1, 10, 29, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(112, 'Dignissimos doloremque rerum quam aut magni adipisci veniam in. Laborum recusandae ut provident iure. Vitae perferendis eaque ea qui tempore.', '203.83.198.31', 1, 50, 46, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(113, 'Voluptatem voluptatem reiciendis nihil nisi id. Dolor dignissimos commodi maiores repudiandae et quis.', '255.225.33.74', 0, 9, 9, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(114, 'Ea iste quidem aut amet. Tempora sed dicta ea qui sit et non. Odit qui aut repellendus vel libero.', '218.117.212.89', 0, 12, 33, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(115, 'Iusto pariatur fuga quo eveniet. Voluptates deleniti et id officiis corporis soluta. Itaque commodi ut saepe autem et ducimus.', '129.36.75.236', 0, 8, 15, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(116, 'Saepe possimus nisi beatae rerum earum reprehenderit et. Quas ipsam qui et cumque quidem.', '52.66.23.31', 0, 11, 15, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(117, 'Provident fugit minus vitae ex at nisi animi cum. Perferendis reprehenderit adipisci quasi quo molestias reprehenderit id ea.', '58.133.242.57', 1, 40, 12, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(118, 'Magni nemo in iste officia ad. Ex est at aspernatur sint libero rerum doloribus.', '96.48.118.241', 0, 40, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(119, 'Error quia amet suscipit culpa. Ipsum inventore et qui accusantium. Pariatur voluptas numquam est magnam inventore.', '140.245.178.136', 1, 48, 34, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(120, 'Accusamus minus quos sit dolor qui consequatur. Iusto quis aspernatur quia. Nobis commodi voluptatem facilis animi ab autem et.', '155.194.103.50', 1, 31, 23, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(121, 'Nobis deleniti incidunt voluptatem id vitae. Eligendi ipsa qui aperiam. Architecto sed sunt necessitatibus rem.', '218.51.190.135', 1, 23, 42, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(122, 'Ut est et quisquam quam quod quod vel. Omnis fugit est ea et.', '172.22.247.92', 1, 17, 19, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(123, 'Aspernatur nulla placeat fugiat minus veritatis voluptate. Rerum expedita quod ipsum dolore.', '118.105.207.210', 1, 20, 29, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(124, 'Possimus minus quo pariatur odit sed necessitatibus. Nesciunt aut deserunt tenetur ullam aliquam. Labore quisquam at blanditiis maiores vel.', '247.106.114.211', 0, 37, 10, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(125, 'Sed eum repellendus occaecati quasi praesentium sit. Animi explicabo minima dolore exercitationem velit architecto assumenda eaque. Hic dolorem atque sed eius.', '1.235.162.44', 1, 15, 35, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(126, 'Quos voluptatem sint quaerat et hic est eaque. Repellat ea quia ducimus debitis rem quia et ea.', '251.77.231.203', 1, 9, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(127, 'Occaecati cumque aliquid ut sed rerum nam mollitia omnis. Voluptates explicabo aut aut pariatur natus.', '146.85.232.205', 0, 31, 46, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(128, 'Impedit optio aut velit sit dicta. Cum autem inventore est molestiae sed eos inventore.', '69.120.114.233', 0, 40, 14, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(129, 'Et iusto ut enim. Ut et omnis dolorem.', '159.7.83.171', 0, 22, 6, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(130, 'Sit rem necessitatibus reprehenderit delectus. Sit rerum cumque magni aut odio consequatur. Nesciunt aspernatur accusantium qui rerum ut.', '14.117.160.50', 1, 36, 5, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(131, 'Aliquid veritatis necessitatibus accusantium optio est qui. Et consequatur in natus sint expedita ipsa eos.', '136.30.218.99', 0, 27, 20, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(132, 'Accusantium optio reprehenderit eos sit laboriosam qui. Voluptate tempore eum aut incidunt qui aperiam explicabo esse.', '205.152.162.59', 0, 18, 33, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(133, 'Est eos blanditiis cum sit in. Accusantium ut adipisci provident praesentium facilis enim distinctio. Sunt ipsam excepturi beatae aut quam architecto accusamus.', '62.156.246.100', 1, 4, 2, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(134, 'Reiciendis velit aliquam officiis iusto. Ea iure modi modi ratione. Repellat numquam vero nihil et possimus deserunt officiis.', '245.92.37.96', 0, 16, 13, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(135, 'Quis et voluptas culpa consequatur similique. Ipsa expedita quam ullam necessitatibus. Tempore eaque quis debitis itaque.', '98.230.178.78', 0, 9, 3, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(136, 'Ut quia iusto autem consequatur molestias asperiores perspiciatis dicta. Dolor optio ratione enim voluptate quibusdam repellat.', '138.173.47.210', 0, 40, 5, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(137, 'Iste natus fugiat sequi consequatur impedit earum. Rerum cum totam cupiditate magnam. Molestiae officia dolorum doloremque nemo.', '50.121.73.1', 1, 38, 19, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(138, 'Ea laudantium et ut commodi reprehenderit. Necessitatibus blanditiis aut ea et aut et eaque. Repudiandae voluptates eos odit facilis voluptate numquam consequatur.', '194.107.46.119', 0, 16, 50, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(139, 'Voluptates assumenda reiciendis natus necessitatibus est. Est rerum fugiat cum.', '192.224.137.79', 0, 16, 43, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(140, 'Est non neque animi impedit odit. Quisquam labore autem error qui amet sapiente sed.', '71.201.160.228', 0, 36, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(141, 'Quam nam et autem. Amet quisquam velit hic.', '175.225.119.199', 1, 44, 39, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(142, 'Quos adipisci itaque qui esse. Fugit dolorum odio aut distinctio tempore sed.', '210.78.84.56', 0, 32, 28, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(143, 'Totam molestiae vero commodi. Non quo quo sit provident consectetur et odit.', '13.76.47.6', 0, 43, 10, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(144, 'Dicta ratione a veniam debitis iste. Accusantium eaque necessitatibus ad exercitationem necessitatibus facilis quia. Dicta ut quisquam quidem at labore magnam eum.', '43.52.127.81', 1, 34, 37, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(145, 'Praesentium quia assumenda neque placeat non voluptatibus. Minima occaecati eligendi est aspernatur eaque ea maiores. Similique rerum suscipit dolores ipsam.', '186.159.167.77', 1, 6, 25, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(146, 'Provident enim culpa occaecati est facere eius. Quas at consequuntur est et. Qui sint minima dolore molestiae ad.', '207.217.44.246', 1, 18, 10, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(147, 'Harum eos eligendi optio in vitae eveniet sunt. Et laudantium sequi quod. Ipsum facilis natus voluptatem tenetur assumenda in ea quod.', '156.27.221.141', 1, 38, 20, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(148, 'Nulla qui necessitatibus optio. Harum et optio nesciunt cupiditate omnis eum.', '132.66.153.9', 0, 41, 44, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(149, 'Molestiae molestiae ipsum consequatur explicabo. Corporis vel qui maiores sint dolor placeat.', '33.234.47.221', 0, 4, 49, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(150, 'Voluptatem voluptatum soluta aliquam voluptates reprehenderit quia aut quam. Maxime quis assumenda unde. Sint aut numquam dolores et qui laudantium.', '152.248.231.215', 0, 30, 48, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(151, 'Ipsum earum vero ea asperiores nihil odit doloremque. Consequatur ut modi rerum molestiae.', '253.77.143.159', 0, 28, 21, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(152, 'Vitae accusamus dolorem ea ea rerum. Est est eum voluptate.', '101.3.46.109', 1, 12, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(153, 'At odit nihil autem ea necessitatibus aliquam. Ut expedita unde beatae esse doloribus ut.', '28.71.252.105', 1, 26, 12, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(154, 'Voluptas quia ut quos debitis ut in. Amet voluptatem vel voluptatem.', '120.251.3.61', 0, 46, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(155, 'Illo incidunt sapiente ut repellat. Exercitationem illo et eos error commodi. Minus dolorem aut mollitia et non totam.', '40.112.24.179', 1, 50, 8, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(156, 'Cum quae similique pariatur ut voluptas rem omnis. Veniam cum ut consequuntur inventore non id ipsa. Dolores corrupti atque reprehenderit non.', '165.235.25.166', 0, 29, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(157, 'Facilis quia aut voluptatem et rerum molestias illum. Exercitationem nostrum architecto ratione sit doloribus distinctio.', '103.27.112.143', 1, 8, 36, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(158, 'Assumenda aut veritatis rerum autem. Asperiores dolor maxime quia id minima soluta. Aut sequi non neque voluptates.', '118.23.126.189', 0, 50, 24, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(159, 'Placeat autem aperiam aut exercitationem nobis dolor. Ipsa blanditiis sequi explicabo eligendi atque.', '220.237.112.20', 0, 35, 34, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(160, 'Velit enim qui voluptatem incidunt consectetur minima. Saepe eveniet repudiandae rerum dolorem.', '186.205.239.235', 0, 2, 5, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(161, 'Eius non iste nobis in. Atque quibusdam iste suscipit qui.', '186.238.133.204', 0, 44, 39, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(162, 'Voluptas sed dolore et fugiat non et ab. Ratione consequatur provident debitis a nesciunt voluptatum ea. Maiores quos aut maxime quis voluptas.', '122.101.247.12', 0, 34, 18, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(163, 'A ea debitis deserunt quis fugit. Explicabo voluptatum et vero magni rem quas. Aliquam labore possimus id rerum velit voluptas tempora.', '253.136.154.234', 1, 24, 26, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(164, 'Quod autem rerum consequuntur iure. Est aspernatur ipsum quas sit.', '118.46.14.88', 0, 42, 31, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(165, 'Cum blanditiis repudiandae sit occaecati et accusantium. Consequatur eligendi et omnis omnis.', '132.223.100.37', 1, 8, 29, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(166, 'Eligendi in autem culpa eum qui eaque et est. Rerum rerum quis enim natus sint repudiandae. Ea voluptatum non ab dolor sed.', '216.255.13.250', 0, 3, 1, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(167, 'Quae sed quisquam quo sed sed odio. Non aut tempore laboriosam maiores laboriosam labore.', '143.27.52.85', 1, 12, 14, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(168, 'Laudantium reiciendis ut non dolor sed molestiae veniam. Eum dolor harum adipisci exercitationem sit nesciunt mollitia. Eos ipsum maiores officiis et voluptates reiciendis quis.', '198.133.173.80', 1, 8, 30, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(169, 'Dolores recusandae labore et. Quia a ad aut debitis labore et.', '181.130.207.212', 1, 6, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(170, 'Non et in et reiciendis. Magnam consequuntur qui quasi aut optio labore consequatur.', '93.238.81.45', 1, 18, 35, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(171, 'Mollitia sed possimus ipsum sapiente. Reiciendis quo maiores inventore velit.', '189.99.18.236', 1, 15, 26, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(172, 'Provident reprehenderit sed qui quis. Et sint officiis et qui aut eos. Impedit quia sed velit et quaerat quia expedita rerum.', '27.83.196.177', 1, 22, 28, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(173, 'Non consequatur iusto dolores repudiandae omnis quis consequatur voluptatum. Sapiente voluptatem distinctio iste mollitia voluptatibus mollitia.', '225.40.147.27', 1, 36, 45, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(174, 'Consequatur eius quia et vitae unde qui libero. Expedita quaerat sunt cum magnam quod est quia. Nam aut quo tenetur qui.', '141.8.70.69', 0, 9, 44, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(175, 'Sed illo sed fugit quo. Atque praesentium tempora maiores reiciendis consectetur quos. Consectetur autem dolore itaque odit quos maiores.', '60.67.242.63', 0, 12, 22, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(176, 'Ut harum impedit sunt voluptas minus. Est nisi voluptatem sed rem.', '201.211.119.11', 1, 35, 38, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(177, 'Est corporis omnis numquam doloremque. Molestiae quasi aut reiciendis id enim sit. Facere minus molestiae et.', '47.210.35.152', 0, 47, 7, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(178, 'Et rerum minus fuga rerum laborum officia odit. Eos sit et nesciunt quo unde quos.', '89.44.238.120', 1, 14, 33, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(179, 'Quisquam et est dolores enim. Beatae quam voluptatum adipisci ipsam voluptas nam. Eligendi sit et alias ad omnis labore.', '26.250.245.244', 0, 39, 46, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(180, 'Delectus ea rem iste rerum. Qui ad minima voluptates repellendus fugiat. Ut sit rem dolorem consequatur.', '29.64.72.244', 0, 4, 35, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(181, 'Minima labore culpa culpa aut non. Sed suscipit mollitia dolore voluptas. Velit cupiditate culpa rerum alias explicabo nihil aut.', '92.70.204.13', 0, 40, 25, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(182, 'Similique perferendis odio excepturi ut. Quisquam et quam et voluptatem quaerat nam.', '85.117.114.86', 0, 7, 5, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(183, 'Sit corrupti aut voluptatem tenetur hic. Debitis consequatur ut a quaerat ab. Placeat optio quis adipisci omnis.', '83.88.183.191', 1, 11, 27, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(184, 'Sint itaque omnis facere cupiditate animi ut voluptatem. Et alias corrupti in et.', '142.184.158.243', 1, 14, 43, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(185, 'Nisi eum qui non officiis velit natus nam. Non veniam consequuntur nihil illum magni magni est.', '117.255.36.204', 1, 18, 40, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(186, 'Sit omnis ex repellendus et sunt. Itaque aspernatur blanditiis voluptatem. Aut qui suscipit culpa totam.', '32.165.226.93', 1, 19, 48, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(187, 'Voluptatem aut placeat libero sed. Et iusto eveniet et. Qui asperiores architecto nihil consequuntur temporibus qui.', '69.172.23.227', 1, 7, 39, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(188, 'Velit tempora quidem est quia. Dolor eum aliquid ut neque.', '228.181.128.231', 1, 6, 21, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(189, 'Sunt eveniet nobis neque animi. Beatae eaque est illum asperiores. Amet necessitatibus nobis sint illum vel.', '16.14.104.24', 0, 18, 40, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(190, 'Dolor rerum id labore accusamus similique officia alias. Omnis aut ullam tempora nihil amet quis. Sit a et omnis ut sit veniam.', '51.114.47.171', 1, 19, 44, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(191, 'Ipsam qui est quia enim eos illo voluptatem. Nostrum est omnis ipsum.', '20.155.207.197', 0, 22, 25, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(192, 'Veritatis delectus provident reiciendis reprehenderit recusandae magni impedit. Incidunt illo minima libero dolorem sit molestiae. Nemo autem accusamus voluptatem.', '144.119.235.49', 1, 38, 36, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(193, 'In aspernatur et corporis voluptas. A quia veniam accusamus nobis id omnis. Est dicta quisquam similique quos provident qui corporis.', '109.94.188.113', 1, 37, 25, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(194, 'Quia odio eaque eum illo ut dolorem. Sint magnam provident vitae eos ea.', '158.129.21.74', 0, 10, 40, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(195, 'Ut tempora quidem consectetur necessitatibus. Enim incidunt aut perferendis molestias eum optio voluptatem velit.', '49.209.80.57', 0, 32, 25, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(196, 'Natus ut ut et numquam eius enim expedita. Et laudantium enim eaque sit fugiat. Magnam sunt voluptatum sunt quos qui.', '167.74.142.218', 1, 18, 34, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(197, 'Consequuntur magnam accusamus reprehenderit suscipit. Saepe autem nemo optio autem accusantium.', '148.183.107.197', 0, 30, 50, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(198, 'Sunt odio sint molestias rerum quo praesentium veritatis sed. Expedita et placeat et reprehenderit eum odio. Aut voluptate quos sint accusamus eum officia explicabo.', '247.57.202.63', 0, 14, 31, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(199, 'Distinctio dolores debitis quis eligendi et non. Tempora est ipsum ab molestias quidem sint. Quo ut et ratione distinctio.', '169.166.61.232', 1, 17, 50, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(200, 'Rerum autem nulla consequatur asperiores. Nihil beatae earum quas eius sunt.', '140.248.143.214', 0, 12, 48, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(201, 'll', '127.0.0.1', 1, 31, 1, '2025-03-26 20:04:03', '2025-03-26 20:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `name`, `email`, `title`, `body`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, '573-900-7189', 'Jairo Gislason', 'julia71@kreiger.com', 'Ms.', 'Eaque blanditiis dicta quia aliquid quae. Autem culpa porro id voluptatem rem.', '168.210.35.49', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(2, '+19716160006', 'Clifford Torp', 'london96@hotmail.com', 'Mr.', 'Sint dicta qui voluptatem exercitationem quasi labore. Mollitia omnis inventore porro et qui eius. Omnis fugiat in exercitationem ut architecto officia repellat possimus.', '21.145.135.86', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(3, '(986) 546-7215', 'Prof. Kaley Grant', 'xstroman@gmail.com', 'Prof.', 'Beatae laudantium qui consequuntur. Ex facere consequatur earum temporibus commodi. Quod sit quis asperiores.', '168.150.202.31', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(4, '272.812.4468', 'Emie Parker', 'vesta53@gmail.com', 'Mr.', 'Sed reiciendis aut enim dolor autem. Fuga nihil voluptas velit.', '231.131.190.97', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(5, '+1.469.896.5691', 'Geovanni Dietrich', 'tdach@hotmail.com', 'Prof.', 'Omnis dignissimos voluptas et ut consequatur qui. Eius ea sunt quia qui iste. Est id at fugit commodi libero.', '157.104.254.195', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(6, '+1 (640) 375-6547', 'Cicero Lockman PhD', 'gharber@okuneva.com', 'Prof.', 'Repudiandae rerum et tenetur nulla omnis. Et harum iste iusto. Inventore nesciunt necessitatibus facere autem eos.', '120.135.12.80', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(7, '+13374538365', 'Mr. Nathaniel Brakus', 'fredrick60@yahoo.com', 'Dr.', 'Ratione qui ut consequuntur facere. Id sed adipisci ad omnis. Rem libero enim et et provident.', '206.98.253.52', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(8, '(484) 930-0680', 'Janie Kuvalis II', 'eduardo.oreilly@yahoo.com', 'Mr.', 'Vitae voluptates amet tenetur voluptas ut dicta porro. Modi et voluptatibus magnam distinctio qui sint vel. Quo aut nulla corporis cumque.', '40.179.18.150', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(9, '281-805-0823', 'Ansel Kovacek', 'tremblay.dedrick@yahoo.com', 'Prof.', 'Distinctio et fuga quia doloribus. Eum tenetur enim voluptas porro est voluptas pariatur. Incidunt et sint dolor nobis.', '139.167.52.57', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(10, '1-269-831-4890', 'Abbie Gleichner', 'gstark@hotmail.com', 'Mr.', 'Pariatur eaque et quos voluptates dignissimos. Rerum sed natus soluta nihil aut laboriosam dolor.', '231.196.186.6', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(11, '(475) 775-9144', 'Jason Rice', 'jprohaska@gmail.com', 'Mr.', 'Et at excepturi est omnis consequatur. Eligendi quas et eum nihil.', '76.181.65.25', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(12, '+1.612.740.3674', 'Libby Roberts', 'trantow.gail@hotmail.com', 'Mr.', 'Exercitationem aliquam et qui rerum. Commodi autem maxime fuga recusandae rerum. Porro pariatur non dolor ipsa est aspernatur voluptas aut.', '101.235.74.242', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(13, '(207) 518-8975', 'Shanna Pollich', 'senger.dameon@yahoo.com', 'Prof.', 'Dolorum eaque accusamus porro excepturi quis nulla. Dolore non illo ad labore minus quia vel. Eum doloremque consequuntur quasi provident repudiandae.', '77.138.144.165', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(14, '1-609-259-1509', 'Bridget Frami', 'geraldine12@stracke.org', 'Ms.', 'Amet omnis magni aspernatur provident. Qui mollitia et omnis iusto rerum vel fugiat.', '33.220.149.133', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(15, '+1.425.553.8874', 'Mr. Timothy Predovic', 'hane.ansley@hotmail.com', 'Prof.', 'Ea quia ut dicta placeat et rerum saepe aliquam. Omnis porro laudantium explicabo maxime.', '215.23.76.246', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(16, '678.703.5041', 'Bennett Boehm', 'kyleigh56@kilback.com', 'Dr.', 'Consequatur ex explicabo libero voluptas recusandae sapiente commodi sapiente. Sed tempore nam est fugiat dolores.', '201.185.81.195', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(17, '+12342868017', 'Mr. Regan Purdy', 'collins.hellen@kuhlman.com', 'Mrs.', 'Aut recusandae sit aspernatur nemo assumenda. Aliquam ad dignissimos omnis sed quaerat.', '51.197.6.243', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(18, '303-897-8097', 'Jamil Nolan I', 'rice.jacquelyn@gmail.com', 'Prof.', 'Eos minima rerum ullam qui. Ut ex accusantium dolorem architecto non ut.', '166.234.234.70', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(19, '+1.386.602.4233', 'Queen Schimmel', 'feest.crawford@hotmail.com', 'Dr.', 'Eius nobis iste ipsum optio dolores. Consequuntur ex ex aut praesentium rerum vel. Illo voluptate consequuntur non necessitatibus.', '15.22.169.92', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(20, '650-287-4329', 'Tracy Boehm Sr.', 'brakus.neva@paucek.info', 'Mr.', 'Nostrum sint accusamus ut qui ullam beatae voluptates. Facilis reprehenderit voluptas architecto eligendi est animi expedita. Velit dolorum perspiciatis voluptatibus minima rerum id.', '201.135.15.39', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(21, '802.508.0053', 'Althea Sipes', 'kuvalis.candido@gmail.com', 'Ms.', 'Amet sint quia nam. Nulla neque labore et recusandae cum aut quisquam. Dignissimos veniam sequi amet.', '232.226.148.41', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(22, '276-823-5598', 'Clair Brown', 'berge.fabian@krajcik.info', 'Dr.', 'Illum veritatis quae et quam consequatur reprehenderit. Dicta sed omnis quidem placeat praesentium atque ea.', '24.4.48.49', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(23, '(323) 887-7691', 'Doris Rowe', 'ena.homenick@yahoo.com', 'Mr.', 'Provident animi alias repudiandae. Quis quas dolore exercitationem officia vel a consectetur earum.', '225.74.157.102', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(24, '+18784012261', 'Zelda Hudson', 'lennie08@cassin.com', 'Prof.', 'Modi ad laudantium voluptate minima. Maiores aut qui totam quo. Eveniet perspiciatis enim sint eum vitae enim.', '90.138.200.121', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(25, '+1.262.276.9519', 'Margaret Grady', 'zackery.osinski@collier.com', 'Dr.', 'Et dolorum qui impedit veritatis commodi ipsa dolorum. Iure quasi ut quos occaecati. Esse sed voluptatem quis dolores nesciunt natus autem.', '207.129.63.47', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(26, '669.304.3347', 'Mr. Antone Bailey', 'rodger.hyatt@jast.com', 'Dr.', 'Perferendis sapiente exercitationem qui eaque iste numquam. Minima nam facilis maxime. Voluptas quis accusamus nihil aut.', '79.247.87.128', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(27, '+1.734.251.2724', 'Jaime Howe', 'caroline29@ondricka.com', 'Mr.', 'Qui nemo iure dolores quae molestiae quos. Porro recusandae reiciendis laborum suscipit explicabo.', '153.25.36.236', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(28, '+1 (732) 412-4930', 'Prof. Tressa Shanahan DVM', 'kkoelpin@gmail.com', 'Dr.', 'Dolorem voluptatem quam minima alias itaque tenetur. Harum inventore at quisquam molestiae sit laboriosam. Doloremque nesciunt tenetur qui sunt quia enim dolorum.', '209.47.26.238', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(29, '580-215-0999', 'Ms. Lauriane Dietrich Jr.', 'okeefe.tyreek@gmail.com', 'Prof.', 'Consectetur aut vero veritatis quaerat a deserunt odio voluptatum. Voluptas iste eius illo corrupti. Consequatur assumenda explicabo et et.', '204.204.35.169', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(30, '(331) 497-2068', 'Prof. Alec Fay', 'riley73@moore.info', 'Miss', 'Laboriosam eum exercitationem animi culpa. Sint qui at quae laborum. Deleniti dolores iusto et sed accusamus quasi.', '56.74.50.253', '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(31, '01019063522', 'Mai', 'mai@gmail.com', 'ojuiohi;', 'contact contact', '127.0.0.1', '2025-03-14 00:38:30', '2025-03-14 00:38:30'),
(32, '01019063522', 'Mai', 'mai@gmail.com', 'n bknl', 'oiommmmmmmmmmmmmmm', '127.0.0.1', '2025-03-14 00:47:21', '2025-03-14 00:47:21'),
(33, '01019063522', 'Mai', 'mai@gmail.com', 'kkjlpoi', 'kkkkkkkkkkkkkkkkkkkkkkkkk', '127.0.0.1', '2025-03-14 00:47:39', '2025-03-14 00:47:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_posts`
--

CREATE TABLE `image_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'default.png',
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_posts`
--

INSERT INTO `image_posts` (`id`, `path`, `name`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 'https://placehold.co/450x350', '67d390d615fff.jpg', 1, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(2, 'https://placehold.co/450x350', '67d390d6160fd.jpg', 1, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(3, 'https://placehold.co/450x350', '67d390d618537.jpg', 2, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(4, 'https://placehold.co/450x350', '67d390d6185d3.jpg', 2, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(5, 'https://placehold.co/450x350', '67d390d619f56.jpg', 3, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(6, 'https://placehold.co/450x350', '67d390d619ff2.jpg', 3, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(7, 'https://placehold.co/450x350', '67d390d61bb12.jpg', 4, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(8, 'https://placehold.co/450x350', '67d390d61bbae.jpg', 4, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(9, 'https://placehold.co/450x350', '67d390d61dc8b.jpg', 5, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(10, 'https://placehold.co/450x350', '67d390d61dd28.jpg', 5, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(11, 'https://placehold.co/450x350', '67d390d61f82c.jpg', 6, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(12, 'https://placehold.co/450x350', '67d390d61f8bb.jpg', 6, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(13, 'https://placehold.co/450x350', '67d390d621268.jpg', 7, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(14, 'https://placehold.co/450x350', '67d390d621303.jpg', 7, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(15, 'https://placehold.co/450x350', '67d390d622c90.jpg', 8, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(16, 'https://placehold.co/450x350', '67d390d622d39.jpg', 8, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(17, 'https://placehold.co/450x350', '67d390d624795.jpg', 9, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(18, 'https://placehold.co/450x350', '67d390d624832.jpg', 9, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(19, 'https://placehold.co/450x350', '67d390d6261aa.jpg', 10, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(20, 'https://placehold.co/450x350', '67d390d626248.jpg', 10, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(21, 'https://placehold.co/450x350', '67d390d627c0d.jpg', 11, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(22, 'https://placehold.co/450x350', '67d390d627caa.jpg', 11, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(23, 'https://placehold.co/450x350', '67d390d62964b.jpg', 12, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(24, 'https://placehold.co/450x350', '67d390d6296e6.jpg', 12, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(25, 'https://placehold.co/450x350', '67d390d62b058.jpg', 13, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(26, 'https://placehold.co/450x350', '67d390d62b0f7.jpg', 13, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(27, 'https://placehold.co/450x350', '67d390d62c869.jpg', 14, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(28, 'https://placehold.co/450x350', '67d390d62c9df.jpg', 14, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(29, 'https://placehold.co/450x350', '67d390d62e18c.jpg', 15, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(30, 'https://placehold.co/450x350', '67d390d62e236.jpg', 15, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(31, 'https://placehold.co/450x350', '67d390d631c08.jpg', 16, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(32, 'https://placehold.co/450x350', '67d390d631ca6.jpg', 16, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(33, 'https://placehold.co/450x350', '67d390d63357e.jpg', 17, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(34, 'https://placehold.co/450x350', '67d390d63361a.jpg', 17, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(35, 'https://placehold.co/450x350', '67d390d634d7d.jpg', 18, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(36, 'https://placehold.co/450x350', '67d390d634e19.jpg', 18, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(37, 'https://placehold.co/450x350', '67d390d636605.jpg', 19, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(38, 'https://placehold.co/450x350', '67d390d6366a0.jpg', 19, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(39, 'https://placehold.co/450x350', '67d390d637e0a.jpg', 20, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(40, 'https://placehold.co/450x350', '67d390d637ea7.jpg', 20, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(41, 'https://placehold.co/450x350', '67d390d63963b.jpg', 21, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(42, 'https://placehold.co/450x350', '67d390d6396d7.jpg', 21, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(43, 'https://placehold.co/450x350', '67d390d63ae4d.jpg', 22, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(44, 'https://placehold.co/450x350', '67d390d63aee8.jpg', 22, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(45, 'https://placehold.co/450x350', '67d390d63c654.jpg', 23, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(46, 'https://placehold.co/450x350', '67d390d63c6f0.jpg', 23, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(47, 'https://placehold.co/450x350', '67d390d63de28.jpg', 24, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(48, 'https://placehold.co/450x350', '67d390d63dec4.jpg', 24, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(49, 'https://placehold.co/450x350', '67d390d63f607.jpg', 25, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(50, 'https://placehold.co/450x350', '67d390d63f6a4.jpg', 25, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(51, 'https://placehold.co/450x350', '67d390d640db0.jpg', 26, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(52, 'https://placehold.co/450x350', '67d390d640e4a.jpg', 26, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(53, 'https://placehold.co/450x350', '67d390d6425b8.jpg', 27, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(54, 'https://placehold.co/450x350', '67d390d64265c.jpg', 27, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(55, 'https://placehold.co/450x350', '67d390d643db9.jpg', 28, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(56, 'https://placehold.co/450x350', '67d390d643e54.jpg', 28, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(57, 'https://placehold.co/450x350', '67d390d6455e2.jpg', 29, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(58, 'https://placehold.co/450x350', '67d390d64567e.jpg', 29, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(59, 'https://placehold.co/450x350', '67d390d646f48.jpg', 30, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(60, 'https://placehold.co/450x350', '67d390d646fe4.jpg', 30, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(61, 'https://placehold.co/450x350', '67d390d6486f6.jpg', 31, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(62, 'https://placehold.co/450x350', '67d390d648790.jpg', 31, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(63, 'https://placehold.co/450x350', '67d390d649f9f.jpg', 32, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(64, 'https://placehold.co/450x350', '67d390d64a03b.jpg', 32, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(65, 'https://placehold.co/450x350', '67d390d64b790.jpg', 33, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(66, 'https://placehold.co/450x350', '67d390d64b831.jpg', 33, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(67, 'https://placehold.co/450x350', '67d390d64cf48.jpg', 34, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(68, 'https://placehold.co/450x350', '67d390d64cfe2.jpg', 34, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(69, 'https://placehold.co/450x350', '67d390d64e70e.jpg', 35, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(70, 'https://placehold.co/450x350', '67d390d64e7a9.jpg', 35, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(71, 'https://placehold.co/450x350', '67d390d64fedf.jpg', 36, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(72, 'https://placehold.co/450x350', '67d390d64ff7a.jpg', 36, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(73, 'https://placehold.co/450x350', '67d390d6516a0.jpg', 37, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(74, 'https://placehold.co/450x350', '67d390d65173a.jpg', 37, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(75, 'https://placehold.co/450x350', '67d390d652e9d.jpg', 38, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(76, 'https://placehold.co/450x350', '67d390d652f3c.jpg', 38, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(77, 'https://placehold.co/450x350', '67d390d65467b.jpg', 39, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(78, 'https://placehold.co/450x350', '67d390d654714.jpg', 39, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(79, 'https://placehold.co/450x350', '67d390d655e48.jpg', 40, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(80, 'https://placehold.co/450x350', '67d390d655ee4.jpg', 40, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(81, 'https://placehold.co/450x350', '67d390d6575fb.jpg', 41, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(82, 'https://placehold.co/450x350', '67d390d657697.jpg', 41, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(83, 'https://placehold.co/450x350', '67d390d658e0e.jpg', 42, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(84, 'https://placehold.co/450x350', '67d390d658eac.jpg', 42, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(85, 'https://placehold.co/450x350', '67d390d65a61a.jpg', 43, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(86, 'https://placehold.co/450x350', '67d390d65a6b6.jpg', 43, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(87, 'https://placehold.co/450x350', '67d390d65bddc.jpg', 44, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(88, 'https://placehold.co/450x350', '67d390d65be85.jpg', 44, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(89, 'https://placehold.co/450x350', '67d390d65d5d7.jpg', 45, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(90, 'https://placehold.co/450x350', '67d390d65d672.jpg', 45, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(91, 'https://placehold.co/450x350', '67d390d65ed79.jpg', 46, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(92, 'https://placehold.co/450x350', '67d390d65ee07.jpg', 46, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(93, 'https://placehold.co/450x350', '67d390d660573.jpg', 47, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(94, 'https://placehold.co/450x350', '67d390d660600.jpg', 47, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(95, 'https://placehold.co/450x350', '67d390d661d56.jpg', 48, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(96, 'https://placehold.co/450x350', '67d390d661df4.jpg', 48, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(97, 'https://placehold.co/450x350', '67d390d663547.jpg', 49, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(98, 'https://placehold.co/450x350', '67d390d6635e4.jpg', 49, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(99, 'https://placehold.co/450x350', '67d390d664d0f.jpg', 50, '2025-03-14 00:13:42', '2025-03-14 00:13:42'),
(100, 'https://placehold.co/450x350', '67d390d664dab.jpg', 50, '2025-03-14 00:13:42', '2025-03-14 00:13:42');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_30_233317_create_admins_table', 1),
(5, '2024_12_30_233352_create_categories_table', 1),
(6, '2024_12_30_233353_create_posts_table', 1),
(7, '2024_12_30_233419_create_image_posts_table', 1),
(8, '2024_12_30_233431_create_contacts_table', 1),
(9, '2024_12_30_233449_create_settings_table', 1),
(10, '2024_12_31_002536_create_comments_table', 1),
(11, '2025_02_11_193308_add_column_views_num_to_posts_table', 1),
(12, '2025_02_18_194417_create_related_sites_table', 1),
(13, '2025_02_18_205625_create_news_letters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news_subscribers`
--

CREATE TABLE `news_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `comment_able` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `slug` varchar(255) NOT NULL,
  `views_num` bigint(20) DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `comment_able`, `status`, `slug`, `views_num`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Molestiae animi tempore consequuntur et.', 'Odit eius eos nihil in ut. Nihil incidunt nemo soluta et sint magni omnis nisi. Quis dicta necessitatibus unde possimus dicta rerum ipsa. Sint in ut eum. Itaque vel quasi occaecati voluptatem odit.', 0, 0, 'molestiae-animi-tempore-consequuntur-et', 14, 9, 1, '1971-02-09 05:02:06', '1971-02-09 05:02:06'),
(2, 'Aut id rem voluptas.', 'Quos qui nemo ad rerum. Est maxime ratione nesciunt numquam quam. Magnam vitae dolor consequuntur facere eligendi esse harum. Dolor quas eos ipsa reprehenderit et. Et repellendus sint tempora doloribus debitis nam.', 1, 0, 'aut-id-rem-voluptas', 81, 36, 3, '2011-12-14 23:12:24', '2011-12-14 23:12:24'),
(3, 'Quia sit doloribus praesentium.', 'Aperiam quis placeat tenetur nisi corporis rem. Voluptate facere praesentium explicabo sunt corporis. Omnis nobis voluptatem culpa velit praesentium rerum. Nam ducimus ad non. Sit dolores reiciendis ratione facilis dicta consequatur. Ut assumenda qui perferendis. Cupiditate nam minima nihil.', 1, 0, 'quia-sit-doloribus-praesentium', 86, 50, 3, '1980-01-24 09:01:23', '1980-01-24 09:01:23'),
(4, 'Voluptas sint dolorem.', 'Enim quia aut ipsam aliquid nisi adipisci. Non est quia odit voluptatem et odit sed dolorem. Possimus qui aut repellat sed cumque ut. Modi est assumenda nihil sit. Numquam quisquam ullam reprehenderit sequi.', 0, 0, 'voluptas-sint-dolorem', 94, 31, 4, '2014-06-29 08:06:43', '2014-06-29 08:06:43'),
(5, 'Eligendi provident pariatur deserunt.', 'Voluptas voluptate nulla officia nemo ut et. Quos id sed ad voluptas accusantium voluptate dignissimos. Occaecati omnis ex sunt earum at harum. Voluptate et error ut eum voluptatum alias.', 0, 0, 'eligendi-provident-pariatur-deserunt', 64, 33, 2, '2023-09-02 00:09:22', '2023-09-02 00:09:22'),
(6, 'Quo corrupti perferendis aut.', 'Maiores eius non quos voluptatem iusto architecto. Nihil quo minus doloribus hic non. Ut autem iure perspiciatis. Non beatae occaecati optio ipsa alias quia. Ea et laborum reiciendis sed nulla modi vel deleniti.', 0, 1, 'quo-corrupti-perferendis-aut', 95, 43, 2, '2010-01-15 05:01:49', '2010-01-15 05:01:49'),
(7, 'Porro asperiores doloremque.', 'Asperiores accusamus saepe enim quia. Enim aut sint autem quibusdam rerum sunt. Nisi et aut enim harum possimus magnam quae. Unde magnam et iusto necessitatibus adipisci. Aut laborum enim suscipit soluta laudantium provident officia et. Amet voluptatem sunt ut.', 1, 0, 'porro-asperiores-doloremque', 71, 6, 1, '2011-02-28 04:02:40', '2011-02-28 04:02:40'),
(8, 'Dolorem ea numquam sint.', 'Unde magnam perspiciatis voluptatum molestias qui est est deleniti. Magnam neque ut eligendi. Aut qui praesentium corrupti magnam. Voluptatibus velit voluptate ut assumenda. Nostrum eaque aut voluptatem suscipit reprehenderit molestiae adipisci. Voluptatem assumenda maxime quo. Est est necessitatibus nam omnis veritatis et excepturi et.', 0, 0, 'dolorem-ea-numquam-sint', 69, 38, 2, '1989-08-15 03:08:39', '1989-08-15 03:08:39'),
(9, 'Aut voluptate qui.', 'Pariatur odio eum quisquam est architecto vero. Odio accusantium dolorum error omnis libero. Dolore eaque officiis repellat aut voluptas sint accusantium. Veritatis dignissimos perferendis ut a tempore. Ducimus facilis tenetur omnis voluptates voluptatem quasi sint voluptas. Adipisci et dignissimos molestias molestiae aut et sequi.', 0, 1, 'aut-voluptate-qui', 47, 25, 4, '2002-10-03 05:10:23', '2002-10-03 05:10:23'),
(10, 'Et repellendus accusantium tempore.', 'Aspernatur harum expedita laboriosam nulla pariatur eaque. Laborum ut sit numquam assumenda. Quisquam magnam ut illo quaerat ut sed aperiam. Ea suscipit est perspiciatis architecto dolores. Incidunt id debitis sunt repellat. Eum magni perferendis voluptatum officia.', 0, 0, 'et-repellendus-accusantium-tempore', 22, 30, 1, '1972-12-31 23:01:05', '1972-12-31 23:01:05'),
(11, 'Rerum rerum laborum assumenda.', 'Ullam odio alias neque sint illum unde. Repellat quos consectetur ipsum asperiores porro enim. Quia ea non sunt beatae similique expedita nesciunt. Quas fugiat eos quam officia veniam.', 1, 0, 'rerum-rerum-laborum-assumenda', 4, 37, 1, '1982-12-17 23:12:13', '1982-12-17 23:12:13'),
(12, 'Dolore qui et.', 'Omnis sit sit qui vel voluptatibus modi sequi. Commodi odit et deleniti qui excepturi. Dolorum adipisci cum omnis excepturi voluptatem. Occaecati laborum nobis vel sint et iure fugiat commodi. Atque rem aliquam quod. Sunt nisi est ut aut dolorem qui minima. Accusamus eum sed iste enim deleniti repellat nemo.', 0, 1, 'dolore-qui-et', 84, 45, 3, '2012-05-03 00:05:17', '2012-05-03 00:05:17'),
(13, 'Voluptas distinctio.', 'Tenetur id reprehenderit sapiente. Non doloremque tempora voluptas quia sit dolorum illo. Quia et sunt id ipsum aspernatur deleniti. Nisi laboriosam eum quibusdam dolore.', 1, 1, 'voluptas-distinctio', 24, 31, 3, '1992-07-30 23:07:56', '1992-07-30 23:07:56'),
(14, 'Tempore dolores voluptatibus.', 'Nemo rerum qui voluptatem quas ad ipsa. Eos non quis itaque natus et. Dolorem recusandae sit quisquam mollitia culpa animi. Perferendis aut sed nobis ratione officia. Sapiente laudantium iste necessitatibus similique et. Asperiores voluptates et ea. Velit accusantium aut ad fugit et.', 0, 0, 'tempore-dolores-voluptatibus', 16, 36, 4, '2012-03-19 04:03:20', '2012-03-19 04:03:20'),
(15, 'Rerum possimus.', 'Cumque et qui omnis nisi a. Quaerat veritatis aut repellat id inventore porro corrupti. Quae aliquid voluptatem voluptatem. Distinctio quia quo in nulla nobis culpa. Dolor quibusdam facilis et impedit. Eum iure voluptas blanditiis tenetur.', 1, 0, 'rerum-possimus', 4, 34, 2, '2002-11-03 02:11:31', '2002-11-03 02:11:31'),
(16, 'Est dolorem perspiciatis.', 'Qui sint debitis vel. Assumenda minus suscipit magni ut laudantium consequuntur at. Natus sed maiores qui soluta rerum qui. Laborum odit aut consequatur quas non.', 1, 0, 'est-dolorem-perspiciatis', 86, 36, 1, '1984-06-14 02:06:14', '1984-06-14 02:06:14'),
(17, 'Quaerat vel est.', 'Illo molestiae officiis laudantium sit ratione ipsum numquam. Voluptas qui omnis aut quia aut quos quia. Adipisci ad natus corporis esse ipsum. Debitis dignissimos distinctio porro at odio dolorum consectetur sed. Accusantium quas omnis vel odio facilis. Deleniti maiores aut non at autem ipsum incidunt id. Vero accusamus voluptatum nemo harum.', 1, 1, 'quaerat-vel-est', 84, 4, 3, '1980-11-23 03:11:17', '1980-11-23 03:11:17'),
(18, 'Vero at totam.', 'Officiis voluptatibus accusamus a asperiores perferendis voluptatem mollitia nisi. Neque illo nam quas vel magni voluptas natus. Quia laudantium maxime dolor repellat cumque. Nostrum esse harum odio sit dignissimos. Ut illo unde et voluptatem. Distinctio quisquam saepe rerum alias quia omnis. Libero minus sit non ipsam ea.', 0, 0, 'vero-at-totam', 72, 49, 2, '1979-11-21 07:11:15', '1979-11-21 07:11:15'),
(19, 'Id et sed velit.', 'Impedit minus dolore optio. Perspiciatis iusto cumque unde alias. Reiciendis et quasi dicta at pariatur dolores voluptatem. Reprehenderit sunt repudiandae non ab ut qui. Aut non enim rerum ut accusantium. Totam ex velit voluptate est eum.', 1, 1, 'id-et-sed-velit', 29, 37, 4, '2015-08-04 09:08:35', '2015-08-04 09:08:35'),
(20, 'Nihil dolor iusto.', 'Ratione non corporis et voluptas reiciendis. Quam commodi nulla recusandae provident quasi autem. Ut reprehenderit voluptatem sequi. Sunt rerum quidem voluptatum enim quidem aut. Deleniti tempora fugit quibusdam est repellat.', 1, 1, 'nihil-dolor-iusto', 21, 36, 1, '2023-05-29 00:05:11', '2023-05-29 00:05:11'),
(21, 'Animi id voluptatem aliquam.', 'Sed nostrum esse quibusdam aut. Ipsa saepe unde similique maiores ullam. Sit hic qui quod blanditiis aut vitae. Iure nihil molestias aspernatur iusto distinctio incidunt expedita. Rerum magni corrupti aperiam sunt. Aliquid minima provident natus quaerat aliquid earum. Dolorem voluptas perspiciatis mollitia repudiandae at omnis.', 1, 0, 'animi-id-voluptatem-aliquam', 28, 10, 2, '2000-10-25 01:10:27', '2000-10-25 01:10:27'),
(22, 'Assumenda ut id.', 'Velit reprehenderit recusandae adipisci voluptates alias omnis. Et ad tempora et fugit repellat consequatur vel dolorem. Minima voluptatibus et ut facilis repellat recusandae vitae quod. Quia eos nobis quia qui voluptatem. Iusto veritatis impedit mollitia rerum ea aperiam rerum similique. Suscipit est quasi voluptas.', 1, 0, 'assumenda-ut-id', 73, 45, 3, '2009-01-01 23:01:48', '2009-01-01 23:01:48'),
(23, 'Ab nam odit.', 'Voluptas fuga tenetur deleniti in explicabo dolorem. Corrupti et similique dolorem aut dolorem. Cum quae repellendus alias. Neque quisquam ut fugiat pariatur libero ullam impedit.', 1, 1, 'ab-nam-odit', 42, 10, 3, '1978-03-01 08:03:53', '1978-03-01 08:03:53'),
(24, 'Quas accusantium officiis nihil.', 'Dolorum ut corrupti omnis. Nulla minus repellat eligendi eum consequatur. Nesciunt natus tempora voluptate officia culpa fugit. Repellendus et id sit aut voluptatem ut. Voluptas nobis porro maxime et quia reiciendis et. Blanditiis expedita autem aspernatur voluptatem.', 1, 1, 'quas-accusantium-officiis-nihil', 43, 48, 3, '1982-12-23 05:12:54', '1982-12-23 05:12:54'),
(25, 'Dolores in laborum cum.', 'Sunt quia harum soluta similique accusamus. Consequatur et quod accusamus harum rerum ab libero. Voluptas occaecati quae quis vel. Autem molestiae doloremque aperiam qui ipsum. Nostrum assumenda ducimus aut ab sunt.', 0, 1, 'dolores-in-laborum-cum', 66, 13, 1, '2012-11-29 02:11:34', '2012-11-29 02:11:34'),
(26, 'Architecto ea dolorem.', 'Libero consequatur saepe nihil unde optio rerum. Voluptatem voluptas tenetur nostrum quos. Enim ut expedita deserunt vel. Consequuntur odit earum harum quis.', 0, 0, 'architecto-ea-dolorem', 49, 20, 3, '1975-12-13 01:12:22', '1975-12-13 01:12:22'),
(27, 'Sint omnis ipsum.', 'Vel molestiae odio consectetur. Deleniti cupiditate laboriosam nihil voluptas iusto quia impedit. Et quia voluptates quibusdam occaecati. Tempora adipisci laudantium repellendus aut. Excepturi reprehenderit excepturi veritatis blanditiis et aut.', 1, 1, 'sint-omnis-ipsum', 47, 19, 3, '1980-06-25 04:06:27', '1980-06-25 04:06:27'),
(28, 'Sapiente reprehenderit molestiae.', 'Voluptatem consequuntur facilis et voluptatem atque. Est dolorem ut maxime ducimus quidem sed. Molestiae voluptas veritatis fugit quaerat. Maxime magnam quam consequatur nesciunt ut velit.', 0, 0, 'sapiente-reprehenderit-molestiae', 39, 14, 3, '2018-08-05 00:08:54', '2018-08-05 00:08:54'),
(29, 'Nam aliquam est velit tempora.', 'Molestiae consequuntur et voluptatem ab quas. Aut dolores doloribus incidunt nemo qui at. Fuga inventore officia dolorem dolor. Quibusdam deserunt modi velit sit temporibus eius dolorum. Ipsum odit accusantium voluptas veniam provident dignissimos eos.', 1, 0, 'nam-aliquam-est-velit-tempora', 67, 5, 4, '2006-03-16 00:03:31', '2006-03-16 00:03:31'),
(30, 'Odio voluptas exercitationem repellat.', 'Voluptate facere quas dolorem. Vero praesentium voluptas sed rerum expedita itaque. Rerum et fugit repellendus ut aperiam id. Aut facere ut ipsum quod nihil. Vero est odit libero ea id. Voluptatibus nihil aut minima sapiente ratione fugit. Omnis et temporibus sed.', 1, 1, 'odio-voluptas-exercitationem-repellat', 2, 20, 1, '1973-06-03 05:06:20', '1973-06-03 05:06:20'),
(31, 'Dolorem doloribus aut.', 'Possimus eligendi excepturi vel explicabo vel quaerat est. Corrupti optio et perferendis occaecati. Vel cupiditate accusamus saepe placeat quo doloremque enim labore. Corporis esse qui similique. Recusandae vel minus maiores enim ullam similique. Molestias aspernatur ut aliquam.', 1, 1, 'dolorem-doloribus-aut', 5, 40, 2, '1990-12-09 01:12:01', '1990-12-09 01:12:01'),
(32, 'Magnam possimus explicabo.', 'Commodi ut laboriosam mollitia eveniet fugit error est magnam. Doloribus aspernatur qui molestiae rem est dolore a quos. Corrupti non enim omnis qui iste libero. Et aut quas alias doloribus voluptatem mollitia cumque quis. Debitis nihil dolores ad ut non consectetur. Similique facilis eligendi aut non accusantium itaque et.', 0, 1, 'magnam-possimus-explicabo', 88, 22, 1, '2023-11-11 23:11:12', '2023-11-11 23:11:12'),
(33, 'Cumque doloremque qui.', 'Ipsa explicabo magnam rerum veniam autem aspernatur modi. Exercitationem accusamus dignissimos culpa quaerat illum dignissimos. Dicta omnis suscipit quidem. Consequatur nesciunt voluptate libero et quod quia eos. Et aut commodi voluptatem accusantium. Optio quo aut consequatur neque necessitatibus est.', 0, 0, 'cumque-doloremque-qui', 38, 46, 1, '1978-06-11 04:06:21', '1978-06-11 04:06:21'),
(34, 'Debitis voluptas atque similique.', 'Nemo velit consequatur soluta non ut dolores. Explicabo totam omnis asperiores dolorem. Beatae officia qui laboriosam dicta cupiditate magni est. Quae at officia omnis rerum perspiciatis alias. A earum voluptas vero tenetur mollitia ea vitae. Blanditiis autem nisi modi et. Aut nesciunt suscipit quia ut aspernatur.', 1, 0, 'debitis-voluptas-atque-similique', 52, 42, 4, '1996-08-20 00:08:22', '1996-08-20 00:08:22'),
(35, 'Aperiam reprehenderit accusamus.', 'Ad expedita reprehenderit tempora error. Aut quisquam optio et est et quia ut beatae. Voluptas debitis id et quasi voluptatem perferendis autem. Explicabo voluptatem consequuntur dolor voluptates minus et non. Quod non voluptatem consectetur dolor. Consequuntur deserunt ut voluptatem consequatur earum.', 0, 1, 'aperiam-reprehenderit-accusamus', 20, 13, 4, '1989-10-22 02:10:16', '1989-10-22 02:10:16'),
(36, 'Deserunt veritatis quia.', 'Officiis delectus sint cumque eum vitae necessitatibus facilis. Ut et repellendus velit dolor exercitationem. Qui quo sunt dicta cumque est. Quam ex sit minus fugit consequuntur et et qui. Tempora iste quia a voluptatem accusantium. Quam sed sit in voluptatem voluptas ullam accusantium. Doloremque rerum sapiente sint ex doloremque sit et.', 1, 1, 'deserunt-veritatis-quia', 2, 48, 3, '2011-01-26 05:01:10', '2011-01-26 05:01:10'),
(37, 'Voluptatem dolore numquam deleniti suscipit.', 'Ad eos numquam velit aliquam culpa. Alias aut nemo hic vel. Temporibus porro occaecati consequatur fugiat totam quis. Rerum eaque beatae aut qui eum aspernatur ab minus. Et et autem et facilis. Ipsam velit quod consequatur in.', 0, 1, 'voluptatem-dolore-numquam-deleniti-suscipit', 82, 18, 4, '1972-01-15 03:01:08', '1972-01-15 03:01:08'),
(38, 'Reprehenderit ut magni est architecto.', 'Explicabo sit omnis maiores deleniti a. Aut repellat modi omnis est. Est unde ut asperiores cum mollitia explicabo reiciendis. Sapiente molestiae iure iure dolorem. Nulla enim qui eum libero qui quas. Illum dolor debitis id deleniti aliquid inventore. Inventore vitae molestias corporis architecto modi.', 0, 1, 'reprehenderit-ut-magni-est-architecto', 64, 15, 1, '1974-03-19 04:03:21', '1974-03-19 04:03:21'),
(39, 'Recusandae ad.', 'Asperiores qui nisi qui quae non. Suscipit eveniet esse numquam provident. Natus corporis necessitatibus ipsum consequatur totam facilis voluptatem. Et amet deleniti earum magni.', 1, 1, 'recusandae-ad', 0, 1, 3, '1983-03-12 10:03:55', '1983-03-12 10:03:55'),
(40, 'Sed tenetur.', 'Laudantium rerum nulla corporis quasi maiores neque velit. Accusantium ea accusantium deleniti voluptatem dignissimos. Vitae et enim laboriosam iste. Iste alias asperiores ratione rerum. Perferendis veniam aut mollitia. Libero ipsam pariatur quis ducimus.', 0, 0, 'sed-tenetur', 48, 11, 2, '1973-08-22 05:08:43', '1973-08-22 05:08:43'),
(41, 'Sit earum ea doloribus qui.', 'Veritatis et qui omnis id. Necessitatibus ipsam laudantium aut autem. Velit vel recusandae sit. Ipsum vero voluptas ab id voluptate hic velit. Aperiam veritatis suscipit minima eligendi magni.', 0, 0, 'sit-earum-ea-doloribus-qui', 19, 47, 1, '1992-12-26 02:12:02', '1992-12-26 02:12:02'),
(42, 'Ratione quo est.', 'Temporibus et sed ut est et occaecati et laboriosam. Debitis omnis occaecati eius fugit et. Quisquam et enim architecto autem ea. Eaque doloremque sit ea autem fugiat quia velit. Eum maiores id consequatur est dicta ab. Sequi dignissimos explicabo voluptatum aperiam.', 0, 0, 'ratione-quo-est', 50, 29, 2, '2010-09-25 10:09:44', '2010-09-25 10:09:44'),
(43, 'Eius ipsa nihil.', 'Nesciunt accusantium voluptatum repellat. Consequatur eos aut doloremque possimus nihil. Voluptas voluptatum aut ea est. Accusantium facilis commodi sequi beatae inventore fuga non nihil. Nisi assumenda nostrum optio ut nam.', 1, 1, 'eius-ipsa-nihil', 51, 30, 1, '2023-04-05 05:04:33', '2023-04-05 05:04:33'),
(44, 'Animi nostrum veniam aut.', 'Deleniti ipsam tempora voluptate dolores modi quas. Nulla velit corrupti cumque officia consectetur. Eius corporis sunt amet sed sint et voluptatem. Dolores est id repellendus asperiores enim praesentium error et. Rerum et ut ea dolores ea maxime. Ipsam placeat enim id maxime minus qui saepe mollitia.', 0, 0, 'animi-nostrum-veniam-aut', 41, 25, 3, '1988-12-03 06:12:35', '1988-12-03 06:12:35'),
(45, 'Enim possimus.', 'Necessitatibus culpa eum fugit dicta quas. Voluptas impedit animi velit explicabo. Modi sint non qui maiores vel. Dolorum alias maiores suscipit autem tenetur et at a. Delectus omnis dolores accusamus et qui laboriosam voluptatibus ut. In adipisci pariatur consequatur temporibus quas voluptate.', 0, 0, 'enim-possimus', 95, 7, 3, '1979-04-28 06:04:28', '1979-04-28 06:04:28'),
(46, 'Dolor eos qui.', 'Provident cupiditate animi voluptatem ut maxime totam assumenda. Assumenda quia est quis quis voluptas aliquid. Ipsum iusto quibusdam aperiam ratione ut corrupti soluta eaque. Ad sunt a repudiandae natus fugit distinctio. Nihil maxime distinctio corporis aspernatur.', 1, 1, 'dolor-eos-qui', 37, 8, 1, '2020-10-29 04:10:38', '2020-10-29 04:10:38'),
(47, 'Quo eveniet.', 'Voluptas eligendi itaque qui pariatur atque suscipit dolorum et. Harum omnis ipsam ratione aut vel sit. Sunt et numquam beatae. Nobis ut illo rem autem officiis itaque. Ullam earum laborum voluptate nesciunt dolorum. Enim saepe aut in et autem necessitatibus sed.', 0, 1, 'quo-eveniet', 83, 25, 2, '1993-05-01 09:05:57', '1993-05-01 09:05:57'),
(48, 'Facilis temporibus blanditiis qui.', 'In officia laudantium aliquid qui. Ut accusantium beatae quisquam sed consectetur. Sit quisquam dolores laborum ipsum molestiae. Occaecati doloremque officia dolorum nemo fuga quis sit nihil. Accusamus laudantium voluptatum hic impedit. Voluptatem quibusdam ipsam ut dicta accusantium illum reprehenderit.', 0, 1, 'facilis-temporibus-blanditiis-qui', 10, 17, 4, '1998-04-10 02:04:03', '1998-04-10 02:04:03'),
(49, 'Numquam non vel.', 'Quibusdam odio autem magni qui laudantium incidunt nihil. Ipsam eveniet dolores nesciunt. Sed natus explicabo temporibus. Laudantium expedita consequatur natus ratione repellat. Animi commodi est ducimus. Qui sint ipsam hic voluptatibus quasi.', 1, 1, 'numquam-non-vel', 63, 32, 4, '1970-10-25 10:10:11', '1970-10-25 10:10:11'),
(50, 'Aliquam qui aspernatur corrupti.', 'Et eos et aliquid rerum esse assumenda qui. Ratione voluptatem id deleniti voluptas nihil. Sit et sunt quis iste a voluptates. Accusantium illo dolore ea necessitatibus et ut. Minima qui quia delectus autem dolor eaque libero.', 0, 1, 'aliquam-qui-aspernatur-corrupti', 16, 3, 4, '1984-10-01 08:10:20', '1984-10-01 08:10:20');

-- --------------------------------------------------------

--
-- Table structure for table `related_sites`
--

CREATE TABLE `related_sites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_sites`
--

INSERT INTO `related_sites` (`id`, `name`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vero accusamus.', 'http://stroman.info/', 1, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(2, 'Facilis tempore.', 'https://torphy.com/ut-aspernatur-eveniet-ab-nihil-sunt-sed-est-similique.html', 1, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(3, 'Aspernatur ut.', 'http://www.bailey.org/optio-quia-amet-itaque', 1, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(4, 'Tempore.', 'https://kshlerin.com/voluptate-rerum-sit-molestiae-quis-necessitatibus-dolore-enim-non.html', 1, '2025-03-14 00:13:47', '2025-03-14 00:13:47'),
(5, 'Ipsa quas.', 'http://jerde.info/quo-adipisci-ipsa-consequuntur-cumque-et-sapiente-voluptas.html', 1, '2025-03-14 00:13:47', '2025-03-14 00:13:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ruLxqL9WKfzFrLDNPix9K7gqO9h4QEt7dbmVOUPw', 57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUXJ4c0F0REw5aVNENVF3N21ZeWg0bHZKbEttM2RPT3NrSk5QbHd4WSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2hvbWUiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTc7fQ==', 1745892510);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `email`, `phone`, `favicon`, `logo`, `facebook`, `twitter`, `youtube`, `city`, `country`, `street`, `created_at`, `updated_at`) VALUES
(1, 'News', 'mai@gmail.com', '01019063522', 'logo.jpg', 'logo.jpg', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.youtube.com', 'Egypt', 'Cairo', '123 News Street', '2025-03-14 00:13:36', '2025-03-14 00:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.png',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `street` varchar(255) NOT NULL DEFAULT 'default',
  `city` varchar(255) NOT NULL DEFAULT 'default',
  `country` varchar(255) NOT NULL DEFAULT 'default',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `phone`, `email_verified_at`, `password`, `image`, `status`, `street`, `city`, `country`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Shannon Leannon', 'gulgowski.jermain', 'akeem.osinski@example.com', '+16294034027', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '894 Reilly Stravenue Suite 272', 'South Ayla', 'Andorra', 'GI75UuLFJb', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(2, 'Xander Gleason', 'maiya05', 'nakia27@example.net', '1-251-802-0603', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '3580 Marielle Isle Apt. 533', 'West Jeromyview', 'Poland', 'u9AiNSAq2B', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(3, 'Mrs. Samanta Grimes', 'swaniawski.zita', 'brielle27@example.org', '+1 (650) 265-8353', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '61088 Skiles Divide Apt. 973', 'South Ciara', 'Ghana', '8XWnuPs9QL', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(4, 'Luna Pagac', 'ethan.howe', 'beau.predovic@example.com', '854-889-2271', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '5778 Nigel Islands', 'Lake Lavadaview', 'Bahamas', 'ZejbKnQBpG', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(5, 'Dr. Seamus Moore Jr.', 'joana.stroman', 'geovany.cruickshank@example.com', '(608) 604-0428', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '71829 Nolan Plains Apt. 594', 'Kaydenton', 'Saint Lucia', 'tn9VAQZ4UK', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(6, 'Zachary Crist', 'wilfred.miller', 'danyka71@example.net', '725-900-0278', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '547 Kaia Turnpike', 'West Tadshire', 'Madagascar', 'JnE3q6cc55', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(7, 'Jovan Bartell IV', 'anicolas', 'larkin.reuben@example.net', '+1-380-323-6180', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '570 Stanton Divide', 'South Valliemouth', 'Korea', 'fAkDeK1Xbg', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(8, 'Nicola Armstrong', 'gheathcote', 'kim11@example.net', '+1 (786) 727-4495', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '10407 Myrna Coves', 'East Caleigh', 'Comoros', 'fGjvupvicx', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(9, 'Janick Carroll', 'delores.dooley', 'vritchie@example.com', '+1.458.306.8566', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '7044 Prohaska Shores', 'South Mauricioport', 'Martinique', 'P0qExQ3xQd', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(10, 'Skyla Reichel', 'kziemann', 'ova90@example.com', '+17402704043', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '9995 Rebecca Rapids Apt. 312', 'Lake Fredy', 'Burundi', 'SF6wov1jMS', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(11, 'Kara Hammes', 'bfranecki', 'kreynolds@example.com', '+1-445-469-7079', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '4394 Ole Expressway', 'East Isidroland', 'Hong Kong', 'qwd9nKA4JY', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(12, 'Kimberly Gulgowski', 'istanton', 'collins.baby@example.org', '928-489-0843', '2025-03-14 00:13:40', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '31280 Pollich Cove Suite 538', 'Adamsmouth', 'Serbia', 'wbw6pXzr0a', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(13, 'Miss Hailie Leuschke DDS', 'oconner.robin', 'jermey16@example.net', '(234) 276-3495', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '2435 Bins Fork Suite 484', 'Schultzstad', 'Serbia', 'XZqlBmJNlJ', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(14, 'Geraldine Leannon', 'zieme.jazmyne', 'marquardt.alana@example.org', '252-656-0374', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '6762 Bradtke Views Suite 679', 'Wendyfort', 'Saint Lucia', 'pssrIBPbLM', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(15, 'Garrick Marquardt', 'tgrant', 'hintz.aurelie@example.com', '(682) 248-3187', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '1754 Wisozk River', 'Lake Amelia', 'Cape Verde', 'AyFh7rKOor', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(16, 'Ms. Precious Schmeler', 'gutkowski.daisha', 'elyse95@example.org', '+1.949.301.2928', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '7658 Schamberger Lodge', 'Treverbury', 'Mozambique', 'XyobBC8LY8', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(17, 'Miss Rosie Bayer', 'xwalsh', 'qkirlin@example.net', '256-409-0120', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '665 Mueller Estate', 'Caliburgh', 'Heard Island and McDonald Islands', 'QFPzXWzp1F', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(18, 'Royce Weissnat', 'matt.walker', 'yost.stone@example.net', '+15805719188', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '747 Hermann River Apt. 331', 'New Alveraburgh', 'Cote d\'Ivoire', 'OMup3ZTfXF', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(19, 'Danika Waters', 'lee11', 'pkerluke@example.org', '+1.269.995.8120', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '58528 Nolan Trace', 'Noemyshire', 'Bouvet Island (Bouvetoya)', 'GWngjNrutx', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(20, 'Miss Kiana Ullrich MD', 'syundt', 'kilback.jamison@example.com', '+1-747-970-8429', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '80849 Fay Garden', 'South Lorenz', 'Western Sahara', '6PXF1esayA', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(21, 'Deborah Mueller', 'schaden.dolores', 'kweimann@example.net', '409.764.3018', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '5941 Adeline Unions Suite 708', 'South Benjamin', 'Germany', 'kGCDacXWyd', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(22, 'Prof. Josianne Schowalter', 'dustin.okeefe', 'mharvey@example.com', '+1 (214) 555-8202', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '6460 Labadie Forest Suite 838', 'Elainaland', 'Thailand', 'yhvimLtFf9', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(23, 'Asia Hill II', 'tracy.bogan', 'keffertz@example.net', '1-775-943-2690', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '585 Doyle Glen Apt. 728', 'Peteborough', 'Chad', '5vCTo1YaB5', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(24, 'Jamie Braun', 'favian17', 'adrianna46@example.org', '585-930-6459', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '61999 Runolfsson Village', 'Lake Elissa', 'Reunion', 'u06AlT9siB', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(25, 'Ms. Madonna Hoppe DDS', 'carolyn.williamson', 'wendell.toy@example.org', '+12527132064', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '8000 Darion Fork', 'Mayertburgh', 'Bosnia and Herzegovina', 'DGzQqrFFkj', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(26, 'Danielle Murphy II', 'johns.garret', 'alize58@example.com', '(502) 785-7211', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '53689 Thea Corner', 'Haagmouth', 'Ghana', 'mQwwxl20eE', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(27, 'Ebba Wilkinson', 'fadel.providenci', 'douglas.karlee@example.org', '+1-575-808-6177', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '33408 Toby Lane', 'Port Holly', 'Anguilla', 'TXMUXzjHgk', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(28, 'Dr. Lucius Leuschke Jr.', 'twilliamson', 'mbernier@example.com', '1-727-562-2577', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '8837 Lilian Drive Suite 028', 'East Emilio', 'Kenya', 'LIbRaxDi22', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(29, 'Tabitha Sawayn', 'sipes.audra', 'bins.jessy@example.com', '347-434-3260', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '97334 Pearlie Dam', 'Schroedermouth', 'Bahrain', '1Tgf0SPwXc', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(30, 'Dr. Arnaldo Lueilwitz', 'karley.torphy', 'isipes@example.com', '551-267-4674', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '769 Carolina Throughway Apt. 699', 'East Cleochester', 'Slovakia (Slovak Republic)', 'NP4yhfljXq', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(31, 'Prof. Cicero Harvey', 'rubie91', 'stroman.ara@example.net', '+1-574-256-6537', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '991 Brooklyn Canyon Apt. 800', 'Anselchester', 'Greece', 'pMY0AIJmTY', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(32, 'Britney Brakus', 'alivia18', 'alexanne.grimes@example.com', '+1-810-487-1675', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '48635 Eugenia Trace Suite 916', 'Lake Willy', 'Myanmar', 'vrggmz4Lb8', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(33, 'Buford Christiansen', 'betty.lind', 'nat18@example.net', '1-203-828-6263', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '7744 Forrest Mountain', 'East Granville', 'Myanmar', 'QGZAYKsSjC', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(34, 'Moses Pouros', 'herminia.hyatt', 'odessa58@example.com', '1-321-977-9987', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '90230 Boyle Course Suite 854', 'South Edd', 'Sao Tome and Principe', 'ExyvUh68hO', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(35, 'Dr. Boris Kirlin', 'clotilde94', 'libbie.marvin@example.com', '+14842134510', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '5754 Hane Views Suite 239', 'New Lazarohaven', 'United Kingdom', 'zrIIVnoySM', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(36, 'Lilla Feest', 'melvina.simonis', 'grussel@example.net', '+1 (848) 733-2268', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '8379 Romaguera Green Suite 143', 'Tessieton', 'Bhutan', 'our856GzUi', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(37, 'Elvera Dooley', 'jade.rogahn', 'cecil90@example.com', '+1 (480) 981-2485', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '2595 Demarco Pass', 'Port Lempi', 'Saudi Arabia', '59nFfkmtD3', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(38, 'Gilberto Sanford', 'jose.schmeler', 'rosa32@example.net', '(480) 536-3189', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '4398 Marcelina Green', 'Port Aida', 'Ukraine', 'X5pcJNFVQg', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(39, 'Prof. Kacie Gusikowski', 'fromaguera', 'clementina19@example.com', '986.473.7037', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '81325 Medhurst Mountains Suite 053', 'Lucasshire', 'Cyprus', 'BNyHOOdm86', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(40, 'Jolie Heaney II', 'dmurray', 'mallie.okuneva@example.net', '+1-223-524-8794', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '94129 Ayla Wells Apt. 968', 'New Tabithaton', 'Cote d\'Ivoire', 'W0QuAEdf5u', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(41, 'Prof. Daisy Hilpert', 'irippin', 'rosella.becker@example.net', '615.686.8752', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '73094 Tess Inlet Suite 638', 'Ulisesside', 'Netherlands Antilles', 'Lofkz00xWm', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(42, 'Gaylord Larkin', 'rstiedemann', 'brayan.auer@example.net', '+1.667.519.8439', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '20752 Theresia Ramp Suite 460', 'West Adele', 'Iraq', 'mjkhmrqvXo', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(43, 'Geovany Donnelly', 'dooley.andre', 'chanelle46@example.net', '1-430-730-0563', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '37576 Feeney Route', 'West Julienmouth', 'Northern Mariana Islands', 'dfVsFlSGzC', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(44, 'Aleen Lakin DDS', 'pacocha.bernhard', 'hilario52@example.org', '+1.571.281.9575', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '831 Ernie Trafficway Apt. 321', 'Hellerside', 'Bermuda', 'zsGpEhUtBV', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(45, 'Dr. Montana Kautzer DVM', 'thompson.shanny', 'rosamond47@example.net', '210.678.7887', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '374 Lelia Mill', 'West Tonybury', 'Tokelau', 'UcErmWu8vs', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(46, 'Georgiana West', 'marcelle.torp', 'marks.hannah@example.org', '(636) 958-2203', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '85771 Lacy Light', 'Jarvisberg', 'Vanuatu', 'HxYz5WDuib', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(47, 'Tomas Douglas', 'mills.erika', 'carolyn50@example.org', '+1 (907) 927-3884', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '926 Kaleb Falls', 'Gerlachbury', 'Argentina', 'gsFZ4Fjaq0', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(48, 'Dallin Langosh', 'antone.luettgen', 'eliezer51@example.org', '(279) 574-3922', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '7165 Jeramy Hills', 'Medhurstview', 'Saint Martin', 'uqKzY47u4P', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(49, 'Prof. Johann Pagac', 'qpouros', 'msanford@example.net', '334-642-4055', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 0, '30536 Bertram Lakes Suite 249', 'Skilesfurt', 'Benin', '9k2aEQGwh7', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(50, 'Ms. Victoria Zemlak', 'aisha.cummerata', 'antone.tillman@example.org', '1-425-882-1631', '2025-03-14 00:13:41', '$2y$12$Q6/l7Kht7km5VlwoW4vVe.8fPLsfr.U1r6.Xl6CcVlG7DyHc5lB9u', 'user-default.png', 1, '655 Cummings Plaza Apt. 733', 'Gradyburgh', 'Iran', 'va9larDZNV', '2025-03-14 00:13:41', '2025-03-14 00:13:41'),
(57, 'Mai', 'Mai', 'mai@gmail.com', '01019063522', NULL, '$2y$12$rqopZOhKToZMui8dZL/jxObrk.UyrC9lGfkaE1EpnOl3BX9SiFtja', 'uploads/images/users/mai1745874565.jpg', 1, 'Eg', 'Egypt', 'EG', 'ayCVUXkR0GdkP2Zs9lyyW7KtkHrK4EZ3Jf3Ek4vW3xOxyqncB7pcKxxa1fZR', '2025-04-28 19:09:26', '2025-04-28 23:55:22'),
(58, 'seba', 'seba', 'seba@gmail.com', '01019063444', NULL, '$2y$12$VnPFiIXOQBbRd1tv6TySO.NMtLRstB/eURoi.kLL4MQ.J43UnmwxK', 'uploads/images/users/seba1745883232.jpg', 1, ';;;', ',,,', 'EG', NULL, '2025-04-28 21:33:52', '2025-04-28 21:33:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `image_posts`
--
ALTER TABLE `image_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_subscribers`
--
ALTER TABLE `news_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_subscribers_email_unique` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `related_sites`
--
ALTER TABLE `related_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_phone_unique` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_posts`
--
ALTER TABLE `image_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `news_subscribers`
--
ALTER TABLE `news_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `related_sites`
--
ALTER TABLE `related_sites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_posts`
--
ALTER TABLE `image_posts`
  ADD CONSTRAINT `image_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
