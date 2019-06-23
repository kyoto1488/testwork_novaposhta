-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2019 at 09:28 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(600) NOT NULL,
  `price` float NOT NULL,
  `pic` varchar(200) NOT NULL,
  `quantity` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`id`, `title`, `description`, `price`, `pic`, `quantity`) VALUES
(1, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(2, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(3, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(4, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(5, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(6, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(7, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(8, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(9, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(10, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(11, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(12, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(13, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(14, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(15, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(16, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(17, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(18, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(19, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(20, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(21, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(22, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(23, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(24, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(25, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(26, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(27, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(28, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(29, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(30, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(31, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(32, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(33, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(34, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(35, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(36, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(37, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(38, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(39, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(40, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(41, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(42, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(43, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(44, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(45, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(46, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5),
(47, 'Ноутбук Asus X560UD-EJ443 (90NB0IP1-M07110) Black', 'Стильный корпус с контрастными акцентами\r\nЧерная отделка корпуса дополнена контрастными голубыми акцентами на гранях – ноутбук X560 выделяется среди других моделей своим стильным внешним видом.', 200, 'https://i2.rozetka.ua/goods/12300520/asus_90nb0ip1_m07110_images_12300520718.jpg', 5),
(48, 'Ноутбук Acer Nitro 5 AN515-52 (NH.Q3XEU.051) Shale Black', 'Экран 15.6” IPS (1920x1080) Full HD, матовый / Intel Core i7-8750H (2.2 - 4.1 ГГц) / RAM 16 ГБ\r\n/ HDD 2 ТБ + SSD 256 ГБ / nVidia GeForce GTX 1060, 6 ГБ\r\n/ без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linux / 2.7 кг / черный', 250, 'https://i2.rozetka.ua/goods/11570507/copy_acer_nh_q3xeu_047_5ca318f0682c2_images_11570507552.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `department` varchar(30) NOT NULL,
  `basket_snapshot` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
