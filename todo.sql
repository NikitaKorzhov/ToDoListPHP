-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Бер 09 2020 р., 19:03
-- Версія сервера: 10.4.8-MariaDB
-- Версія PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `todo`
--

-- --------------------------------------------------------

--
-- Структура таблиці `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `task` text NOT NULL,
  `edit` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `list`
--

INSERT INTO `list` (`id`, `name`, `email`, `task`, `edit`) VALUES
(2, 'Nikita Korzhov', 'korzhovNikita@gmail.com', 'Сделать проэкт', ''),
(3, 'Nataly', 'KorzhovaNataly04@gmail.com', 'написать курсовую', 'edited by admin'),
(26, 'Никита', 'korzhovnikita@gmail.com', 'Сходить в бсейн', ''),
(28, 'Никита', 'korzhovnikita@gmail.com', '<script>alert(\"text\")</script>', ''),
(29, 'Николай', 'kor.ni@ukr.net', 'оплатить счета до конца недели', ''),
(30, 'Иваныч', 'korzhovnikita@gmail.com', 'купить продукты и покурить', 'edit by admin'),

(32, 'Никита', 'korzhovnikita@gmail.com', 'Пообедать', ''),
(33, 'Никита', 'korzhovnikita@gmail.com', 'Заработать милион доларов', ''),

(35, 'Никита', 'korzhovnikita@gmail.com', 'Выпить кофе утром', 'edit by admin');

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', '1234');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
