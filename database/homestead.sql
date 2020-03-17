-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-02-2020 a las 21:06:05
-- Versión del servidor: 8.0.18
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `homestead`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'aut', 'Ratione sint sit labore voluptates quis mollitia. Ut sit quia velit error quaerat sed et.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(2, 'nulla', 'Ratione culpa qui eos ea earum id. Et quod qui natus cum.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(3, 'dolorum', 'Esse in est nostrum. Adipisci minima recusandae aut quisquam maxime.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(4, 'sequi', 'Impedit eos rem placeat quibusdam eveniet non eum. Omnis consequuntur excepturi provident tempore fugit quisquam est.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(5, 'nobis', 'Vel ipsam eligendi est et enim ad placeat.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(6, 'nobis', 'Fugiat ipsa libero rerum esse minus ut libero. Est blanditiis ratione modi veniam.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(7, 'fugiat', 'Ab nihil ea et fugiat explicabo molestiae.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(8, 'voluptatem', 'Atque quibusdam incidunt possimus quia sint minima ut.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(9, 'expedita', 'Voluptatem tempora harum dicta dolor et.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(10, 'vel', 'Fuga magnam itaque sit aut illum. Quis sit odio harum atque iure ipsa.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(11, 'doloremque', 'Laborum voluptatem quas sit. Facilis non qui itaque neque qui quam ea.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(12, 'eos', 'Ea ut sunt eaque sequi. Eos aut qui quia iure quibusdam.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(13, 'aspernatur', 'Vel omnis eligendi quam repellat aperiam aspernatur. Recusandae consequatur magnam animi soluta asperiores non.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(14, 'ut', 'Dolorum quia similique quos a blanditiis. Est eum voluptas rerum repellat corporis mollitia dolor.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(15, 'qui', 'Enim quae in id quis ea. Repudiandae ut eius et ipsam voluptatem.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(16, 'aut', 'Quibusdam quibusdam omnis unde nobis.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(17, 'dolorem', 'Corporis id saepe explicabo et eos praesentium alias.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(18, 'aut', 'Eum voluptates officiis ducimus quas quae a. Dicta voluptas dolores soluta cupiditate occaecati accusamus nesciunt vitae.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(19, 'molestiae', 'Nostrum et architecto sed voluptas.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(20, 'tempora', 'Aut iure omnis culpa provident ut nisi numquam commodi. Laboriosam quia magnam deserunt velit eligendi magnam voluptatem.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(21, 'reiciendis', 'Rem accusamus consequatur est dicta quasi. Incidunt eius beatae fugiat pariatur illum ut consectetur.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(22, 'optio', 'Et possimus ut voluptates assumenda consequatur.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(23, 'aperiam', 'Ad voluptatem non sit qui quibusdam vel.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(24, 'voluptatem', 'Culpa cumque quis ea voluptas ut vel. Magnam illum cum recusandae ducimus voluptates quis.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(25, 'molestias', 'Doloribus facilis voluptate iste eaque natus sed consequatur unde.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(26, 'nemo', 'Eos voluptate et quod omnis totam ab. Ad natus consequuntur asperiores magni.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(27, 'sit', 'Vel veniam quos ut aut minus.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(28, 'sapiente', 'Expedita quo ad quo et perferendis asperiores nemo nostrum. Dolores dolorem aut consequatur ut.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(29, 'amet', 'Rem et delectus praesentium temporibus.', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(30, 'excepturi', 'Est et sequi accusantium est perferendis.', '2020-02-19 02:09:28', '2020-02-19 02:09:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE IF NOT EXISTS `category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  KEY `category_product_category_id_foreign` (`category_id`),
  KEY `category_product_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(3, 1),
(18, 1),
(1, 2),
(2, 2),
(6, 2),
(22, 2),
(26, 2),
(3, 3),
(10, 3),
(11, 3),
(28, 3),
(20, 4),
(23, 4),
(14, 5),
(28, 5),
(2, 6),
(5, 6),
(12, 6),
(19, 6),
(5, 7),
(13, 7),
(15, 7),
(5, 8),
(9, 8),
(16, 8),
(19, 8),
(22, 8),
(5, 9),
(14, 9),
(22, 9),
(23, 9),
(28, 9),
(14, 10),
(9, 11),
(11, 11),
(24, 11),
(7, 12),
(13, 12),
(16, 12),
(14, 13),
(15, 13),
(18, 13),
(20, 13),
(22, 13),
(1, 14),
(3, 14),
(7, 14),
(27, 14),
(1, 15),
(2, 16),
(13, 16),
(17, 16),
(1, 17),
(12, 17),
(2, 18),
(3, 18),
(5, 18),
(23, 18),
(2, 19),
(12, 19),
(13, 19),
(15, 19),
(9, 20),
(17, 20),
(18, 20),
(24, 20),
(28, 20),
(5, 21),
(6, 21),
(23, 22),
(29, 23),
(15, 24),
(9, 25),
(20, 25),
(27, 25),
(2, 26),
(16, 26),
(23, 26),
(28, 26),
(11, 27),
(14, 27),
(15, 27),
(24, 27),
(29, 27),
(13, 28),
(3, 29),
(4, 29),
(14, 29),
(17, 29),
(29, 29),
(15, 30),
(20, 30),
(18, 31),
(3, 32),
(9, 33),
(10, 33),
(13, 33),
(10, 34),
(2, 35),
(29, 35),
(30, 36),
(22, 37),
(24, 37),
(3, 38),
(6, 38),
(21, 39),
(6, 40),
(8, 40),
(11, 40),
(18, 40),
(1, 41),
(3, 41),
(17, 41),
(24, 41),
(27, 41),
(29, 42),
(11, 43),
(13, 43),
(18, 43),
(12, 44),
(19, 44),
(17, 45),
(29, 45),
(7, 46),
(8, 46),
(15, 47),
(16, 47),
(5, 48),
(12, 48),
(24, 48),
(5, 49),
(7, 49),
(8, 49),
(15, 49),
(24, 49),
(16, 50),
(26, 50),
(11, 51),
(19, 51),
(25, 51),
(26, 51),
(30, 51),
(11, 52),
(21, 52),
(8, 53),
(11, 53),
(15, 53),
(18, 53),
(26, 53),
(8, 54),
(10, 54),
(29, 54),
(10, 55),
(12, 55),
(13, 55),
(18, 55),
(24, 55),
(9, 56),
(12, 56),
(27, 56),
(4, 57),
(5, 57),
(12, 57),
(17, 57),
(25, 57),
(14, 58),
(19, 58),
(20, 58),
(22, 58),
(8, 59),
(9, 59),
(17, 59),
(21, 59),
(25, 59),
(16, 60),
(9, 61),
(20, 61),
(22, 61),
(25, 61),
(5, 62),
(22, 62),
(5, 63),
(11, 63),
(14, 63),
(18, 63),
(24, 63),
(21, 64),
(24, 64),
(1, 65),
(8, 65),
(9, 65),
(3, 66),
(5, 66),
(16, 66),
(17, 66),
(1, 67),
(25, 67),
(3, 68),
(1, 69),
(13, 69),
(18, 69),
(25, 69),
(12, 70),
(13, 70),
(14, 70),
(27, 70),
(15, 71),
(16, 71),
(18, 71),
(20, 71),
(28, 71),
(18, 72),
(22, 72),
(28, 72),
(29, 72),
(4, 73),
(9, 73),
(19, 73),
(12, 74),
(13, 74),
(24, 75),
(25, 75),
(29, 75),
(30, 75),
(2, 76),
(13, 76),
(18, 76),
(24, 76),
(29, 76),
(2, 77),
(4, 77),
(10, 77),
(12, 77),
(25, 77),
(2, 78),
(6, 78),
(19, 78),
(28, 78),
(1, 79),
(10, 79),
(26, 79),
(29, 80),
(30, 80),
(21, 81),
(8, 82),
(26, 82),
(11, 83),
(27, 83),
(20, 84),
(10, 85),
(11, 85),
(25, 85),
(26, 85),
(29, 85),
(22, 86),
(7, 87),
(14, 88),
(2, 89),
(20, 89),
(22, 89),
(28, 89),
(5, 90),
(9, 90),
(18, 90),
(23, 90),
(28, 90),
(9, 91),
(13, 91),
(15, 91),
(16, 91),
(20, 91),
(3, 92),
(4, 92),
(13, 92),
(23, 92),
(11, 93),
(15, 93),
(12, 94),
(28, 94),
(4, 95),
(24, 95),
(16, 96),
(21, 96),
(29, 96),
(4, 97),
(11, 97),
(18, 97),
(7, 98),
(1, 99),
(26, 99),
(29, 99),
(30, 99),
(23, 100),
(25, 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2014_10_12_000000_create_users_table', 1),
(16, '2014_10_12_100000_create_password_resets_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2020_01_24_182236_create_products_table', 1),
(19, '2020_01_24_182403_create_transactions_table', 1),
(20, '2020_01_24_182428_create_categories_table', 1),
(21, '2020_01_27_173034_category_product_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no disponible',
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_seller_id_foreign` (`seller_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `description`, `name`, `quantity`, `created_at`, `updated_at`, `status`, `image`, `seller_id`) VALUES
(1, 'Ex eos aut rem nisi nisi.', 'enim', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 9),
(2, 'Dolorum voluptatum minus ratione blanditiis et. Nostrum ullam qui aspernatur modi.', 'nobis', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 5),
(3, 'Blanditiis ipsam sit eveniet nisi. Provident necessitatibus cum deserunt tempore voluptas molestiae est beatae.', 'culpa', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 10),
(4, 'Nobis cupiditate molestiae earum saepe.', 'adipisci', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 8),
(5, 'Consequatur voluptas quia enim provident. Aspernatur facere ut earum sit iure corrupti distinctio.', 'consectetur', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 7),
(6, 'Earum excepturi et asperiores consequatur et cupiditate commodi.', 'voluptatem', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 1),
(7, 'Et fugit tempora et id expedita natus eligendi.', 'deleniti', 4, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 13),
(8, 'Officiis aut in dolorum blanditiis ut id pariatur aut.', 'provident', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 10),
(9, 'Atque quisquam tempore voluptate hic architecto. Cumque repudiandae et vitae cum.', 'ut', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 14),
(10, 'Quia reiciendis id quis laboriosam.', 'quia', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 4),
(11, 'Labore eius ut sed neque provident sed consequatur. Minus necessitatibus qui optio libero provident iure.', 'ea', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 5),
(12, 'Animi nihil velit accusantium assumenda cupiditate ut. Ut molestiae similique optio et fugit.', 'quae', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 10),
(13, 'Placeat doloremque quo illum ut nam omnis.', 'voluptas', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 3),
(14, 'Similique deserunt dicta qui voluptatem quam. Illum excepturi aut quia dignissimos dolores veniam illum consequuntur.', 'velit', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 7),
(15, 'Id assumenda asperiores quia facilis illum eaque. Accusamus ut nam voluptas ut laboriosam ut aut doloremque.', 'illo', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 3),
(16, 'Qui voluptas ratione voluptatibus ea fuga. Impedit magni iusto non et.', 'enim', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 3),
(17, 'Est voluptatem magnam eos eum dolorem.', 'tenetur', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 20),
(18, 'Quisquam in nostrum soluta ducimus.', 'eaque', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 5),
(19, 'Nulla ut rerum dolor sed reiciendis veritatis. Iure assumenda necessitatibus nihil cupiditate animi quia fugit.', 'aliquam', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 10),
(20, 'Sed voluptatem numquam possimus enim. Exercitationem quo labore hic aut quis.', 'odio', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 11),
(21, 'Unde quos magni aut. Qui a laboriosam suscipit.', 'dolores', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 18),
(22, 'Voluptatum dignissimos nihil et dolores.', 'voluptas', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 2),
(23, 'Neque eos eum nobis impedit quod consequatur fugiat.', 'accusamus', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 13),
(24, 'Cum dolorem qui doloribus ipsum provident officia. Officia earum aut minima ut consequatur autem inventore.', 'assumenda', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 8),
(25, 'Molestiae omnis excepturi amet culpa. Temporibus temporibus cupiditate tempore dolore rerum.', 'voluptatem', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 14),
(26, 'Pariatur ea ratione voluptatem aspernatur possimus.', 'dolorem', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 17),
(27, 'Mollitia aut molestiae eos neque. Perferendis sint pariatur veritatis expedita nemo ratione consequatur.', 'nemo', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 14),
(28, 'Veritatis est et consequatur fugiat non. Voluptatem ducimus dolor quo non.', 'est', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 2),
(29, 'Amet consequatur ipsum eligendi nihil.', 'qui', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 5),
(30, 'Accusamus voluptas amet enim occaecati velit ut officiis amet. Est dolor maiores accusamus quidem nulla.', 'veniam', 4, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 1),
(31, 'Maxime accusamus non voluptatem amet voluptatem.', 'voluptate', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 9),
(32, 'Reiciendis quis quibusdam quas fugiat soluta et. Illum ipsam alias consectetur dolorum sit libero quia.', 'eos', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 14),
(33, 'Voluptatem laborum minima autem distinctio omnis dicta deserunt ut.', 'inventore', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 9),
(34, 'Saepe occaecati est qui. Esse atque minus ex nesciunt excepturi culpa.', 'et', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 15),
(35, 'Harum aut ea amet unde earum. Suscipit a nihil reiciendis animi amet architecto.', 'sit', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 18),
(36, 'Omnis accusantium excepturi qui ut. Sed voluptatem iusto est quia et molestias debitis.', 'natus', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 4),
(37, 'Doloremque quis molestiae perspiciatis ex praesentium laborum. Exercitationem quis dolor quas nisi iusto sit nihil.', 'ea', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 1),
(38, 'Enim dolores nihil consequatur et rem quia et. Qui optio tempore autem.', 'et', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 15),
(39, 'Quos sunt fugiat velit at.', 'animi', 4, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 14),
(40, 'Sed magni asperiores molestiae qui aut ea. Quos illo laborum rerum.', 'ut', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 18),
(41, 'Et quibusdam ad dicta non facere. Suscipit exercitationem qui impedit fugiat corrupti iste.', 'deleniti', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 6),
(42, 'Doloribus et modi tempora aut nam ullam.', 'in', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 12),
(43, 'At officia nobis et nostrum libero dolorum ea.', 'pariatur', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 1),
(44, 'Id similique sit et perspiciatis est officia odit minus. Doloribus ad corrupti aut vitae non nostrum.', 'nisi', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 14),
(45, 'Eaque animi ducimus recusandae dolores autem laboriosam.', 'adipisci', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 8),
(46, 'Labore fugit ex magni ut.', 'quae', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 3),
(47, 'In natus qui rerum laborum in rerum.', 'assumenda', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 8),
(48, 'Voluptatem totam quam facere. Sit esse nisi velit eaque omnis iste velit ut.', 'quia', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 11),
(49, 'Itaque repellendus quae sit ut ut animi quos. Omnis nihil incidunt dolorem.', 'sunt', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 12),
(50, 'Molestiae enim perspiciatis perferendis et a eligendi dolorem facere.', 'labore', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 12),
(51, 'Non et eligendi ullam et ad dolorem assumenda.', 'harum', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 14),
(52, 'Et dolorem commodi quas velit aliquid nihil. Dolorum laboriosam et doloremque.', 'quia', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 18),
(53, 'In facere ullam culpa debitis maiores. Quas maxime laudantium quidem dolorem excepturi.', 'aut', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 18),
(54, 'Sint et labore ratione dolor.', 'doloribus', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 9),
(55, 'Illo dolorem laborum sint ut sint eveniet. Ex iure accusantium et molestiae aperiam debitis.', 'molestiae', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 15),
(56, 'Sit officia eius iste ex quia commodi. Aliquid ipsam aliquid et sapiente aperiam necessitatibus qui.', 'voluptatum', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 2),
(57, 'Corporis voluptatem iste ea minus. Error sed doloribus in necessitatibus nihil occaecati ea.', 'quidem', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 13),
(58, 'Quia laboriosam voluptatem ut recusandae. Autem eos incidunt sed dolores.', 'repellendus', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 2),
(59, 'Et et est ratione atque. Mollitia est aut velit sit labore voluptatem.', 'illum', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 5),
(60, 'Esse vel quibusdam architecto labore fuga quam architecto. Ullam recusandae impedit nihil ullam maiores temporibus consequatur.', 'accusantium', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 4),
(61, 'Ipsam hic sit provident aliquam excepturi doloremque.', 'suscipit', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 4),
(62, 'Labore perspiciatis laudantium delectus quis est explicabo neque.', 'voluptas', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 2),
(63, 'Fuga et velit eos blanditiis ipsum sunt. In ut corrupti qui deleniti.', 'ullam', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 1),
(64, 'Aut est dolorum amet tempora.', 'ea', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 16),
(65, 'Et enim nihil aut libero consequatur nisi dolores earum. Quis laboriosam et at cupiditate blanditiis.', 'error', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 8),
(66, 'Blanditiis quaerat quia ad. Veniam saepe magnam et ut amet minima.', 'quia', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 18),
(67, 'Fuga vel sapiente et eum.', 'consectetur', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 12),
(68, 'Libero laborum accusantium est maiores assumenda aut totam.', 'ut', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 18),
(69, 'Ipsam officiis eum voluptas.', 'et', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 19),
(70, 'Ipsum molestiae eveniet hic omnis autem itaque. Est ullam qui deserunt eos laudantium aspernatur.', 'nisi', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 12),
(71, 'Necessitatibus similique est aperiam dolores cupiditate.', 'quos', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 4),
(72, 'Est autem adipisci ut in illum laborum.', 'pariatur', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 8),
(73, 'Aut sint itaque et cum asperiores. Harum necessitatibus est unde.', 'corrupti', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 16),
(74, 'Id numquam et quo accusantium reiciendis exercitationem magni.', 'beatae', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 3),
(75, 'Sint neque aut numquam qui et esse. Distinctio est aut quo similique.', 'reiciendis', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 14),
(76, 'Ut maxime suscipit qui nobis sed corporis placeat.', 'ipsam', 3, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 8),
(77, 'Et quo perspiciatis quia explicabo voluptatem accusamus. Ab sapiente est dolorum magni recusandae rerum earum.', 'dicta', 9, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 20),
(78, 'Quo et est ipsum tempore amet aperiam.', 'itaque', 4, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 20),
(79, 'Harum qui aut culpa minus voluptate.', 'laudantium', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 11),
(80, 'Quisquam dolor officiis quo. Quo eum omnis quos nemo quia omnis.', 'optio', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 10),
(81, 'Ipsam quis debitis nihil quas. Suscipit et et qui consequatur quia.', 'aut', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 2),
(82, 'Quod vel consequatur dolore est aut.', 'fugiat', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 6),
(83, 'Fuga repudiandae molestiae aut consequatur eum harum occaecati maiores. Perferendis quos eos saepe aut iure saepe.', 'natus', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 11),
(84, 'Reiciendis accusantium nemo dolorem tempore omnis. Cum quaerat aperiam distinctio atque.', 'et', 10, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 15),
(85, 'Molestias qui sint asperiores reprehenderit nam sint et. Exercitationem perferendis ut rerum nemo vel saepe sapiente.', 'excepturi', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 15),
(86, 'Maxime et deserunt aut et.', 'sunt', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 9),
(87, 'Inventore expedita ab odit esse eveniet tempora.', 'voluptate', 5, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 18),
(88, 'Provident aut quidem illo. Esse quos modi consectetur eveniet cumque.', 'in', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 7),
(89, 'Et excepturi soluta eos.', 'quis', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 4),
(90, 'Voluptatem numquam temporibus dicta autem quam minima. Quos maiores dicta quam sit.', 'eum', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'uno.jpg', 10),
(91, 'Unde eos id cum et ea.', 'rem', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'dos,jpg', 18),
(92, 'Qui accusantium corrupti sunt rerum. Nisi quas aut voluptates dolores consequuntur quia.', 'voluptates', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 7),
(93, 'Sit autem quisquam doloremque aperiam consectetur quia optio. Sed eligendi deleniti ipsum.', 'deleniti', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 8),
(94, 'Ipsa sit totam odit veniam.', 'qui', 4, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 20),
(95, 'Sunt et nam similique et quo molestiae distinctio. Aut dolorum excepturi non atque eum recusandae.', 'ratione', 8, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 10),
(96, 'Repellat veniam quis sit architecto perferendis voluptatem. Enim quisquam rem est sed molestiae illo porro.', 'omnis', 1, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 5),
(97, 'Dolorum perferendis et cumque harum quas eveniet illum. Cupiditate qui quisquam alias pariatur minus et voluptatibus.', 'ex', 2, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'tres.jpg', 20),
(98, 'Pariatur non corporis maiores cupiditate.', 'quia', 4, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'dos,jpg', 20),
(99, 'Et unde optio molestiae et rerum sint.', 'tempore', 6, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'disponible', 'uno.jpg', 1),
(100, 'Molestiae nam eum sit esse dolorum. Explicabo ea vero quo itaque.', 'quod', 7, '2020-02-19 02:09:28', '2020-02-19 02:09:28', 'no disponible', 'tres.jpg', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_buyer_id_foreign` (`buyer_id`),
  KEY `transactions_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `transactions`
--

INSERT INTO `transactions` (`id`, `quantity`, `buyer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 7, 97, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(2, 1, 10, 93, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(3, 1, 8, 70, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(4, 3, 20, 59, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(5, 2, 1, 57, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(6, 3, 9, 64, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(7, 2, 6, 57, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(8, 1, 9, 94, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(9, 1, 16, 76, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(10, 1, 9, 26, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(11, 1, 18, 94, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(12, 1, 13, 41, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(13, 1, 17, 34, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(14, 3, 10, 40, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(15, 1, 14, 38, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(16, 3, 12, 69, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(17, 3, 13, 82, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(18, 3, 2, 14, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(19, 1, 9, 92, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(20, 2, 17, 44, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(21, 2, 7, 11, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(22, 3, 13, 27, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(23, 3, 6, 72, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(24, 2, 4, 33, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(25, 3, 15, 65, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(26, 3, 8, 83, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(27, 2, 19, 7, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(28, 1, 17, 18, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(29, 3, 20, 47, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(30, 3, 11, 10, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(31, 1, 17, 47, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(32, 2, 3, 18, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(33, 3, 17, 16, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(34, 2, 20, 18, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(35, 1, 6, 77, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(36, 2, 1, 50, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(37, 2, 3, 26, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(38, 1, 1, 60, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(39, 3, 13, 56, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(40, 3, 3, 70, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(41, 3, 10, 37, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(42, 2, 12, 41, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(43, 1, 4, 69, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(44, 2, 10, 16, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(45, 3, 15, 82, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(46, 2, 18, 75, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(47, 1, 2, 90, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(48, 2, 16, 66, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(49, 1, 2, 57, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(50, 3, 20, 8, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(51, 1, 18, 58, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(52, 3, 10, 23, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(53, 1, 7, 79, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(54, 3, 9, 96, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(55, 3, 1, 28, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(56, 2, 16, 12, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(57, 1, 9, 21, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(58, 2, 5, 91, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(59, 3, 9, 72, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(60, 1, 19, 6, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(61, 1, 1, 39, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(62, 2, 7, 51, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(63, 1, 17, 6, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(64, 3, 11, 56, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(65, 3, 8, 73, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(66, 2, 8, 97, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(67, 2, 1, 48, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(68, 1, 1, 91, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(69, 3, 3, 7, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(70, 3, 16, 63, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(71, 2, 19, 42, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(72, 1, 15, 20, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(73, 1, 1, 82, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(74, 2, 10, 73, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(75, 2, 5, 56, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(76, 1, 10, 10, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(77, 2, 1, 83, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(78, 2, 1, 16, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(79, 3, 1, 80, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(80, 3, 15, 100, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(81, 3, 8, 61, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(82, 2, 1, 19, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(83, 1, 19, 33, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(84, 1, 13, 28, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(85, 2, 11, 41, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(86, 2, 9, 77, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(87, 1, 4, 47, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(88, 2, 16, 69, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(89, 2, 11, 69, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(90, 1, 20, 82, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(91, 3, 12, 76, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(92, 2, 9, 14, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(93, 1, 5, 75, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(94, 1, 16, 83, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(95, 1, 13, 55, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(96, 3, 10, 27, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(97, 3, 13, 42, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(98, 2, 8, 5, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(99, 1, 12, 91, '2020-02-19 02:09:29', '2020-02-19 02:09:29'),
(100, 3, 5, 79, '2020-02-19 02:09:29', '2020-02-19 02:09:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verification_token` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'false',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `verified`, `verification_token`, `admin`, `created_at`, `updated_at`) VALUES
(1, 'Maximillian Cummings', 'frida.gutmann@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cMHhCcWrLT', '0', 'dgH5xrSCC5fAzZImC6fjPklemUg3K2eGVnDqQqp3', 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(2, 'Melissa Beier', 'eleazar57@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vk91Az2ggU', '0', '6J86wOBmQJJ6aQY4qmPkTKxSn8AuSg7oR8Zu4g6e', 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(3, 'Jeanne Langosh', 'ova.ryan@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd7ajJU254g', '0', 'Z9AjwZoWuv8ezd2Xiluaj8UL5lPT9Kh61Mr9MZHC', 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(4, 'Enrique Johnston Sr.', 'bhodkiewicz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zuUOBhomwZ', '1', NULL, 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(5, 'Berniece Kozey', 'gracie.rodriguez@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NHU24AL7fB', '1', NULL, 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(6, 'Gordon Heller', 'ndouglas@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eeB5t9zWno', '0', 'ayoZltNAYPwOO9DXwqs5eKHC2UgSmV1xDwgUIlk3', 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(7, 'Rodolfo Mohr', 'corkery.mortimer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rXllBnWMV3', '1', NULL, 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(8, 'Miss Ebony Christiansen', 'bweimann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fEtAUPAhY5', '1', NULL, 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(9, 'Prof. Mekhi Littel III', 'alexa83@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HwByTDLUxH', '1', NULL, 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(10, 'Billie Gusikowski II', 'gconn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N9BiFGIeKL', '0', 'zgO6RMbbzNfPsTQwbJ44TgzCKvw8sTRzhANFxpKq', 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(11, 'Prof. Brady Pfannerstill', 'cwyman@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h3T24BIZIO', '0', 'gFC2TSE2gWR8QwTzNCPf8b5ayHc3bmzPb5vJFvYt', 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(12, 'Ms. Gia Cole', 'retta.hammes@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6CxgHyfz15', '1', NULL, 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(13, 'Dayne Ernser', 'mallory78@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5jpmfdshd6', '1', NULL, 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(14, 'Nella Ritchie', 'zulauf.delta@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2gHqDtiN1i', '1', NULL, 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(15, 'Ms. Alysson Zulauf Jr.', 'klemke@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K7scEM5f4W', '1', NULL, 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(16, 'Fae Kautzer I', 'ngleason@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ayzOPNSjv', '0', 'afZqRkFgDivKxfhUSPcx0kMwUP9EeeBtINg5MpYT', 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(17, 'Otho Kohler', 'ucruickshank@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FTy2AWNO5u', '1', NULL, 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(18, 'Susie dtehr', 'corrine.daugherty@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '81imtZU2bc', '0', '2Ghf1IwMOzDemblAI4eCFNBI6yQ3dqY5AM6iwYsb', 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(19, 'Abigail sonnelly', 'zschultz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lMsIeAvjLz', '1', NULL, 'false', '2020-02-19 02:09:28', '2020-02-19 02:09:28'),
(20, 'Maya Wunsch', 'hkohler@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'odp2R3loLL', '0', 'znL6ChWr1zisMPmdubsMXFx11zlhXzvXsZafYov6', 'true', '2020-02-19 02:09:28', '2020-02-19 02:09:28');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
