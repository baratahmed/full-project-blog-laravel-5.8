-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2020 at 12:11 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravelblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Python', '2020-01-29 05:33:13', '2020-01-29 05:33:13'),
(2, 'Laravel', '2020-01-29 05:33:20', '2020-01-29 05:33:20'),
(3, 'JavaScript', '2020-01-29 05:33:40', '2020-01-29 05:33:40'),
(4, 'Angular', '2020-01-29 05:33:46', '2020-01-29 05:33:46'),
(5, 'React Native', '2020-01-29 05:33:53', '2020-01-29 05:33:53'),
(6, 'Vue', '2020-01-29 05:33:59', '2020-01-29 05:33:59'),
(7, 'Wordpress', '2020-01-29 05:36:56', '2020-01-29 05:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(61, '2014_10_12_000000_create_users_table', 1),
(62, '2014_10_12_100000_create_password_resets_table', 1),
(63, '2020_01_23_092058_create_posts_table', 1),
(64, '2020_01_23_092326_create_categories_table', 1),
(65, '2020_01_24_120141_create_tags_table', 1),
(66, '2020_01_24_121037_create_post_tag_table', 1),
(67, '2020_01_24_170717_create_profiles_table', 1),
(68, '2020_01_25_162607_create_settings_table', 1),
(69, '2020_01_27_121032_insert_user_id_column', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `content`, `category_id`, `featured`, `deleted_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Laravel post 1', 'laravel-post-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.', 2, 'uploads/posts/15802977121.png', NULL, '2020-01-29 05:35:12', '2020-01-29 05:35:12', 1),
(2, 'React Native post 1', 'react-native-post-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.', 5, 'uploads/posts/15802978064.jpg', NULL, '2020-01-29 05:36:46', '2020-01-29 05:36:46', 1),
(3, 'Wordpress post 1', 'wordpress-post-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.', 7, 'uploads/posts/15802978365.jpg', NULL, '2020-01-29 05:37:16', '2020-01-29 05:37:16', 1),
(4, 'JavaScript post 1', 'javascript-post-1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.Lorem ipsum dolor sit amet consectetur adipisicing elit. Beatae ea ab deleniti impedit quis soluta quas debitis ipsam voluptatem. In, nam voluptatibus. Possimus sunt magnam, ipsum esse temporibus beatae ea.', 3, 'uploads/posts/15802979222.png', NULL, '2020-01-29 05:38:42', '2020-01-29 05:38:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 3, 3, NULL, NULL),
(5, 4, 1, NULL, NULL),
(6, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `avatar`, `user_id`, `about`, `facebook`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'uploads/avatars/1.jpg', 1, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. In cum corporis accusantium iusto quae voluptatibus autem cumque iste consequatur aspernatur quam suscipit dolore quaerat illo omnis, sint doloremque, velit veritatis?', 'http://www.facebook.com', 'http://www.youtube.com', '2020-01-29 05:17:24', '2020-01-29 05:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `contact_number`, `contact_email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Cherished Dream', '+8801706351202', 'cdream23@gmail.com', '1 no police gate,Dampara,WASA,Chittagong', '2020-01-29 05:17:24', '2020-01-29 05:17:24');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`, `created_at`, `updated_at`) VALUES
(1, 'programming', '2020-01-29 05:32:52', '2020-01-29 05:32:52'),
(2, 'robotics', '2020-01-29 05:33:00', '2020-01-29 05:33:00'),
(3, 'designing', '2020-01-29 05:33:04', '2020-01-29 05:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `admin`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cherished Dream', 'cherished@dream.com', 1, NULL, '$2y$10$/N8aa/13nz8lvfPYyW3MdOmgGltU.PO1OYtEskB9pBaMDJ5dMwSrS', NULL, '2020-01-29 05:17:24', '2020-01-29 05:17:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
