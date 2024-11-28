-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2024 a las 23:17:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventariosdca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacenes`
--

CREATE TABLE `almacenes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `almacenes`
--

INSERT INTO `almacenes` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'almacen 1', '2024-11-27 08:05:12', '2024-11-28 02:44:44'),
(2, 'almacen 2', '2024-11-27 08:05:25', '2024-11-27 08:05:25'),
(8, 'Almacen Ropa', '2024-11-28 02:23:30', '2024-11-28 02:23:30'),
(9, 'Almacen 3', '2024-11-28 02:51:33', '2024-11-28 02:51:53'),
(12, 'Almacen 4', '2024-11-28 02:55:59', '2024-11-28 03:24:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('angela1@gmail.com|127.0.0.1', 'i:1;', 1732743500),
('angela1@gmail.com|127.0.0.1:timer', 'i:1732743500;', 1732743500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paciente_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `enfermero_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `monto` decimal(8,2) NOT NULL,
  `pagada` varchar(255) DEFAULT NULL,
  `talla` varchar(255) DEFAULT NULL,
  `temperatura` decimal(8,2) DEFAULT NULL,
  `saturacion_oxigeno` decimal(8,2) DEFAULT NULL,
  `frecuencia_cardiaca` varchar(255) DEFAULT NULL,
  `peso` decimal(8,2) DEFAULT NULL,
  `tension_arterial` varchar(255) DEFAULT NULL,
  `receta` varchar(255) DEFAULT NULL,
  `diagnostico` varchar(255) DEFAULT NULL,
  `alergias` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `estado` varchar(255) NOT NULL DEFAULT 'Sin terminar'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `paciente_id`, `doctor_id`, `enfermero_id`, `fecha`, `hora`, `motivo`, `observaciones`, `monto`, `pagada`, `talla`, `temperatura`, `saturacion_oxigeno`, `frecuencia_cardiaca`, `peso`, `tension_arterial`, `receta`, `diagnostico`, `alergias`, `created_at`, `updated_at`, `estado`) VALUES
(1, 2, 4, NULL, '2024-06-14', '22:00:00', 'Dolor muscular', 'qqewe', 123.00, '0', '165', 31.00, 81.00, '123', 36.00, '123/12', 'sdfghjk\r\nubhjnsdkdgmhfljghk\r\nParacetamolmol - Cantidad: 2, Frecuencia: 8 hrs', 'dghjkl', 'asdfg', '2024-06-07 16:11:57', '2024-08-12 14:34:48', 'Terminada'),
(3, 2, 4, NULL, '2024-06-21', '23:00:00', 'Dolor muscular', 'bhj', 123.00, '0', '163', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjkvghBASFDFcvbn\r\nse actualizo???\r\nveamossssssssss\r\nParacetamolmol - Cantidad: 12, Frecuencia: 12', 'dghjkl', 'asdfg', '2024-06-07 17:26:42', '2024-08-12 15:08:51', 'Terminada'),
(4, 2, 4, NULL, '2024-06-06', '23:30:00', 'Dolor muscular', 'se cayo', 123.00, '0', '162', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk\r\nahsjkdfgfhgjh', 'dghjkl', 'asdfg', '2024-06-07 17:47:44', '2024-08-12 15:09:34', 'Terminada'),
(5, 4, 4, NULL, '2024-06-21', '18:30:00', 'se cayo tambien', 'necesita algo lol', 123.00, '0', '165', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-06-09 12:36:29', '2024-06-09 12:36:29', 'Sin terminar'),
(6, 1, 4, NULL, '2024-07-05', '23:00:00', 'as', 'as', 123.00, '0', '164', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-06-24 11:28:38', '2024-08-12 10:20:35', 'Terminada'),
(7, 1, 4, NULL, '2024-07-05', '23:00:00', 'as', 'as', 123.00, '0', '165', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-06-24 11:28:52', '2024-08-12 10:20:19', 'Terminada'),
(11, 2, 4, NULL, '2024-07-06', '16:30:00', 'Cita general', 'a', 123.00, '0', '166', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-07-05 14:00:28', '2024-08-12 10:20:10', 'Terminada'),
(12, 4, 4, NULL, '2024-08-14', '09:30:00', 'sdfghj', 'adsfdgf', 4545.00, '0', '134', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-07-08 20:24:04', '2024-08-12 10:18:52', 'Terminada'),
(13, 1, 4, NULL, '2024-07-10', '11:00:00', 'addd', 'addd', 12345.00, '0', '160', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-07-09 11:51:41', '2024-08-12 10:18:43', 'Terminada'),
(14, 1, 4, NULL, '2024-07-13', '11:00:00', 'asd', 'adsdxgyhu87tjokm', 123.00, '0', '124', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-07-12 21:57:42', '2024-08-12 09:59:34', 'Terminada'),
(15, 4, 4, NULL, '2024-07-15', '07:00:00', 'se cayó', ',s,s', 100.00, '0', '156', 90.00, 99.00, '99', 11.00, '88', 'sdfghjk', 'dghjkl', 'asdfg', '2024-07-15 20:15:03', '2024-08-12 09:59:23', 'Terminada'),
(16, 4, 4, NULL, '2024-07-18', '09:00:00', 'se cayó', '123.00', 100.00, '0', '188', 31.00, 81.00, '123', 34.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-07-18 20:20:08', '2024-08-12 09:58:23', 'Terminada'),
(17, 4, 4, NULL, '2024-07-20', '07:00:00', 'se cayó', 'qwertyui', 100.00, '0', '160', 35.00, 81.00, '123', 73.00, '123/12', 'sdfghjk', 'dghjkl', 'asdfg', '2024-07-19 20:37:47', '2024-08-12 09:57:56', 'Terminada'),
(18, 5, 4, NULL, '2024-08-21', '07:30:00', 'Consulta Gral.', '123.00', 300.00, '0', '180', 90.00, 2.00, '3', 89.00, '777/88', 'tome lo siguiente\r\nParacetamolmol - Cantidad: 1, Frecuencia: 8 horas', 'dghjkl', 'A todo', '2024-08-05 20:30:56', '2024-08-15 09:03:31', 'Terminada'),
(19, 2, 4, NULL, '2024-08-15', '08:00:00', 'dfgh', 'sdfbgn', 100.00, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 13:58:49', '2024-08-12 13:58:49', 'Sin terminar'),
(20, 4, 4, NULL, '2024-08-31', '07:00:00', 'cdvcbvgnb', 'dfbcgnhm', 100.00, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-12 14:00:46', '2024-08-15 09:04:35', 'Terminada'),
(24, 4, 4, NULL, '2024-08-17', '15:30:00', 'sdvfbgn', 'sdff', 100.00, '0', NULL, NULL, NULL, NULL, NULL, NULL, 'Paracetamol - Ingerir: 1, Toma cada: 3 horas\r\nAspirina - Ingerir: 1, Toma cada: 3 horas\r\n<szdxfghjukiollocvn bmhjoíhvmcvhjiopfhgqhwdkqwjld', NULL, NULL, '2024-08-12 14:20:06', '2024-08-15 09:00:33', 'Terminada'),
(27, 7, 4, NULL, '2024-08-23', '08:30:00', 'scdvcbb', 'dvcbvbn', 100.00, '0', '14', 13.00, 81.00, '123', 51.00, '234/56', 'zcxvbcgnv\r\nParacetamolmol - Cantidad: 2, Frecuencia: 8 hrs\r\nwertyj - Cantidad: 1, Frecuencia: 3 horas', 'xvcbvnbn', 'zxvfbcgnv', '2024-08-12 14:30:58', '2024-08-12 19:03:45', 'Terminada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cita_id` bigint(20) UNSIGNED NOT NULL,
  `alergias` text DEFAULT NULL,
  `receta` text DEFAULT NULL,
  `medicamento_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `frecuencia` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(24, '0001_01_01_000000_create_users_table', 1),
(25, '0001_01_01_000001_create_cache_table', 1),
(26, '0001_01_01_000002_create_jobs_table', 1),
(27, '2024_05_23_012708_create_pacientes_table', 1),
(28, '2024_06_07_033331_add_softdeletes_to_pacientes_table', 1),
(29, '2024_06_08_193251_add_is_admin_to_users_table', 1),
(30, '2024_06_09_004135_create_doctors_table', 1),
(31, '2024_06_09_032311_create_servicios_table', 1),
(32, '2024_07_12_080617_doctores_users_agregar_datos', 1),
(33, '2024_08_09_152349_create_medicamentos_table', 1),
(34, '2024_08_09_160210_create_cita_table', 1),
(35, '2024_08_09_163048_create_table_medicamentos', 1),
(36, '2024_08_11_095305_add_estado_to_citas_table', 1),
(37, '2024_08_12_075751_update_citas_table_nullable_fields', 2),
(38, '2024_08_12_082717_add_foreign_key_to_citas_table', 3),
(39, '2024_08_12_083027_update_foreign_key_for_paciente_id_in_citas_table', 4),
(40, '2024_08_15_002146_add_enfermero_id_to_citas_table', 5),
(42, '2024_11_27_013312_create_almacenes_table', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_p` varchar(255) NOT NULL,
  `apellido_m` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero_biologico` enum('Masculino','Femenino') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apellido_p`, `apellido_m`, `age`, `correo`, `telefono`, `fecha_nacimiento`, `genero_biologico`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'LAURA', 'MARTINEZ', 'FUENTES', '23 años', 'laura@upv.edu.mx', '8342451631', '2000-11-06', 'Femenino', '2024-06-14 19:54:52', '2024-08-15 04:52:12', NULL),
(2, 'Jacky', 'Fernandez', 'Cantu', '21 años', 'ertyu@upv.edu.mx', '1234567890', '2003-01-06', 'Femenino', '2024-06-07 15:42:31', '2024-08-07 19:27:01', NULL),
(4, 'ANGELA', 'MELENDEZ', 'MELENDEZ FUENTES', '19 años', '4667@up.edu.mx', '8342451633', '2005-06-16', 'Femenino', '2024-06-09 12:36:03', '2024-08-07 19:27:21', NULL),
(5, 'Don Juan', 'Ap1', 'Ap2', '11 años', 'demodemo@demo.com', '1231231231', '2013-05-14', 'Masculino', '2024-08-05 20:30:16', '2024-08-07 19:27:49', NULL),
(6, 'ANGELA', 'MARTINEZ', 'MELENDEZ FUENTES', '2 meses', 'guiu@upv.edu.mx', '8342451632', '2024-05-24', 'Femenino', '2024-08-07 08:04:42', '2024-08-07 08:04:42', NULL),
(7, 'NUEVO', 'NUEVO', 'MELENDEZ FUENTES', '1 meses', 'nuevo@upv.edu.mx', '8342451632', '2024-07-11', 'Masculino', '2024-08-12 14:20:38', '2024-08-12 14:20:38', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('cQQRmeZQPU22teMfGj1ovSUPOb2d0UCQfP68fOtQ', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiZHZnUHdxZm1jeUkyZjJXQ0R3bEt5SFVUazJqQWJBMUZFRURUamtOcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo0O30=', 1732745758);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `table_medicamentos`
--

CREATE TABLE `table_medicamentos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `tipo` enum('empleado','admin') DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `rfc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `tipo`, `remember_token`, `created_at`, `updated_at`, `telefono`, `rfc`) VALUES
(4, 'ANGELA MELENDEZ', 'angela@gmail.com', NULL, '$2y$12$IQ1Vk32i.Q/H8mntbJZCDuPWmHQwYguP39SXesqajfcfFJ8uPeZCq', 'admin', 'O8vg4uw8kNvbFYf7mo9OX0SFvgBg6pngeOrfhldNsorJgYc8FAFppeQisZuN', '2024-06-06 00:54:25', '2024-11-27 06:57:18', NULL, NULL),
(11, 'ANGIE MELENDEZ', 'angie@gmail.com', NULL, '$2y$12$IQ1Vk32i.Q/H8mntbJZCDuPWmHQwYguP39SXesqajfcfFJ8uPeZCq', 'empleado', NULL, '2024-11-28 03:26:52', '2024-11-28 04:08:16', '8342451633', 'TAK123312'),
(15, 'Damaris', 'damaris@gmail.com', NULL, '$2y$12$ChcnUwKRlPCNRgDu96DFrO.pggky8DhylChmOXcs723EhupxeWDKq', 'empleado', NULL, '2024-11-28 04:14:17', '2024-11-28 04:14:17', '8341111111', 'damaris01'),
(16, 'Jesus', 'chuy@gmail.com', NULL, '$2y$12$j54aq1Ppx//KgMg82OQ7vu9V/OgKJvrCvESUm.PZH50J/YaI3Sw0y', 'empleado', NULL, '2024-11-28 04:14:57', '2024-11-28 04:14:57', '8340000000', 'Jesus03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citas_doctor_id_foreign` (`doctor_id`),
  ADD KEY `citas_paciente_id_foreign` (`paciente_id`),
  ADD KEY `citas_enfermero_id_foreign` (`enfermero_id`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `table_medicamentos`
--
ALTER TABLE `table_medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacenes`
--
ALTER TABLE `almacenes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `table_medicamentos`
--
ALTER TABLE `table_medicamentos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `citas_enfermero_id_foreign` FOREIGN KEY (`enfermero_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `citas_paciente_id_foreign` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
