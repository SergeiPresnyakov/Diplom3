-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 23 2021 г., 18:02
-- Версия сервера: 8.0.19
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `examdb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `email` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `verified` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `resettable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `roles_mask` int UNSIGNED NOT NULL DEFAULT '0',
  `registered` int UNSIGNED NOT NULL,
  `last_login` int UNSIGNED DEFAULT NULL,
  `force_logout` mediumint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `username`, `status`, `verified`, `resettable`, `roles_mask`, `registered`, `last_login`, `force_logout`) VALUES
(1, 'johndoe@gmail.com', '$2y$10$A0oZIT.5y9xtU6773TALaOO0jujLsHGZYDqtUSCfaF03bPq9mNtea', 'John Doe', 0, 1, 1, 1, 1611122995, 1611409894, 0),
(3, 'dicaprio@gmail.com', '$2y$10$tgb6bu4MUKZ4RvLz4dRXb.D2lgEc0rPCzNgSp8dOivZaP3V7T2KJm', NULL, 0, 1, 1, 0, 1611123231, NULL, 0),
(4, 'ivanivanov@mail.com', '$2y$10$zGwfR6Bu7DN/AedI7S73RuiVsvOKGbD3LI1TMrdPg96AyuJspEOJm', NULL, 0, 1, 1, 0, 1611123411, NULL, 0),
(5, 'petrsamoilov@gmail.com', '$2y$10$clUoH/0LpkNwFSDzbEvuHuyTtxlGQNaLA84uLNXbza34HrnUpcgHy', NULL, 0, 1, 1, 0, 1611123648, NULL, 0),
(6, 'kirillzacharov@gmail.com', '$2y$10$nL2uBzod4SqRjZo1ki.7q.dlM8yeEv886ZMc7bB/gEXEnZH1fs6Fy', NULL, 0, 1, 1, 0, 1611123848, NULL, 0),
(7, 'elizavetam@gmail.com', '$2y$10$j7AwFPha20Wti0aYIwaJIeY2nea.i0kjOdBPTg6ua3oLoJvvtvAv.', NULL, 0, 1, 1, 0, 1611124017, NULL, 0),
(8, 'maximsemenov@gmail.com', '$2y$10$SUmDtVSPe4LAGBZtosIjHeCQkI3gOnqTLCGRq9I9zqtdhP2WVYZdO', NULL, 0, 1, 1, 0, 1611124207, NULL, 0),
(9, 'sergeyrudakov@gmail.com', '$2y$10$hRXpRtj7J1NhMt890WWD2.DaPckpMl/lrS.EGp4TuKeZAQYzyoS8y', NULL, 0, 1, 1, 0, 1611124406, NULL, 0),
(10, 'vladislavvolkov@gmail.com', '$2y$10$kfB.xVKuNvXHeTCsX5C6KuFtzSMtubpSpfqHYJOR5pfvyeeqyTS3K', NULL, 0, 1, 1, 0, 1611124560, NULL, 0),
(11, 'knyazev@mail.com', '$2y$10$rzYSzhzFYarJv8L.O0VY9.3ML0nMVUAFn0mTDQBuygDXIP6B0ptWm', NULL, 0, 1, 1, 0, 1611124768, 1611129031, 0),
(12, 'kiraastahova@mail.com', '$2y$10$.WS7kXc1rLdDrJ1t2T/2BeEifvvbsS.3Pdcro/BxMaHkQo6sGfL02', NULL, 0, 1, 1, 0, 1611125003, NULL, 0),
(13, 'ivankuznecov@gmail.com', '$2y$10$dxSy7OhmbPQGIUDAki4azOLFal8n1S.oOenbdx4BwTFv1dGFuoz56', NULL, 0, 1, 1, 0, 1611125287, NULL, 0),
(14, 'vladimirsmirnov@gmail.com', '$2y$10$zceySh/enNww8wFzLoM1vOKdDk7kOq/iw77WT6KYzN0sOgOsHlCr.', NULL, 0, 1, 1, 0, 1611125526, NULL, 0),
(15, 'novikovap@gmail.com', '$2y$10$hSnV/61V7OskFBUNfmPtfODNM6j6nrwjvBpqC49zJ9nMASGJPhc2q', NULL, 0, 1, 1, 0, 1611125775, NULL, 0),
(16, 'michaila@gmail.com', '$2y$10$K/U.eRobnfRuZcwmL4PNreRhNCFsOm1ei3MStP00wQdBAvMLjeaem', NULL, 0, 1, 1, 0, 1611126022, NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users_confirmations`
--

CREATE TABLE `users_confirmations` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `email` varchar(249) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selector` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_data`
--

CREATE TABLE `users_data` (
  `id` int NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `job` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'img/demo/avatars/avatar-m.png',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'online',
  `vk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `telegram` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `instagram` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_data`
--

INSERT INTO `users_data` (`id`, `email`, `username`, `job`, `address`, `phone`, `avatar`, `status`, `vk`, `telegram`, `instagram`) VALUES
(1, 'johndoe@gmail.com', 'John Doe', 'Administrator', 'Irkutsk, Russia', '+7 234 345 23 12', 'upload/avatars/6007c948a9439.png', 'online', NULL, NULL, NULL),
(3, 'dicaprio@gmail.com', 'Leonardo Dicaprio', 'Wolf from Wall Street', 'Leonardo Dicaprio', '+7 435 562 54 21', 'upload/avatars/6007ca1fc328a.jpg', 'afk', 'vkontakte', '3454566', 'instagram'),
(4, 'ivanivanov@mail.com', 'Ivan Ivanov', 'PHP programmer', 'Omsk, Russia', '+7 924 135 64 62', 'upload/avatars/6007cad42999c.jpg', 'busy', '', '', ''),
(5, 'petrsamoilov@gmail.com', 'Petr Samoilov', 'Blogger', 'Ekaterinburg, Russia', '+7 234 345 23 12', 'upload/avatars/6007cbc0f115e.jpg', 'online', '', '', ''),
(6, 'kirillzacharov@gmail.com', 'Kirill Zacharov', 'Taxi driver', 'Moscow, Russia', '+ 7 924 845 65 11', 'upload/avatars/6007cc89154ac.jpg', 'afk', '', '', ''),
(7, 'elizavetam@gmail.com', 'Elizaveta Medvedeva', 'Seller', 'Vladivostok, Russia', '+7 914 993 54 23', 'upload/avatars/6007cd31df2c8.jpg', 'online', '', '', ''),
(8, 'maximsemenov@gmail.com', 'Maxim Semenov', 'Frontend Developer', 'Nizhniy Novgorod, Russia', '+ 7 950 834 13 54', 'upload/avatars/6007cdf014822.jpg', 'afk', '', '', ''),
(9, 'sergeyrudakov@gmail.com', 'Sergey Rudakov', 'Automation QA', 'Nahodka, Russia', '+7 345 342 34 56', 'upload/avatars/6007ceb68e622.jpg', 'online', '', '', ''),
(10, 'vladislavvolkov@gmail.com', 'Vladislav Volkov', 'Database Analyst', 'Irkutsk, Russia', '+7 924 765 75 22', 'upload/avatars/6007cf508f5c2.jpg', 'online', '', '', ''),
(11, 'knyazev@mail.com', 'Alexandr Knyazev', 'Automechanic', 'Kiev, Urkaine', '+7 914 753 22 45', 'upload/avatars/6007d02122c16.jpg', 'online', '', '', ''),
(12, 'kiraastahova@mail.com', 'Kira Astahova', 'Manicurist', 'Krasnodar, Russia', '+7 914 983 43 23', 'upload/avatars/6007d10c0a58d.jpg', 'afk', '', '', ''),
(13, 'ivankuznecov@gmail.com', 'Ivan Kuznecov', 'Embedded Developer', 'Perm, Russia', '+7 456 552 98 65', 'upload/avatars/6007d22822c55.jpg', 'online', '', '', ''),
(14, 'vladimirsmirnov@gmail.com', 'Vladimir Smirnov', '.NET Developer', 'Boston, USA', '+ 7 950 232 11 22', 'upload/avatars/6007d31632cb5.jpg', 'online', '', '', ''),
(15, 'novikovap@gmail.com', 'Polina Novikova', 'Java Developer', 'Sochi, Russia', '+7 943 224 98 98', 'upload/avatars/6007d40f27e46.jpg', 'online', '', '', ''),
(16, 'michaila@gmail.com', 'Michail Akimov', 'Pilot', 'Moscow, Russia', '+7 914 546 23 11', 'upload/avatars/6007d506a7338.jpg', 'online', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users_remembered`
--

CREATE TABLE `users_remembered` (
  `id` bigint UNSIGNED NOT NULL,
  `user` int UNSIGNED NOT NULL,
  `selector` varchar(24) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_resets`
--

CREATE TABLE `users_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `user` int UNSIGNED NOT NULL,
  `selector` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `token` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `expires` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users_throttling`
--

CREATE TABLE `users_throttling` (
  `bucket` varchar(44) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `tokens` float UNSIGNED NOT NULL,
  `replenished_at` int UNSIGNED NOT NULL,
  `expires_at` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Индексы таблицы `users_confirmations`
--
ALTER TABLE `users_confirmations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `email_expires` (`email`,`expires`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `users_data`
--
ALTER TABLE `users_data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_remembered`
--
ALTER TABLE `users_remembered`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `users_resets`
--
ALTER TABLE `users_resets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `user_expires` (`user`,`expires`);

--
-- Индексы таблицы `users_throttling`
--
ALTER TABLE `users_throttling`
  ADD PRIMARY KEY (`bucket`),
  ADD KEY `expires_at` (`expires_at`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `users_confirmations`
--
ALTER TABLE `users_confirmations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users_remembered`
--
ALTER TABLE `users_remembered`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users_resets`
--
ALTER TABLE `users_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
