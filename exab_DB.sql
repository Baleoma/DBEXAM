-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 23 2024 г., 22:08
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `exab_DB`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `id` int NOT NULL,
  `name` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `requisites` varchar(255) NOT NULL,
  `contact_person` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`id`, `name`, `address`, `phone`, `requisites`, `contact_person`) VALUES
(1, 'ООО \"Рога и Копыта\"', 'г. Москва, ул. Ленина, д. 1', '1234567890', 'Р/с 40702810900000000001 в Банке \"Россия\"', 'Иванов Иван Иванович'),
(2, 'ИП Петров Петр Петрович', 'г. Санкт-Петербург, ул. Невская, д. 2', '0987654321', 'Р/с 40802810700000000002 в Банке \"Северный\"', 'Петров Петр Петрович'),
(3, 'ЗАО \"Солнышко\"', 'г. Казань, ул. Баумана, д. 3', '1122334455', 'Р/с 40702810500000000003 в Банке \"Восток\"', 'Сидоров Сидор Сидорович'),
(4, 'ООО \"Звезда\"', 'г. Екатеринбург, ул. Мира, д. 4', '2233445566', 'Р/с 40702810300000000004 в Банке \"Урал\"', 'Федоров Федор Федорович'),
(5, 'ИП Смирнов Сергей Сергеевич', 'г. Новосибирск, ул. Кирова, д. 5', '3344556677', 'Р/с 40802810100000000005 в Банке \"Сибирь\"', 'Смирнов Сергей Сергеевич'),
(6, 'ЗАО \"Радуга\"', 'г. Красноярск, ул. Ленина, д. 6', '4455667788', 'Р/с 40702810800000000006 в Банке \"Восточный\"', 'Николаев Николай Николаевич'),
(7, 'ООО \"Бриз\"', 'г. Владивосток, ул. Советская, д. 7', '5566778899', 'Р/с 40702810600000000007 в Банке \"Дальний Восток\"', 'Алексеев Алексей Алексеевич'),
(8, 'ИП Орлов Олег Олегович', 'г. Сочи, ул. Морская, д. 8', '6677889900', 'Р/с 40802810400000000008 в Банке \"Черное Море\"', 'Орлов Олег Олегович'),
(9, 'ЗАО \"Тайфун\"', 'г. Хабаровск, ул. Центральная, д. 9', '7788990011', 'Р/с 40702810200000000009 в Банке \"Амур\"', 'Дмитриев Дмитрий Дмитриевич'),
(10, 'ООО \"Буран\"', 'г. Мурманск, ул. Комсомольская, д. 10', '8899001122', 'Р/с 40702810000000000010 в Банке \"Арктика\"', 'Сергеев Сергей Сергеевич');

-- --------------------------------------------------------

--
-- Структура таблицы `contracts`
--

CREATE TABLE `contracts` (
  `id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `trading_point_id` int NOT NULL,
  `client_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `contracts`
--

INSERT INTO `contracts` (`id`, `start_date`, `end_date`, `trading_point_id`, `client_id`) VALUES
(1, '2023-01-01', '2023-12-31', 1, 1),
(2, '2023-02-01', '2023-11-30', 2, 2),
(3, '2023-03-01', '2023-10-31', 3, 3),
(4, '2023-04-01', '2023-09-30', 4, 4),
(5, '2023-05-01', '2023-08-31', 5, 5),
(6, '2023-06-01', '2023-07-31', 6, 6),
(7, '2023-07-01', '2023-06-30', 7, 7),
(8, '2023-08-01', '2023-05-31', 8, 8),
(9, '2023-09-01', '2023-04-30', 9, 9),
(10, '2023-10-01', '2023-03-31', 10, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `TradingPoints`
--

CREATE TABLE `TradingPoints` (
  `id` int NOT NULL,
  `floor` int NOT NULL,
  `area` float NOT NULL,
  `has_air_conditioning` tinyint(1) NOT NULL,
  `rent_price_per_day` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `TradingPoints`
--

INSERT INTO `TradingPoints` (`id`, `floor`, `area`, `has_air_conditioning`, `rent_price_per_day`) VALUES
(1, 1, 50, 1, '1000.00'),
(2, 2, 75.5, 0, '1200.00'),
(3, 3, 100, 1, '1500.00'),
(4, 1, 60, 1, '1100.00'),
(5, 2, 85.5, 0, '1300.00'),
(6, 3, 110, 1, '1600.00'),
(7, 1, 55, 1, '1050.00'),
(8, 2, 80.5, 0, '1250.00'),
(9, 3, 105, 1, '1550.00'),
(10, 1, 65, 1, '1150.00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trading_point_id` (`trading_point_id`),
  ADD KEY `client_id` (`client_id`);

--
-- Индексы таблицы `TradingPoints`
--
ALTER TABLE `TradingPoints`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `contracts`
--
ALTER TABLE `contracts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `TradingPoints`
--
ALTER TABLE `TradingPoints`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`trading_point_id`) REFERENCES `TradingPoints` (`id`),
  ADD CONSTRAINT `contracts_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `Clients` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
