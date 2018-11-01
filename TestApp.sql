-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Час створення: Лис 01 2018 р., 15:50
-- Версія сервера: 5.7.23
-- Версія PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `TestApp`
--

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_31_172932_test_app', 1);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `testApp`
--

CREATE TABLE `testApp` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pages` int(11) NOT NULL,
  `Disc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `testApp`
--

INSERT INTO `testApp` (`id`, `created_at`, `updated_at`, `Author`, `Title`, `Pages`, `Disc`, `Image`) VALUES
(12, NULL, NULL, 'Leo Tolstoy', 'War and Peace', 1225, 'It’s almost impossible to come to a novel with fresh eyes, and perhaps Leo Tolstoy’s War and Peace is the example par excellence. Hailed widely as the greatest novel of all time, it is written by a man traditionally depicted as a giant among giants who stands atop in a giant (geographically and otherwise) civilization’s literary golden age. As if that wasn’t enough to ensure its status, the book itself is huge, so wide and deep that in the words of more than one critic it contains (as Mahler’s 80-minute symphonies are said to) the entire world in all its splendor and diversity.', '2018-11-01 15:13:34 9780307806581.jpeg'),
(13, NULL, NULL, 'George Orwell', 'Nineteen Eighty-Four', 328, 'Nineteen Eighty-Four, often published as 1984, is a dystopian novel by English author George Orwell published in June 1949', '2018-11-01 15:16:54 o-o-e1489090416858-860x1374.jpeg'),
(14, NULL, NULL, 'James Joyce', 'Ulysses', 730, 'Ulysses is a modernist novel by Irish writer James Joyce. It was first serialised in parts in the American journal The Little Review from March 1918 to December 1920 and then published in its entirety in Paris by Sylvia Beach on 2 February 1922, Joyce\'s 40th birthday.', '2018-11-01 15:29:16 300px-JoyceUlysses2.jpg'),
(15, NULL, NULL, 'F. Scott Fitzgerald', 'The Great Gatsby', 656, 'The Great Gatsby is a 1925 novel written by American author F. Scott Fitzgerald that follows a cast of characters living in the fictional towns of West Egg and East Egg on prosperous Long Island in the summer of 1922. The story primarily concerns the young and mysterious millionaire Jay Gatsby and his quixotic passion and obsession with the beautiful former debutante Daisy Buchanan. Considered to be Fitzgerald\'s magnum opus, The Great Gatsby explores themes of decadence, idealism, resistance to change, social upheaval, and excess, creating a portrait of the Roaring Twenties that has been described as a cautionary tale regarding the American Dream.', '2018-11-01 15:30:39 TheGreatGatsby_1925jacket.jpeg'),
(16, NULL, NULL, 'Karl Marx', 'Das Kapital', 401, 'Das Kapital, also known as Capital. Critique of Political Economy (German: Das Kapital. Kritik der politischen Ökonomie, pronounced [das kapiˈtaːl, kʁiːtɪk deːɐ pɔliːtɪʃən øːkoːnoːmiː]; 1867–1883) by Karl Marx is a foundational theoretical text in materialist philosophy, economics and politics', '2018-11-01 15:41:18 41UrQZsazKL._SX324_BO1,204,203,200_.jpg'),
(17, NULL, NULL, 'Stephen Hawking', 'A Brief History of Time', 256, 'A Brief History of Time: From the Big Bang to Black Holes is a popular-science book on cosmology (the study of the universe) by British physicist Stephen Hawking. It was first published in 1988. Hawking wrote the book for nonspecialist readers with no prior knowledge of scientific theories.', '2018-11-01 15:43:42 A1xkFZX5k-L.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `testApp`
--
ALTER TABLE `testApp`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблиці `testApp`
--
ALTER TABLE `testApp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
