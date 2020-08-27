-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-08-2020 a las 20:56:19
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `estres`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionarios`
--

CREATE TABLE `cuestionarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `respuesta_1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_4` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_5` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_6` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_7` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_8` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_9` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_10` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_11` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `respuesta_12` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cuestionarios`
--

INSERT INTO `cuestionarios` (`id`, `respuesta_1`, `respuesta_2`, `respuesta_3`, `respuesta_4`, `respuesta_5`, `respuesta_6`, `respuesta_7`, `respuesta_8`, `respuesta_9`, `respuesta_10`, `respuesta_11`, `respuesta_12`, `total`, `created_at`, `updated_at`, `user_id`) VALUES
(4, '1', '3', '3', '4', '4', '4', '3', '3', '4', '3', '3', '3', '38', '2019-11-09', '2019-11-09 21:00:23', NULL),
(5, '1', '3', '5', '5', '6', '6', '5', '5', '5', '6', '5', '5', '57', '2019-11-09', '2019-11-09 21:01:51', NULL),
(6, '1', '4', '3', '5', '4', '4', '5', '4', '4', '5', '4', '4', '47', '2019-11-09', '2019-11-09 21:02:11', NULL),
(7, '3', '4', '4', '5', '4', '5', '5', '4', '4', '5', '4', '5', '42', '2019-11-09', '2019-11-09 21:02:41', NULL),
(8, '1', '5', '5', '6', '6', '6', '6', '5', '5', '6', '5', '5', '61', '2019-11-11', '2019-11-12 04:19:43', NULL),
(9, '4', '3', '3', '4', '4', '3', '6', '5', '4', '5', '5', '5', '51', '2019-11-11', '2019-11-12 04:20:03', NULL),
(10, '3', '3', '4', '5', '5', '5', '5', '6', '5', '5', '5', '6', '57', '2019-11-11', '2019-11-12 04:20:45', NULL),
(11, '6', '5', '4', '4', '3', '5', '4', '3', '4', '5', '3', '4', '50', '2019-11-11', '2019-11-12 04:21:15', NULL),
(12, '3', '4', '5', '5', '4', '5', '4', '5', '5', '4', '4', '5', '53', '2019-11-11', '2019-11-12 04:21:37', NULL),
(13, '3', '5', '4', '4', '5', '4', '5', '4', '4', '5', '5', '5', '53', '2019-11-11', '2019-11-12 04:22:04', NULL),
(14, '5', '5', '5', '4', '4', '3', '5', '5', '6', '5', '5', '6', '58', '2019-11-11', '2019-11-12 04:22:26', NULL),
(15, '3', '3', '3', '4', '4', '5', '5', '5', '5', '5', '5', '3', '50', '2019-11-11', '2019-11-12 04:22:43', NULL),
(16, '4', '4', '5', '5', '4', '4', '5', '5', '4', '5', '4', '5', '54', '2019-11-11', '2019-11-12 04:23:22', NULL),
(17, '5', '5', '5', '4', '4', '5', '5', '5', '5', '5', '5', '5', '58', '2019-11-11', '2019-11-12 04:23:48', NULL),
(18, '5', '4', '4', '4', '5', '5', '4', '4', '5', '4', '4', '3', '51', '2019-11-11', '2019-11-12 04:24:14', NULL),
(19, '5', '4', '3', '5', '4', '5', '4', '5', '4', '5', '6', '6', '56', '2019-11-11', '2019-11-12 04:24:44', NULL),
(20, '4', '5', '4', '4', '4', '4', '5', '5', '4', '4', '4', '4', '51', '2019-11-11', '2019-11-12 04:25:02', NULL),
(21, '5', '4', '4', '5', '4', '4', '3', '5', '5', '5', '5', '5', '54', '2019-11-11', '2019-11-12 04:25:25', NULL),
(22, '5', '5', '4', '4', '4', '5', '4', '5', '4', '4', '5', '5', '54', '2019-11-11', '2019-11-12 04:25:52', NULL),
(23, '4', '5', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '49', '2019-11-11', '2019-11-12 04:26:18', NULL),
(24, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2019-11-11', '2019-11-12 04:26:37', NULL),
(25, '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '60', '2019-11-13', '2019-11-14 01:08:02', NULL),
(26, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:51:54', NULL),
(27, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:52:42', NULL),
(28, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:53:03', NULL),
(29, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:54:33', NULL),
(30, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:55:25', NULL),
(31, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:57:13', NULL),
(32, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:57:37', NULL),
(33, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:58:36', NULL),
(34, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 13:59:13', NULL),
(35, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:02:10', NULL),
(36, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:03:35', NULL),
(37, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:03:41', NULL),
(38, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:04:10', NULL),
(39, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:05:02', NULL),
(40, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:05:05', NULL),
(41, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:05:13', NULL),
(42, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:23:07', NULL),
(43, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:24:01', 7),
(44, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-12 14:26:30', 7),
(45, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-12', '2020-01-13 03:16:48', 7),
(46, '2', '2', '6', '4', '5', '6', '6', '6', '6', '6', '6', '6', '61', '2020-01-13', '2020-01-13 07:20:40', 27),
(47, '1', '1', '1', '1', '1', '1', '1', '1', '2', '1', '1', '1', '13', '2020-01-13', '2020-01-13 07:33:42', 27),
(48, '2', '2', '2', '2', 'Rosenburg', '2', 'Rosenburg', 'Rosenburg', '5', '5', '4', '2', '26', '2020-01-13', '2020-01-13 07:35:56', 27),
(49, '2', '2', '2', '2', 'Rosenburg', '2', 'Rosenburg', 'Rosenburg', '5', '5', '4', '2', '26', '2020-01-13', '2020-01-13 07:36:26', 27),
(50, '1', '1', '1', '1', '2', '1', '1', '1', '2', 'Rosenburg', '1', '2', '14', '2020-01-13', '2020-01-13 07:56:44', 27),
(51, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '12', '2020-01-13', '2020-01-13 08:00:08', 27),
(52, '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '12', '2020-01-13', '2020-01-13 08:06:20', 27),
(53, '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '72', '2020-01-13', '2020-01-13 08:12:43', 27),
(54, '6', '6', '6', '6', '4', '6', '4', '6', '4', '6', '6', '6', '66', '2020-01-13', '2020-01-13 08:13:01', 27),
(55, '6', '6', '6', '6', '4', '6', '4', '6', '4', '4', '4', '4', '60', '2020-01-13', '2020-01-13 08:13:18', 27),
(56, '6', '6', '6', '4', '4', '6', '4', '4', '4', '4', '4', '4', '56', '2020-01-13', '2020-01-13 08:13:51', 27),
(57, '6', '4', '6', '4', '4', '6', '4', '4', '4', '4', '4', '4', '54', '2020-01-13', '2020-01-13 08:14:02', 27),
(58, '6', '4', 'Rosenburg', '4', '4', '6', '4', '4', '4', '4', '4', '4', '48', '2020-01-13', '2020-01-13 08:14:13', 27),
(59, '6', '4', 'Rosenburg', '4', '4', '6', '4', '4', 'Rosenburg', '4', '4', '4', '44', '2020-01-13', '2020-01-13 08:14:20', 27),
(60, '6', '4', 'Rosenburg', '4', '4', '6', '4', '4', 'Rosenburg', 'Rosenburg', '4', '4', '40', '2020-01-13', '2020-01-13 08:15:53', 27),
(61, '6', '4', 'Rosenburg', '4', '4', '6', '4', '4', 'Rosenburg', 'Rosenburg', '1', '1', '34', '2020-01-13', '2020-01-13 08:16:01', 27),
(62, '6', '4', 'Rosenburg', '1', '4', '6', '4', '4', 'Rosenburg', 'Rosenburg', '1', '1', '31', '2020-01-13', '2020-01-13 08:16:08', 27),
(63, '6', '4', 'Rosenburg', '1', '1', '1', '4', '4', 'Rosenburg', 'Rosenburg', '1', '1', '23', '2020-01-13', '2020-01-13 08:16:18', 27),
(64, '1', '2', 'Rosenburg', 'Rosenburg', 'Rosenburg', '4', 'Rosenburg', 'Rosenburg', 'Rosenburg', 'Rosenburg', 'Rosenburg', '4', '11', '2020-01-13', '2020-01-13 08:16:55', 27),
(65, '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '48', '2020-01-13', '2020-01-13 08:33:25', 27),
(66, '4', '4', '4', '4', '4', '4', '5', '4', '1', '2', '4', '4', '44', '2020-01-13', '2020-01-13 08:49:53', 27),
(67, '2', '2', '2', '4', '4', '4', '5', '5', '1', '4', '5', '5', '43', '2020-01-13', '2020-01-13 08:53:52', 27),
(68, '2', '2', '1', '4', '5', '3', '2', '3', '3', '6', '4', '5', '40', '2020-01-13', '2020-01-13 09:04:48', 27),
(69, '2', '3', '2', '2', '3', '4', '5', '5', '4', '4', '4', '4', '42', '2020-01-13', '2020-01-13 09:22:40', 27),
(70, '1', '2', '1', '1', '2', '4', '2', '4', '1', '4', '4', '2', '28', '2020-01-13', '2020-01-13 09:32:06', 27),
(71, '1', '4', '3', '3', '2', '4', '4', '2', '4', '2', '3', '3', '35', '2020-08-27', '2020-08-27 22:18:30', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2019_07_03_170109_create_role_users_table', 2),
(49, '2019_09_05_165404_create_respuestas_table', 6),
(50, '2019_09_05_170641_create_respuestas_table', 7),
(57, '2019_07_08_215913_create_role_users_table', 8),
(65, '2019_10_08_195851_create_tipos_table', 9),
(69, '2014_10_12_000000_create_users_table', 10),
(70, '2014_10_12_100000_create_password_resets_table', 10),
(71, '2019_07_02_210139_create_alumnos_table', 10),
(72, '2019_07_03_165604_create_roles_table', 10),
(73, '2019_07_03_170109_create_role_user_table', 10),
(74, '2019_09_09_163043_create_respuestas_table', 10),
(75, '2019_10_08_200420_create_usuarios_table', 10),
(76, '2019_10_08_205446_create_cuestionarios_table', 10),
(77, '2019_10_08_205507_create_seguimientos_table', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrador', '2019-10-15 07:14:45', '2019-10-15 07:14:45'),
(2, 'user', 'User', '2019-10-15 07:14:45', '2019-10-15 07:14:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2019-10-15 07:14:46', '2019-10-15 07:14:46'),
(2, 1, 2, '2019-10-15 07:14:46', '2019-10-15 07:14:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguimientos`
--

CREATE TABLE `seguimientos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usuarios_id` bigint(20) UNSIGNED NOT NULL,
  `cuestionarios_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `seguimientos`
--

INSERT INTO `seguimientos` (`id`, `usuarios_id`, `cuestionarios_id`, `created_at`, `updated_at`) VALUES
(9, 7, 4, '2019-11-11', '2019-11-12 04:53:00'),
(10, 8, 5, '2019-11-11', '2019-11-12 04:55:06'),
(11, 9, 6, '2019-11-11', '2019-11-12 04:56:14'),
(12, 10, 7, '2019-11-11', '2019-11-12 04:56:20'),
(13, 11, 8, '2019-11-11', '2019-11-12 04:56:25'),
(14, 12, 9, '2019-11-11', '2019-11-12 04:56:49'),
(15, 13, 10, '2019-11-11', '2019-11-12 04:56:56'),
(16, 14, 11, '2019-11-11', '2019-11-12 04:57:01'),
(17, 15, 12, '2019-11-11', '2019-11-12 04:57:05'),
(18, 16, 13, '2019-11-11', '2019-11-12 04:57:12'),
(19, 17, 14, '2019-11-11', '2019-11-12 04:57:42'),
(20, 18, 15, '2019-11-11', '2019-11-12 04:57:47'),
(21, 19, 16, '2019-11-11', '2019-11-12 04:57:54'),
(22, 20, 17, '2019-11-11', '2019-11-12 04:58:01'),
(23, 22, 18, '2019-11-11', '2019-11-12 04:58:41'),
(24, 23, 19, '2019-11-11', '2019-11-12 04:58:46'),
(25, 24, 20, '2019-11-11', '2019-11-12 04:58:53'),
(26, 25, 21, '2019-11-11', '2019-11-12 04:58:58'),
(27, 26, 22, '2019-11-11', '2019-11-12 04:59:04'),
(28, 27, 23, '2019-11-11', '2019-11-12 04:59:27'),
(29, 27, 23, '2019-11-11', '2019-11-12 05:01:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Docente', NULL, NULL),
(2, 'Administrativo', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@example.com', NULL, '$2y$10$BsDbnmjH.gICkuZ6YLNQpOE7H9xAg1Cczwr1SfAYWv8Ly6ajV/faS', NULL, '2019-10-15 07:14:46', '2019-10-15 07:14:46'),
(2, 'Admin', 'admin@example.com', NULL, '$2y$10$PDohv4QauT5vJtRmUGrimeFU8XNexCstmzXsHbQCJbVCq80GNMZxa', NULL, '2019-10-15 07:14:46', '2019-10-15 07:14:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_paterno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_materno` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipos_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido_paterno`, `apellido_materno`, `tipos_id`, `user_name`, `password`, `created_at`, `updated_at`) VALUES
(7, 'Hesiquio', 'Zarate', 'Landa', 'Docente', '1234', '9', '2019-11-09 20:38:59', '2019-11-12 04:34:00'),
(8, 'Ivette Estephany', 'Pacheco', 'Farfan', 'Docente', '1234', '1234', '2019-11-09 20:39:36', '2019-11-09 20:39:36'),
(9, 'Jesus Alberto', 'Perez', 'Perez', 'Administrativo', '1234', '1234', '2019-11-09 20:41:49', '2019-11-09 20:41:49'),
(10, 'Ivette', 'Acoztas', 'vazquez', 'Administrativo', '1234', '1234', '2019-11-09 20:42:07', '2019-11-09 20:42:07'),
(11, 'Juan', 'Pacheco', 'Pacheco', 'Docente', '1234', '1234', '2019-11-12 04:03:34', '2019-11-12 04:03:34'),
(12, 'luis', 'mendez', 'jimenez', 'Docente', '1234', '1234', '2019-11-12 04:04:06', '2019-11-12 04:04:06'),
(13, 'fernando', 'lopez', 'Perez', 'Docente', '1234', '1234', '2019-11-12 04:04:25', '2019-11-12 04:04:25'),
(14, 'marisol', 'Acoztas', 'Landa', 'Docente', '1234', '1234', '2019-11-12 04:05:05', '2019-11-12 04:05:05'),
(15, 'rosario', 'martinez', 'martinez', 'Docente', '1234', '1234', '2019-11-12 04:06:12', '2019-11-12 04:06:12'),
(16, 'rodrigo', 'hernandez', 'hernandez', 'Docente', '1234', '1234', '2019-11-12 04:06:41', '2019-11-12 04:06:41'),
(17, 'adrian', 'lopez', 'lopez', 'Docente', '1234', '1234', '2019-11-12 04:06:57', '2019-11-12 04:06:57'),
(18, 'frsdy', 'diamian', 'lopez', 'Docente', 'u', '1234', '2019-11-12 04:07:36', '2019-11-12 04:07:36'),
(19, 'miguel', 'lopez', 'lopez', 'Administrativo', '1234', '1234', '2019-11-12 04:08:14', '2019-11-12 04:08:14'),
(20, 'pedro', 'martinez', 'Perez', 'Administrativo', '1234', '1234', '2019-11-12 04:08:35', '2019-11-12 04:08:35'),
(22, 'maria', 'Acoztas', 'Landa', 'Administrativo', '1234', '1234', '2019-11-12 04:09:20', '2019-11-12 04:09:20'),
(23, 'josefa', 'gongora', 'Perez', 'Administrativo', '982', '1234', '2019-11-12 04:09:58', '2019-11-12 04:09:58'),
(24, 'sebastian', 'pech', 'Perez', 'Administrativo', '1234', '1234', '2019-11-12 04:10:22', '2019-11-12 04:10:22'),
(25, 'alex', 'Perez', 'Perez', 'Administrativo', '1234', '1234', '2019-11-12 04:10:47', '2019-11-12 04:10:47'),
(26, 'angel', 'Perez', 'Perez', 'Administrativo', '1234', '1234', '2019-11-12 04:10:59', '2019-11-12 04:10:59'),
(27, 'carlos', 'Perez', 'Perez', 'Administrativo', 'alberto', '1234', '2019-11-12 04:11:26', '2019-11-12 04:11:26');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seguimientos_usuarios_id_foreign` (`usuarios_id`),
  ADD KEY `seguimientos_cuestionarios_id_foreign` (`cuestionarios_id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuestionarios`
--
ALTER TABLE `cuestionarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `seguimientos`
--
ALTER TABLE `seguimientos`
  ADD CONSTRAINT `seguimientos_cuestionarios_id_foreign` FOREIGN KEY (`cuestionarios_id`) REFERENCES `cuestionarios` (`id`),
  ADD CONSTRAINT `seguimientos_usuarios_id_foreign` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
