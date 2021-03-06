-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 15-02-2018 a las 12:44:03
-- Versión del servidor: 10.1.30-MariaDB-0ubuntu0.17.10.1
-- Versión de PHP: 7.1.13-1+ubuntu17.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `infie`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(10) UNSIGNED NOT NULL,
  `n_inventario` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mac` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `esp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `n_inventario`, `mac`, `ip`, `marca`, `so`, `esp`, `created_at`, `updated_at`) VALUES
(14, '137348', '18-03-73-D5-7F-99', '148.213.117.77', 'DELL', 'W7 PRO', 'INTEL CORE i7 3,4GHz RAM 16 GB ARQ. 64BITS', '2018-02-16 00:20:48', '2018-02-16 00:20:48'),
(15, '137345', '18-03-73-D5-80-A8', '148.213.117.78', 'DELL', 'W7 PRO', 'INTEL CORE i7 3,4GHz RAM 16 GB ARQ. 64BITS', '2018-02-16 00:21:29', '2018-02-16 00:21:29'),
(16, '137347', '18-03-73-D5-7D-43', '148.213.117.79', 'DELL', 'W7 PRO', 'INTEL CORE i7 3,4GHz RAM 16 GB ARQ. 64BITS', '2018-02-16 00:22:28', '2018-02-16 00:22:28'),
(17, '137349', '18-03-73-D5-7C-9C', '148.213.117.80', 'DELL', 'FEDORA 22', 'INTEL CORE i7 3,4GHz RAM 16 GB ARQ. 64BITS  DD. 2 TB.', '2018-02-16 00:23:05', '2018-02-16 00:23:05'),
(18, '137343', '18-03-73-D8-E0-0F', '148.213.117.81', 'DELL', 'UBUNTU 16.04 LTS', 'INTEL XEON 3.3 GHZ RAM 16GB AQR. 64 BITS DD. 2 TB.', '2018-02-16 00:24:18', '2018-02-16 00:24:18'),
(19, '140294', '08-2E-5F-23-32-7F', '148.213.117.82', 'HP', 'UBUNTU 17.10', 'INTEL CORE i5 3,3GHz RAM 12 GB ARQ. 64BITS DD. 500 GB', '2018-02-16 00:25:35', '2018-02-16 00:25:35'),
(20, '142427', '90-B1-1C-69-9D-6B', '148.213.117.83', 'DELL', 'UBUNTU 16.04 LTS', 'INTEL CORE i7 3,4GHz RAM 8GB ARQ. 64BITS DD.1TB', '2018-02-16 00:26:14', '2018-02-16 00:26:14'),
(21, '152767', '98-90-96-C3-C2-7A', '148.213.117.84', 'DELL', 'UBUNTU 16.04 LTS', 'INTEL CORE i7 3,6GHz RAM 16GB ARQ. 64BITS DD.500 GB', '2018-02-16 00:26:42', '2018-02-16 00:26:42'),
(22, '142429', '90-B1-1C-69-95-36', '148.213.117.85', 'DELL', 'UBUNTU 16.04 LTS', 'INTEL CORE i7 3,6GHz RAM 8GB ARQ. 32BITS DD.1TB', '2018-02-16 00:27:12', '2018-02-16 00:27:12'),
(23, '152763', '98-90-96-C4-28-15', '148.213.117.86', 'DELL', 'UBUNTU 16.04 LTS', 'INTEL CORE i7 3,4GHz RAM 8GB ARQ. 64BITS DD.1TB', '2018-02-16 00:28:46', '2018-02-16 00:28:46'),
(25, '152769', '98-90-96-C3-B6-23', '148.213.117.87', 'DELL', 'UBUNTU 17.1', 'INTEL CORE i7 3,6GHz RAM 16GB ARQ. 64BITS DD.500 GB', '2018-02-16 00:30:54', '2018-02-16 00:30:54'),
(27, '152764', '98-90-96-C4-22-65', '148.213.117.89', 'DELL', 'UBUNTU 16.04 LTS', 'INTEL CORE i7 3,6GHz RAM 8GB ARQ. 64BITS DD.500 GB', '2018-02-16 00:34:44', '2018-02-16 00:34:44'),
(28, '152768', '98-90-96-03-B6-23', '148.213.117.90', 'DELL', 'UBUNTU 16.04 LTS', 'INTEL CORE i7 3,6GHz RAM 16GB ARQ. 32BITS DD.500 GB', '2018-02-16 00:35:47', '2018-02-16 00:35:47'),
(29, '152838', '10-C3-7B-6B-AA-F6', '148.213.117.91', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,6GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:37:30', '2018-02-16 00:37:30'),
(30, '152840', '10-C3-7B-6B-AA-C7', '148.213.117.92', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,6GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:37:56', '2018-02-16 00:37:56'),
(31, '152845', '10-C3-7B-6B-AA-F8', '148.213.117.93', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,6GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:38:19', '2018-02-16 00:38:19'),
(32, '152841', '10-C3-7B-6B-A9-C1', '148.213.117.94', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,5GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:38:44', '2018-02-16 00:38:44'),
(33, '152844', '30-5A-3A-53-0A-DC', '148.213.117.95', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,5GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:39:07', '2018-02-16 00:39:07'),
(34, '152846', '10-C3-7B-6B-AA-62', '148.213.117.96', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,5GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:39:30', '2018-02-16 00:39:30'),
(35, '152842', '10-C3-7B-6B-AA-CA', '148.213.117.97', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,5GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:39:53', '2018-02-16 00:39:53'),
(36, '152843', '10-C3-7B-6B-A9-9A', '148.213.117.98', 'INTEL', 'UBUNTU 16.04 LTS', 'INTEL CORE i3 3,5GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:40:15', '2018-02-16 00:40:15'),
(37, '152839', '10-C3-7B-6B-AA-B8', '148.213.117.100', 'INTEL', 'CENTOS 7', 'INTEL CORE i3 3,5GHz RAM 16GB ARQ. 64BITS DD.1TB', '2018-02-16 00:40:43', '2018-02-16 00:40:43'),
(38, '121715', '00-1F-29-02-5E-07', '148.213.117.75', 'HP', 'WINDOWS 7 ULT', 'INTEL XEON 3.3 GHZ RAM 8GB AQR. 64 BITS', '2018-02-16 00:41:13', '2018-02-16 00:41:13'),
(39, '000000', '2C-44-FD-2F-B8-48', '148.213.117.72', 'HP', 'UBUNTU 16.04 LTS', 'INTEL CORE I5 3,3GHz RAM 8 GB ARQ. 64BITS DD. 500 GB', '2018-02-16 00:42:32', '2018-02-16 00:42:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `registros_n_inventario_unique` (`n_inventario`),
  ADD UNIQUE KEY `registros_mac_unique` (`mac`),
  ADD UNIQUE KEY `registros_ip_unique` (`ip`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
