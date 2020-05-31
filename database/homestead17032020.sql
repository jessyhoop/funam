/*
Navicat MySQL Data Transfer

Source Server         : funam
Source Server Version : 80018
Source Host           : localhost:3306
Source Database       : homestead

Target Server Type    : MYSQL
Target Server Version : 80018
File Encoding         : 65001

Date: 2020-03-17 10:16:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'aut', 'Ratione sint sit labore voluptates quis mollitia. Ut sit quia velit error quaerat sed et.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('2', 'nulla', 'Ratione culpa qui eos ea earum id. Et quod qui natus cum.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('3', 'dolorum', 'Esse in est nostrum. Adipisci minima recusandae aut quisquam maxime.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('4', 'sequi', 'Impedit eos rem placeat quibusdam eveniet non eum. Omnis consequuntur excepturi provident tempore fugit quisquam est.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('5', 'nobis', 'Vel ipsam eligendi est et enim ad placeat.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('6', 'nobis', 'Fugiat ipsa libero rerum esse minus ut libero. Est blanditiis ratione modi veniam.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('7', 'fugiat', 'Ab nihil ea et fugiat explicabo molestiae.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('8', 'voluptatem', 'Atque quibusdam incidunt possimus quia sint minima ut.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('9', 'expedita', 'Voluptatem tempora harum dicta dolor et.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('10', 'vel', 'Fuga magnam itaque sit aut illum. Quis sit odio harum atque iure ipsa.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('11', 'doloremque', 'Laborum voluptatem quas sit. Facilis non qui itaque neque qui quam ea.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('12', 'eos', 'Ea ut sunt eaque sequi. Eos aut qui quia iure quibusdam.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('13', 'aspernatur', 'Vel omnis eligendi quam repellat aperiam aspernatur. Recusandae consequatur magnam animi soluta asperiores non.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('14', 'ut', 'Dolorum quia similique quos a blanditiis. Est eum voluptas rerum repellat corporis mollitia dolor.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('15', 'qui', 'Enim quae in id quis ea. Repudiandae ut eius et ipsam voluptatem.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('16', 'aut', 'Quibusdam quibusdam omnis unde nobis.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('17', 'dolorem', 'Corporis id saepe explicabo et eos praesentium alias.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('18', 'aut', 'Eum voluptates officiis ducimus quas quae a. Dicta voluptas dolores soluta cupiditate occaecati accusamus nesciunt vitae.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('19', 'molestiae', 'Nostrum et architecto sed voluptas.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('20', 'tempora', 'Aut iure omnis culpa provident ut nisi numquam commodi. Laboriosam quia magnam deserunt velit eligendi magnam voluptatem.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('21', 'reiciendis', 'Rem accusamus consequatur est dicta quasi. Incidunt eius beatae fugiat pariatur illum ut consectetur.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('22', 'optio', 'Et possimus ut voluptates assumenda consequatur.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('23', 'aperiam', 'Ad voluptatem non sit qui quibusdam vel.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('24', 'voluptatem', 'Culpa cumque quis ea voluptas ut vel. Magnam illum cum recusandae ducimus voluptates quis.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('25', 'molestias', 'Doloribus facilis voluptate iste eaque natus sed consequatur unde.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('26', 'nemo', 'Eos voluptate et quod omnis totam ab. Ad natus consequuntur asperiores magni.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('27', 'sit', 'Vel veniam quos ut aut minus.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('28', 'sapiente', 'Expedita quo ad quo et perferendis asperiores nemo nostrum. Dolores dolorem aut consequatur ut.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('29', 'amet', 'Rem et delectus praesentium temporibus.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `categories` VALUES ('30', 'excepturi', 'Est et sequi accusantium est perferendis.', '2020-02-18 20:09:28', '2020-02-18 20:09:28');

-- ----------------------------
-- Table structure for category_product
-- ----------------------------
DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `category_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  KEY `category_product_category_id_foreign` (`category_id`),
  KEY `category_product_product_id_foreign` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of category_product
-- ----------------------------
INSERT INTO `category_product` VALUES ('3', '1');
INSERT INTO `category_product` VALUES ('18', '1');
INSERT INTO `category_product` VALUES ('1', '2');
INSERT INTO `category_product` VALUES ('2', '2');
INSERT INTO `category_product` VALUES ('6', '2');
INSERT INTO `category_product` VALUES ('22', '2');
INSERT INTO `category_product` VALUES ('26', '2');
INSERT INTO `category_product` VALUES ('3', '3');
INSERT INTO `category_product` VALUES ('10', '3');
INSERT INTO `category_product` VALUES ('11', '3');
INSERT INTO `category_product` VALUES ('28', '3');
INSERT INTO `category_product` VALUES ('20', '4');
INSERT INTO `category_product` VALUES ('23', '4');
INSERT INTO `category_product` VALUES ('14', '5');
INSERT INTO `category_product` VALUES ('28', '5');
INSERT INTO `category_product` VALUES ('2', '6');
INSERT INTO `category_product` VALUES ('5', '6');
INSERT INTO `category_product` VALUES ('12', '6');
INSERT INTO `category_product` VALUES ('19', '6');
INSERT INTO `category_product` VALUES ('5', '7');
INSERT INTO `category_product` VALUES ('13', '7');
INSERT INTO `category_product` VALUES ('15', '7');
INSERT INTO `category_product` VALUES ('5', '8');
INSERT INTO `category_product` VALUES ('9', '8');
INSERT INTO `category_product` VALUES ('16', '8');
INSERT INTO `category_product` VALUES ('19', '8');
INSERT INTO `category_product` VALUES ('22', '8');
INSERT INTO `category_product` VALUES ('5', '9');
INSERT INTO `category_product` VALUES ('14', '9');
INSERT INTO `category_product` VALUES ('22', '9');
INSERT INTO `category_product` VALUES ('23', '9');
INSERT INTO `category_product` VALUES ('28', '9');
INSERT INTO `category_product` VALUES ('14', '10');
INSERT INTO `category_product` VALUES ('9', '11');
INSERT INTO `category_product` VALUES ('11', '11');
INSERT INTO `category_product` VALUES ('24', '11');
INSERT INTO `category_product` VALUES ('7', '12');
INSERT INTO `category_product` VALUES ('13', '12');
INSERT INTO `category_product` VALUES ('16', '12');
INSERT INTO `category_product` VALUES ('14', '13');
INSERT INTO `category_product` VALUES ('15', '13');
INSERT INTO `category_product` VALUES ('18', '13');
INSERT INTO `category_product` VALUES ('20', '13');
INSERT INTO `category_product` VALUES ('22', '13');
INSERT INTO `category_product` VALUES ('1', '14');
INSERT INTO `category_product` VALUES ('3', '14');
INSERT INTO `category_product` VALUES ('7', '14');
INSERT INTO `category_product` VALUES ('27', '14');
INSERT INTO `category_product` VALUES ('1', '15');
INSERT INTO `category_product` VALUES ('2', '16');
INSERT INTO `category_product` VALUES ('13', '16');
INSERT INTO `category_product` VALUES ('17', '16');
INSERT INTO `category_product` VALUES ('1', '17');
INSERT INTO `category_product` VALUES ('12', '17');
INSERT INTO `category_product` VALUES ('2', '18');
INSERT INTO `category_product` VALUES ('3', '18');
INSERT INTO `category_product` VALUES ('5', '18');
INSERT INTO `category_product` VALUES ('23', '18');
INSERT INTO `category_product` VALUES ('2', '19');
INSERT INTO `category_product` VALUES ('12', '19');
INSERT INTO `category_product` VALUES ('13', '19');
INSERT INTO `category_product` VALUES ('15', '19');
INSERT INTO `category_product` VALUES ('9', '20');
INSERT INTO `category_product` VALUES ('17', '20');
INSERT INTO `category_product` VALUES ('18', '20');
INSERT INTO `category_product` VALUES ('24', '20');
INSERT INTO `category_product` VALUES ('28', '20');
INSERT INTO `category_product` VALUES ('5', '21');
INSERT INTO `category_product` VALUES ('6', '21');
INSERT INTO `category_product` VALUES ('23', '22');
INSERT INTO `category_product` VALUES ('29', '23');
INSERT INTO `category_product` VALUES ('15', '24');
INSERT INTO `category_product` VALUES ('9', '25');
INSERT INTO `category_product` VALUES ('20', '25');
INSERT INTO `category_product` VALUES ('27', '25');
INSERT INTO `category_product` VALUES ('2', '26');
INSERT INTO `category_product` VALUES ('16', '26');
INSERT INTO `category_product` VALUES ('23', '26');
INSERT INTO `category_product` VALUES ('28', '26');
INSERT INTO `category_product` VALUES ('11', '27');
INSERT INTO `category_product` VALUES ('14', '27');
INSERT INTO `category_product` VALUES ('15', '27');
INSERT INTO `category_product` VALUES ('24', '27');
INSERT INTO `category_product` VALUES ('29', '27');
INSERT INTO `category_product` VALUES ('13', '28');
INSERT INTO `category_product` VALUES ('3', '29');
INSERT INTO `category_product` VALUES ('4', '29');
INSERT INTO `category_product` VALUES ('14', '29');
INSERT INTO `category_product` VALUES ('17', '29');
INSERT INTO `category_product` VALUES ('29', '29');
INSERT INTO `category_product` VALUES ('15', '30');
INSERT INTO `category_product` VALUES ('20', '30');
INSERT INTO `category_product` VALUES ('18', '31');
INSERT INTO `category_product` VALUES ('3', '32');
INSERT INTO `category_product` VALUES ('9', '33');
INSERT INTO `category_product` VALUES ('10', '33');
INSERT INTO `category_product` VALUES ('13', '33');
INSERT INTO `category_product` VALUES ('10', '34');
INSERT INTO `category_product` VALUES ('2', '35');
INSERT INTO `category_product` VALUES ('29', '35');
INSERT INTO `category_product` VALUES ('30', '36');
INSERT INTO `category_product` VALUES ('22', '37');
INSERT INTO `category_product` VALUES ('24', '37');
INSERT INTO `category_product` VALUES ('3', '38');
INSERT INTO `category_product` VALUES ('6', '38');
INSERT INTO `category_product` VALUES ('21', '39');
INSERT INTO `category_product` VALUES ('6', '40');
INSERT INTO `category_product` VALUES ('8', '40');
INSERT INTO `category_product` VALUES ('11', '40');
INSERT INTO `category_product` VALUES ('18', '40');
INSERT INTO `category_product` VALUES ('1', '41');
INSERT INTO `category_product` VALUES ('3', '41');
INSERT INTO `category_product` VALUES ('17', '41');
INSERT INTO `category_product` VALUES ('24', '41');
INSERT INTO `category_product` VALUES ('27', '41');
INSERT INTO `category_product` VALUES ('29', '42');
INSERT INTO `category_product` VALUES ('11', '43');
INSERT INTO `category_product` VALUES ('13', '43');
INSERT INTO `category_product` VALUES ('18', '43');
INSERT INTO `category_product` VALUES ('12', '44');
INSERT INTO `category_product` VALUES ('19', '44');
INSERT INTO `category_product` VALUES ('17', '45');
INSERT INTO `category_product` VALUES ('29', '45');
INSERT INTO `category_product` VALUES ('7', '46');
INSERT INTO `category_product` VALUES ('8', '46');
INSERT INTO `category_product` VALUES ('15', '47');
INSERT INTO `category_product` VALUES ('16', '47');
INSERT INTO `category_product` VALUES ('5', '48');
INSERT INTO `category_product` VALUES ('12', '48');
INSERT INTO `category_product` VALUES ('24', '48');
INSERT INTO `category_product` VALUES ('5', '49');
INSERT INTO `category_product` VALUES ('7', '49');
INSERT INTO `category_product` VALUES ('8', '49');
INSERT INTO `category_product` VALUES ('15', '49');
INSERT INTO `category_product` VALUES ('24', '49');
INSERT INTO `category_product` VALUES ('16', '50');
INSERT INTO `category_product` VALUES ('26', '50');
INSERT INTO `category_product` VALUES ('11', '51');
INSERT INTO `category_product` VALUES ('19', '51');
INSERT INTO `category_product` VALUES ('25', '51');
INSERT INTO `category_product` VALUES ('26', '51');
INSERT INTO `category_product` VALUES ('30', '51');
INSERT INTO `category_product` VALUES ('11', '52');
INSERT INTO `category_product` VALUES ('21', '52');
INSERT INTO `category_product` VALUES ('8', '53');
INSERT INTO `category_product` VALUES ('11', '53');
INSERT INTO `category_product` VALUES ('15', '53');
INSERT INTO `category_product` VALUES ('18', '53');
INSERT INTO `category_product` VALUES ('26', '53');
INSERT INTO `category_product` VALUES ('8', '54');
INSERT INTO `category_product` VALUES ('10', '54');
INSERT INTO `category_product` VALUES ('29', '54');
INSERT INTO `category_product` VALUES ('10', '55');
INSERT INTO `category_product` VALUES ('12', '55');
INSERT INTO `category_product` VALUES ('13', '55');
INSERT INTO `category_product` VALUES ('18', '55');
INSERT INTO `category_product` VALUES ('24', '55');
INSERT INTO `category_product` VALUES ('9', '56');
INSERT INTO `category_product` VALUES ('12', '56');
INSERT INTO `category_product` VALUES ('27', '56');
INSERT INTO `category_product` VALUES ('4', '57');
INSERT INTO `category_product` VALUES ('5', '57');
INSERT INTO `category_product` VALUES ('12', '57');
INSERT INTO `category_product` VALUES ('17', '57');
INSERT INTO `category_product` VALUES ('25', '57');
INSERT INTO `category_product` VALUES ('14', '58');
INSERT INTO `category_product` VALUES ('19', '58');
INSERT INTO `category_product` VALUES ('20', '58');
INSERT INTO `category_product` VALUES ('22', '58');
INSERT INTO `category_product` VALUES ('8', '59');
INSERT INTO `category_product` VALUES ('9', '59');
INSERT INTO `category_product` VALUES ('17', '59');
INSERT INTO `category_product` VALUES ('21', '59');
INSERT INTO `category_product` VALUES ('25', '59');
INSERT INTO `category_product` VALUES ('16', '60');
INSERT INTO `category_product` VALUES ('9', '61');
INSERT INTO `category_product` VALUES ('20', '61');
INSERT INTO `category_product` VALUES ('22', '61');
INSERT INTO `category_product` VALUES ('25', '61');
INSERT INTO `category_product` VALUES ('5', '62');
INSERT INTO `category_product` VALUES ('22', '62');
INSERT INTO `category_product` VALUES ('5', '63');
INSERT INTO `category_product` VALUES ('11', '63');
INSERT INTO `category_product` VALUES ('14', '63');
INSERT INTO `category_product` VALUES ('18', '63');
INSERT INTO `category_product` VALUES ('24', '63');
INSERT INTO `category_product` VALUES ('21', '64');
INSERT INTO `category_product` VALUES ('24', '64');
INSERT INTO `category_product` VALUES ('1', '65');
INSERT INTO `category_product` VALUES ('8', '65');
INSERT INTO `category_product` VALUES ('9', '65');
INSERT INTO `category_product` VALUES ('3', '66');
INSERT INTO `category_product` VALUES ('5', '66');
INSERT INTO `category_product` VALUES ('16', '66');
INSERT INTO `category_product` VALUES ('17', '66');
INSERT INTO `category_product` VALUES ('1', '67');
INSERT INTO `category_product` VALUES ('25', '67');
INSERT INTO `category_product` VALUES ('3', '68');
INSERT INTO `category_product` VALUES ('1', '69');
INSERT INTO `category_product` VALUES ('13', '69');
INSERT INTO `category_product` VALUES ('18', '69');
INSERT INTO `category_product` VALUES ('25', '69');
INSERT INTO `category_product` VALUES ('12', '70');
INSERT INTO `category_product` VALUES ('13', '70');
INSERT INTO `category_product` VALUES ('14', '70');
INSERT INTO `category_product` VALUES ('27', '70');
INSERT INTO `category_product` VALUES ('15', '71');
INSERT INTO `category_product` VALUES ('16', '71');
INSERT INTO `category_product` VALUES ('18', '71');
INSERT INTO `category_product` VALUES ('20', '71');
INSERT INTO `category_product` VALUES ('28', '71');
INSERT INTO `category_product` VALUES ('18', '72');
INSERT INTO `category_product` VALUES ('22', '72');
INSERT INTO `category_product` VALUES ('28', '72');
INSERT INTO `category_product` VALUES ('29', '72');
INSERT INTO `category_product` VALUES ('4', '73');
INSERT INTO `category_product` VALUES ('9', '73');
INSERT INTO `category_product` VALUES ('19', '73');
INSERT INTO `category_product` VALUES ('12', '74');
INSERT INTO `category_product` VALUES ('13', '74');
INSERT INTO `category_product` VALUES ('24', '75');
INSERT INTO `category_product` VALUES ('25', '75');
INSERT INTO `category_product` VALUES ('29', '75');
INSERT INTO `category_product` VALUES ('30', '75');
INSERT INTO `category_product` VALUES ('2', '76');
INSERT INTO `category_product` VALUES ('13', '76');
INSERT INTO `category_product` VALUES ('18', '76');
INSERT INTO `category_product` VALUES ('24', '76');
INSERT INTO `category_product` VALUES ('29', '76');
INSERT INTO `category_product` VALUES ('2', '77');
INSERT INTO `category_product` VALUES ('4', '77');
INSERT INTO `category_product` VALUES ('10', '77');
INSERT INTO `category_product` VALUES ('12', '77');
INSERT INTO `category_product` VALUES ('25', '77');
INSERT INTO `category_product` VALUES ('2', '78');
INSERT INTO `category_product` VALUES ('6', '78');
INSERT INTO `category_product` VALUES ('19', '78');
INSERT INTO `category_product` VALUES ('28', '78');
INSERT INTO `category_product` VALUES ('1', '79');
INSERT INTO `category_product` VALUES ('10', '79');
INSERT INTO `category_product` VALUES ('26', '79');
INSERT INTO `category_product` VALUES ('29', '80');
INSERT INTO `category_product` VALUES ('30', '80');
INSERT INTO `category_product` VALUES ('21', '81');
INSERT INTO `category_product` VALUES ('8', '82');
INSERT INTO `category_product` VALUES ('26', '82');
INSERT INTO `category_product` VALUES ('11', '83');
INSERT INTO `category_product` VALUES ('27', '83');
INSERT INTO `category_product` VALUES ('20', '84');
INSERT INTO `category_product` VALUES ('10', '85');
INSERT INTO `category_product` VALUES ('11', '85');
INSERT INTO `category_product` VALUES ('25', '85');
INSERT INTO `category_product` VALUES ('26', '85');
INSERT INTO `category_product` VALUES ('29', '85');
INSERT INTO `category_product` VALUES ('22', '86');
INSERT INTO `category_product` VALUES ('7', '87');
INSERT INTO `category_product` VALUES ('14', '88');
INSERT INTO `category_product` VALUES ('2', '89');
INSERT INTO `category_product` VALUES ('20', '89');
INSERT INTO `category_product` VALUES ('22', '89');
INSERT INTO `category_product` VALUES ('28', '89');
INSERT INTO `category_product` VALUES ('5', '90');
INSERT INTO `category_product` VALUES ('9', '90');
INSERT INTO `category_product` VALUES ('18', '90');
INSERT INTO `category_product` VALUES ('23', '90');
INSERT INTO `category_product` VALUES ('28', '90');
INSERT INTO `category_product` VALUES ('9', '91');
INSERT INTO `category_product` VALUES ('13', '91');
INSERT INTO `category_product` VALUES ('15', '91');
INSERT INTO `category_product` VALUES ('16', '91');
INSERT INTO `category_product` VALUES ('20', '91');
INSERT INTO `category_product` VALUES ('3', '92');
INSERT INTO `category_product` VALUES ('4', '92');
INSERT INTO `category_product` VALUES ('13', '92');
INSERT INTO `category_product` VALUES ('23', '92');
INSERT INTO `category_product` VALUES ('11', '93');
INSERT INTO `category_product` VALUES ('15', '93');
INSERT INTO `category_product` VALUES ('12', '94');
INSERT INTO `category_product` VALUES ('28', '94');
INSERT INTO `category_product` VALUES ('4', '95');
INSERT INTO `category_product` VALUES ('24', '95');
INSERT INTO `category_product` VALUES ('16', '96');
INSERT INTO `category_product` VALUES ('21', '96');
INSERT INTO `category_product` VALUES ('29', '96');
INSERT INTO `category_product` VALUES ('4', '97');
INSERT INTO `category_product` VALUES ('11', '97');
INSERT INTO `category_product` VALUES ('18', '97');
INSERT INTO `category_product` VALUES ('7', '98');
INSERT INTO `category_product` VALUES ('1', '99');
INSERT INTO `category_product` VALUES ('26', '99');
INSERT INTO `category_product` VALUES ('29', '99');
INSERT INTO `category_product` VALUES ('30', '99');
INSERT INTO `category_product` VALUES ('23', '100');
INSERT INTO `category_product` VALUES ('25', '100');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('15', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('16', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('17', '2019_08_19_000000_create_failed_jobs_table', '1');
INSERT INTO `migrations` VALUES ('18', '2020_01_24_182236_create_products_table', '1');
INSERT INTO `migrations` VALUES ('19', '2020_01_24_182403_create_transactions_table', '1');
INSERT INTO `migrations` VALUES ('20', '2020_01_24_182428_create_categories_table', '1');
INSERT INTO `migrations` VALUES ('21', '2020_01_27_173034_category_product_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no disponible',
  `image` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_seller_id_foreign` (`seller_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Ex eos aut rem nisi nisi.', 'enim', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '9');
INSERT INTO `products` VALUES ('2', 'Dolorum voluptatum minus ratione blanditiis et. Nostrum ullam qui aspernatur modi.', 'nobis', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '5');
INSERT INTO `products` VALUES ('3', 'Blanditiis ipsam sit eveniet nisi. Provident necessitatibus cum deserunt tempore voluptas molestiae est beatae.', 'culpa', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '10');
INSERT INTO `products` VALUES ('4', 'Nobis cupiditate molestiae earum saepe.', 'adipisci', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '8');
INSERT INTO `products` VALUES ('5', 'Consequatur voluptas quia enim provident. Aspernatur facere ut earum sit iure corrupti distinctio.', 'consectetur', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '7');
INSERT INTO `products` VALUES ('6', 'Earum excepturi et asperiores consequatur et cupiditate commodi.', 'voluptatem', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '1');
INSERT INTO `products` VALUES ('7', 'Et fugit tempora et id expedita natus eligendi.', 'deleniti', '4', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '13');
INSERT INTO `products` VALUES ('8', 'Officiis aut in dolorum blanditiis ut id pariatur aut.', 'provident', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '10');
INSERT INTO `products` VALUES ('9', 'Atque quisquam tempore voluptate hic architecto. Cumque repudiandae et vitae cum.', 'ut', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '14');
INSERT INTO `products` VALUES ('10', 'Quia reiciendis id quis laboriosam.', 'quia', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '4');
INSERT INTO `products` VALUES ('11', 'Labore eius ut sed neque provident sed consequatur. Minus necessitatibus qui optio libero provident iure.', 'ea', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '5');
INSERT INTO `products` VALUES ('12', 'Animi nihil velit accusantium assumenda cupiditate ut. Ut molestiae similique optio et fugit.', 'quae', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '10');
INSERT INTO `products` VALUES ('13', 'Placeat doloremque quo illum ut nam omnis.', 'voluptas', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '3');
INSERT INTO `products` VALUES ('14', 'Similique deserunt dicta qui voluptatem quam. Illum excepturi aut quia dignissimos dolores veniam illum consequuntur.', 'velit', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '7');
INSERT INTO `products` VALUES ('15', 'Id assumenda asperiores quia facilis illum eaque. Accusamus ut nam voluptas ut laboriosam ut aut doloremque.', 'illo', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '3');
INSERT INTO `products` VALUES ('16', 'Qui voluptas ratione voluptatibus ea fuga. Impedit magni iusto non et.', 'enim', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '3');
INSERT INTO `products` VALUES ('17', 'Est voluptatem magnam eos eum dolorem.', 'tenetur', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '20');
INSERT INTO `products` VALUES ('18', 'Quisquam in nostrum soluta ducimus.', 'eaque', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '5');
INSERT INTO `products` VALUES ('19', 'Nulla ut rerum dolor sed reiciendis veritatis. Iure assumenda necessitatibus nihil cupiditate animi quia fugit.', 'aliquam', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '10');
INSERT INTO `products` VALUES ('20', 'Sed voluptatem numquam possimus enim. Exercitationem quo labore hic aut quis.', 'odio', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '11');
INSERT INTO `products` VALUES ('21', 'Unde quos magni aut. Qui a laboriosam suscipit.', 'dolores', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '18');
INSERT INTO `products` VALUES ('22', 'Voluptatum dignissimos nihil et dolores.', 'voluptas', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '2');
INSERT INTO `products` VALUES ('23', 'Neque eos eum nobis impedit quod consequatur fugiat.', 'accusamus', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '13');
INSERT INTO `products` VALUES ('24', 'Cum dolorem qui doloribus ipsum provident officia. Officia earum aut minima ut consequatur autem inventore.', 'assumenda', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '8');
INSERT INTO `products` VALUES ('25', 'Molestiae omnis excepturi amet culpa. Temporibus temporibus cupiditate tempore dolore rerum.', 'voluptatem', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '14');
INSERT INTO `products` VALUES ('26', 'Pariatur ea ratione voluptatem aspernatur possimus.', 'dolorem', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '17');
INSERT INTO `products` VALUES ('27', 'Mollitia aut molestiae eos neque. Perferendis sint pariatur veritatis expedita nemo ratione consequatur.', 'nemo', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '14');
INSERT INTO `products` VALUES ('28', 'Veritatis est et consequatur fugiat non. Voluptatem ducimus dolor quo non.', 'est', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '2');
INSERT INTO `products` VALUES ('29', 'Amet consequatur ipsum eligendi nihil.', 'qui', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '5');
INSERT INTO `products` VALUES ('30', 'Accusamus voluptas amet enim occaecati velit ut officiis amet. Est dolor maiores accusamus quidem nulla.', 'veniam', '4', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '1');
INSERT INTO `products` VALUES ('31', 'Maxime accusamus non voluptatem amet voluptatem.', 'voluptate', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '9');
INSERT INTO `products` VALUES ('32', 'Reiciendis quis quibusdam quas fugiat soluta et. Illum ipsam alias consectetur dolorum sit libero quia.', 'eos', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '14');
INSERT INTO `products` VALUES ('33', 'Voluptatem laborum minima autem distinctio omnis dicta deserunt ut.', 'inventore', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '9');
INSERT INTO `products` VALUES ('34', 'Saepe occaecati est qui. Esse atque minus ex nesciunt excepturi culpa.', 'et', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '15');
INSERT INTO `products` VALUES ('35', 'Harum aut ea amet unde earum. Suscipit a nihil reiciendis animi amet architecto.', 'sit', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '18');
INSERT INTO `products` VALUES ('36', 'Omnis accusantium excepturi qui ut. Sed voluptatem iusto est quia et molestias debitis.', 'natus', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '4');
INSERT INTO `products` VALUES ('37', 'Doloremque quis molestiae perspiciatis ex praesentium laborum. Exercitationem quis dolor quas nisi iusto sit nihil.', 'ea', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '1');
INSERT INTO `products` VALUES ('38', 'Enim dolores nihil consequatur et rem quia et. Qui optio tempore autem.', 'et', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '15');
INSERT INTO `products` VALUES ('39', 'Quos sunt fugiat velit at.', 'animi', '4', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '14');
INSERT INTO `products` VALUES ('40', 'Sed magni asperiores molestiae qui aut ea. Quos illo laborum rerum.', 'ut', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '18');
INSERT INTO `products` VALUES ('41', 'Et quibusdam ad dicta non facere. Suscipit exercitationem qui impedit fugiat corrupti iste.', 'deleniti', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '6');
INSERT INTO `products` VALUES ('42', 'Doloribus et modi tempora aut nam ullam.', 'in', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '12');
INSERT INTO `products` VALUES ('43', 'At officia nobis et nostrum libero dolorum ea.', 'pariatur', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '1');
INSERT INTO `products` VALUES ('44', 'Id similique sit et perspiciatis est officia odit minus. Doloribus ad corrupti aut vitae non nostrum.', 'nisi', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '14');
INSERT INTO `products` VALUES ('45', 'Eaque animi ducimus recusandae dolores autem laboriosam.', 'adipisci', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '8');
INSERT INTO `products` VALUES ('46', 'Labore fugit ex magni ut.', 'quae', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '3');
INSERT INTO `products` VALUES ('47', 'In natus qui rerum laborum in rerum.', 'assumenda', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '8');
INSERT INTO `products` VALUES ('48', 'Voluptatem totam quam facere. Sit esse nisi velit eaque omnis iste velit ut.', 'quia', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '11');
INSERT INTO `products` VALUES ('49', 'Itaque repellendus quae sit ut ut animi quos. Omnis nihil incidunt dolorem.', 'sunt', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '12');
INSERT INTO `products` VALUES ('50', 'Molestiae enim perspiciatis perferendis et a eligendi dolorem facere.', 'labore', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '12');
INSERT INTO `products` VALUES ('51', 'Non et eligendi ullam et ad dolorem assumenda.', 'harum', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '14');
INSERT INTO `products` VALUES ('52', 'Et dolorem commodi quas velit aliquid nihil. Dolorum laboriosam et doloremque.', 'quia', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '18');
INSERT INTO `products` VALUES ('53', 'In facere ullam culpa debitis maiores. Quas maxime laudantium quidem dolorem excepturi.', 'aut', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '18');
INSERT INTO `products` VALUES ('54', 'Sint et labore ratione dolor.', 'doloribus', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '9');
INSERT INTO `products` VALUES ('55', 'Illo dolorem laborum sint ut sint eveniet. Ex iure accusantium et molestiae aperiam debitis.', 'molestiae', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '15');
INSERT INTO `products` VALUES ('56', 'Sit officia eius iste ex quia commodi. Aliquid ipsam aliquid et sapiente aperiam necessitatibus qui.', 'voluptatum', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '2');
INSERT INTO `products` VALUES ('57', 'Corporis voluptatem iste ea minus. Error sed doloribus in necessitatibus nihil occaecati ea.', 'quidem', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '13');
INSERT INTO `products` VALUES ('58', 'Quia laboriosam voluptatem ut recusandae. Autem eos incidunt sed dolores.', 'repellendus', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '2');
INSERT INTO `products` VALUES ('59', 'Et et est ratione atque. Mollitia est aut velit sit labore voluptatem.', 'illum', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '5');
INSERT INTO `products` VALUES ('60', 'Esse vel quibusdam architecto labore fuga quam architecto. Ullam recusandae impedit nihil ullam maiores temporibus consequatur.', 'accusantium', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '4');
INSERT INTO `products` VALUES ('61', 'Ipsam hic sit provident aliquam excepturi doloremque.', 'suscipit', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '4');
INSERT INTO `products` VALUES ('62', 'Labore perspiciatis laudantium delectus quis est explicabo neque.', 'voluptas', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '2');
INSERT INTO `products` VALUES ('63', 'Fuga et velit eos blanditiis ipsum sunt. In ut corrupti qui deleniti.', 'ullam', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '1');
INSERT INTO `products` VALUES ('64', 'Aut est dolorum amet tempora.', 'ea', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '16');
INSERT INTO `products` VALUES ('65', 'Et enim nihil aut libero consequatur nisi dolores earum. Quis laboriosam et at cupiditate blanditiis.', 'error', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '8');
INSERT INTO `products` VALUES ('66', 'Blanditiis quaerat quia ad. Veniam saepe magnam et ut amet minima.', 'quia', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '18');
INSERT INTO `products` VALUES ('67', 'Fuga vel sapiente et eum.', 'consectetur', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '12');
INSERT INTO `products` VALUES ('68', 'Libero laborum accusantium est maiores assumenda aut totam.', 'ut', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '18');
INSERT INTO `products` VALUES ('69', 'Ipsam officiis eum voluptas.', 'et', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '19');
INSERT INTO `products` VALUES ('70', 'Ipsum molestiae eveniet hic omnis autem itaque. Est ullam qui deserunt eos laudantium aspernatur.', 'nisi', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '12');
INSERT INTO `products` VALUES ('71', 'Necessitatibus similique est aperiam dolores cupiditate.', 'quos', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '4');
INSERT INTO `products` VALUES ('72', 'Est autem adipisci ut in illum laborum.', 'pariatur', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '8');
INSERT INTO `products` VALUES ('73', 'Aut sint itaque et cum asperiores. Harum necessitatibus est unde.', 'corrupti', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '16');
INSERT INTO `products` VALUES ('74', 'Id numquam et quo accusantium reiciendis exercitationem magni.', 'beatae', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '3');
INSERT INTO `products` VALUES ('75', 'Sint neque aut numquam qui et esse. Distinctio est aut quo similique.', 'reiciendis', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '14');
INSERT INTO `products` VALUES ('76', 'Ut maxime suscipit qui nobis sed corporis placeat.', 'ipsam', '3', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '8');
INSERT INTO `products` VALUES ('77', 'Et quo perspiciatis quia explicabo voluptatem accusamus. Ab sapiente est dolorum magni recusandae rerum earum.', 'dicta', '9', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '20');
INSERT INTO `products` VALUES ('78', 'Quo et est ipsum tempore amet aperiam.', 'itaque', '4', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '20');
INSERT INTO `products` VALUES ('79', 'Harum qui aut culpa minus voluptate.', 'laudantium', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '11');
INSERT INTO `products` VALUES ('80', 'Quisquam dolor officiis quo. Quo eum omnis quos nemo quia omnis.', 'optio', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '10');
INSERT INTO `products` VALUES ('81', 'Ipsam quis debitis nihil quas. Suscipit et et qui consequatur quia.', 'aut', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '2');
INSERT INTO `products` VALUES ('82', 'Quod vel consequatur dolore est aut.', 'fugiat', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '6');
INSERT INTO `products` VALUES ('83', 'Fuga repudiandae molestiae aut consequatur eum harum occaecati maiores. Perferendis quos eos saepe aut iure saepe.', 'natus', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '11');
INSERT INTO `products` VALUES ('84', 'Reiciendis accusantium nemo dolorem tempore omnis. Cum quaerat aperiam distinctio atque.', 'et', '10', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '15');
INSERT INTO `products` VALUES ('85', 'Molestias qui sint asperiores reprehenderit nam sint et. Exercitationem perferendis ut rerum nemo vel saepe sapiente.', 'excepturi', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '15');
INSERT INTO `products` VALUES ('86', 'Maxime et deserunt aut et.', 'sunt', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '9');
INSERT INTO `products` VALUES ('87', 'Inventore expedita ab odit esse eveniet tempora.', 'voluptate', '5', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '18');
INSERT INTO `products` VALUES ('88', 'Provident aut quidem illo. Esse quos modi consectetur eveniet cumque.', 'in', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '7');
INSERT INTO `products` VALUES ('89', 'Et excepturi soluta eos.', 'quis', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '4');
INSERT INTO `products` VALUES ('90', 'Voluptatem numquam temporibus dicta autem quam minima. Quos maiores dicta quam sit.', 'eum', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'uno.jpg', '10');
INSERT INTO `products` VALUES ('91', 'Unde eos id cum et ea.', 'rem', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'dos,jpg', '18');
INSERT INTO `products` VALUES ('92', 'Qui accusantium corrupti sunt rerum. Nisi quas aut voluptates dolores consequuntur quia.', 'voluptates', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '7');
INSERT INTO `products` VALUES ('93', 'Sit autem quisquam doloremque aperiam consectetur quia optio. Sed eligendi deleniti ipsum.', 'deleniti', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '8');
INSERT INTO `products` VALUES ('94', 'Ipsa sit totam odit veniam.', 'qui', '4', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '20');
INSERT INTO `products` VALUES ('95', 'Sunt et nam similique et quo molestiae distinctio. Aut dolorum excepturi non atque eum recusandae.', 'ratione', '8', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '10');
INSERT INTO `products` VALUES ('96', 'Repellat veniam quis sit architecto perferendis voluptatem. Enim quisquam rem est sed molestiae illo porro.', 'omnis', '1', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '5');
INSERT INTO `products` VALUES ('97', 'Dolorum perferendis et cumque harum quas eveniet illum. Cupiditate qui quisquam alias pariatur minus et voluptatibus.', 'ex', '2', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'tres.jpg', '20');
INSERT INTO `products` VALUES ('98', 'Pariatur non corporis maiores cupiditate.', 'quia', '4', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'dos,jpg', '20');
INSERT INTO `products` VALUES ('99', 'Et unde optio molestiae et rerum sint.', 'tempore', '6', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'disponible', 'uno.jpg', '1');
INSERT INTO `products` VALUES ('100', 'Molestiae nam eum sit esse dolorum. Explicabo ea vero quo itaque.', 'quod', '7', '2020-02-18 20:09:28', '2020-02-18 20:09:28', 'no disponible', 'tres.jpg', '7');

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `quantity` int(10) unsigned NOT NULL,
  `buyer_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_buyer_id_foreign` (`buyer_id`),
  KEY `transactions_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES ('1', '2', '7', '97', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('2', '1', '10', '93', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('3', '1', '8', '70', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('4', '3', '20', '59', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('5', '2', '1', '57', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('6', '3', '9', '64', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('7', '2', '6', '57', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('8', '1', '9', '94', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('9', '1', '16', '76', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('10', '1', '9', '26', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('11', '1', '18', '94', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('12', '1', '13', '41', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('13', '1', '17', '34', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('14', '3', '10', '40', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('15', '1', '14', '38', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('16', '3', '12', '69', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('17', '3', '13', '82', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('18', '3', '2', '14', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('19', '1', '9', '92', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('20', '2', '17', '44', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('21', '2', '7', '11', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('22', '3', '13', '27', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('23', '3', '6', '72', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('24', '2', '4', '33', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('25', '3', '15', '65', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('26', '3', '8', '83', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('27', '2', '19', '7', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('28', '1', '17', '18', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('29', '3', '20', '47', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('30', '3', '11', '10', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('31', '1', '17', '47', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('32', '2', '3', '18', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('33', '3', '17', '16', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('34', '2', '20', '18', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('35', '1', '6', '77', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('36', '2', '1', '50', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('37', '2', '3', '26', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('38', '1', '1', '60', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('39', '3', '13', '56', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('40', '3', '3', '70', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('41', '3', '10', '37', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('42', '2', '12', '41', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('43', '1', '4', '69', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('44', '2', '10', '16', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('45', '3', '15', '82', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('46', '2', '18', '75', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('47', '1', '2', '90', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('48', '2', '16', '66', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('49', '1', '2', '57', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('50', '3', '20', '8', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('51', '1', '18', '58', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('52', '3', '10', '23', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('53', '1', '7', '79', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('54', '3', '9', '96', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('55', '3', '1', '28', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('56', '2', '16', '12', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('57', '1', '9', '21', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('58', '2', '5', '91', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('59', '3', '9', '72', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('60', '1', '19', '6', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('61', '1', '1', '39', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('62', '2', '7', '51', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('63', '1', '17', '6', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('64', '3', '11', '56', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('65', '3', '8', '73', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('66', '2', '8', '97', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('67', '2', '1', '48', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('68', '1', '1', '91', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('69', '3', '3', '7', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('70', '3', '16', '63', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('71', '2', '19', '42', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('72', '1', '15', '20', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('73', '1', '1', '82', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('74', '2', '10', '73', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('75', '2', '5', '56', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('76', '1', '10', '10', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('77', '2', '1', '83', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('78', '2', '1', '16', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('79', '3', '1', '80', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('80', '3', '15', '100', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('81', '3', '8', '61', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('82', '2', '1', '19', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('83', '1', '19', '33', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('84', '1', '13', '28', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('85', '2', '11', '41', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('86', '2', '9', '77', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('87', '1', '4', '47', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('88', '2', '16', '69', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('89', '2', '11', '69', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('90', '1', '20', '82', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('91', '3', '12', '76', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('92', '2', '9', '14', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('93', '1', '5', '75', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('94', '1', '16', '83', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('95', '1', '13', '55', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('96', '3', '10', '27', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('97', '3', '13', '42', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('98', '2', '8', '5', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('99', '1', '12', '91', '2020-02-18 20:09:29', '2020-02-18 20:09:29');
INSERT INTO `transactions` VALUES ('100', '3', '5', '79', '2020-02-18 20:09:29', '2020-02-18 20:09:29');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Maximillian Cummings', 'frida.gutmann@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cMHhCcWrLT', '0', 'dgH5xrSCC5fAzZImC6fjPklemUg3K2eGVnDqQqp3', 'true', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('2', 'Melissa Beier', 'eleazar57@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vk91Az2ggU', '0', '6J86wOBmQJJ6aQY4qmPkTKxSn8AuSg7oR8Zu4g6e', 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('3', 'Jeanne Langosh', 'losper.jesy@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd7ajJU254g', '0', 'E8gyeTfIVF5WuxCJq4bgGrbnXxJ1UoEx2U1pG3PO', 'false', '2020-02-18 20:09:28', '2020-02-25 16:57:05');
INSERT INTO `users` VALUES ('4', 'hessuca5', 'bhodkiewicz@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zuUOBhomwZ', '1', null, 'true', '2020-02-18 20:09:28', '2020-02-26 16:07:08');
INSERT INTO `users` VALUES ('5', 'Berniece Kozey', 'gracie.rodriguez@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NHU24AL7fB', '1', null, 'true', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('6', 'Gordon Heller', 'ndouglas@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eeB5t9zWno', '0', 'ayoZltNAYPwOO9DXwqs5eKHC2UgSmV1xDwgUIlk3', 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('7', 'Rodolfo Mohr', 'corkery.mortimer@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rXllBnWMV3', '1', null, 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('8', 'Miss Ebony Christiansen', 'bweimann@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fEtAUPAhY5', '1', null, 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('9', 'Prof. Mekhi Littel III', 'alexa83@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HwByTDLUxH', '1', null, 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('10', 'Billie Gusikowski II', 'gconn@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'N9BiFGIeKL', '0', 'zgO6RMbbzNfPsTQwbJ44TgzCKvw8sTRzhANFxpKq', 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('11', 'Prof. Brady Pfannerstill', 'cwyman@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h3T24BIZIO', '0', 'gFC2TSE2gWR8QwTzNCPf8b5ayHc3bmzPb5vJFvYt', 'true', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('12', 'Ms. Gia Cole', 'retta.hammes@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6CxgHyfz15', '1', null, 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('13', 'Dayne Ernser', 'mallory78@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5jpmfdshd6', '1', null, 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('14', 'Nella Ritchie', 'zulauf.delta@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2gHqDtiN1i', '1', null, 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('15', 'Ms. Alysson Zulauf Jr.', 'klemke@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'K7scEM5f4W', '1', null, 'true', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('16', 'Fae Kautzer I', 'ngleason@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7ayzOPNSjv', '0', 'afZqRkFgDivKxfhUSPcx0kMwUP9EeeBtINg5MpYT', 'true', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('17', 'Otho Kohler', 'ucruickshank@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FTy2AWNO5u', '1', null, 'true', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('18', 'Susie dtehr', 'corrine.daugherty@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '81imtZU2bc', '0', '2Ghf1IwMOzDemblAI4eCFNBI6yQ3dqY5AM6iwYsb', 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('19', 'Abigail sonnelly', 'zschultz@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lMsIeAvjLz', '1', null, 'false', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('20', 'Maya Wunsch', 'hkohler@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'odp2R3loLL', '0', 'znL6ChWr1zisMPmdubsMXFx11zlhXzvXsZafYov6', 'true', '2020-02-18 20:09:28', '2020-02-18 20:09:28');
INSERT INTO `users` VALUES ('21', 'test', 'tset', 'test', null, '0', null, 'false', '2020-02-25 17:56:44', '2020-02-25 17:56:44');
INSERT INTO `users` VALUES ('22', 'd', 'losper.jessysa@gmail.com', '$2y$10$InmdM8ZlzQzMCuEqdc4dmOJmN8N6OFGbl7ZXKb31ewI32iCgEAkba', null, '0', 'rXnJdRhCntkHuQ1kCq5STJf2Cg6eN71r0hmQhf1e', 'false', '2020-02-25 18:28:52', '2020-02-26 17:43:45');
INSERT INTO `users` VALUES ('23', 'asf', 'hola@gmail.com', '$2y$10$OIGf3/f9ClJZgb3ky4UjAeTe9GEO.y6D1OtinbNflxGZ6yMAXcune', null, '0', 'WMs89jRwjXzdtgCFx8XlEWPvsHbK14WDKkBFT3G8', 'false', '2020-02-25 19:50:59', '2020-02-25 19:50:59');
INSERT INTO `users` VALUES ('24', 'asf', 'hodlad@gmail.com', '$2y$10$yGL0A2dcmOzqmdiCvYZuNOsvx.8ARA7Zm3HtP8JzfcYB4AWb0UH4O', null, '0', 'Pzp83WBaREmLZ3fiRl1I8nDa2WSMOYLdXU2geLFE', 'false', '2020-02-25 19:53:20', '2020-02-25 19:53:20');
INSERT INTO `users` VALUES ('25', 'asf', 'hoad@gmail.com', '$2y$10$veXfJ03wIkIEqn2ob/K9SuWeys5B01HSyjFrLBcJXgmbdT63XJNpC', null, '0', '8MxW2GJ9nNWBLyejUCHr8pBqbgPxbb6dsT1Ji5Ha', 'false', '2020-02-25 19:53:47', '2020-02-25 19:53:47');
INSERT INTO `users` VALUES ('26', 'jessica', 'lospesr.jesy@gmail.com', '$2y$10$zGAsnvXD8eWb1XICdolDxOAZpsGMEVUW6Z787wAO/UIFvz7Jxw21S', null, '0', 'Ben4eaIf1IfhmdjDb2LBbMJpxd4HPG0Jfx0NvSwH', 'false', '2020-02-26 15:45:07', '2020-02-26 15:45:07');
INSERT INTO `users` VALUES ('27', 'freded', 'lossfper.jessysa@gmail.com', '$2y$10$C.d6lhCM1PCQQ/4U92Jb.O8anc1nhkEq4BHMUV9s886JindXGOscK', null, '0', '2yGPLNtRWLiali6cGU0HsSVrI72gkjt7WB9cCyUt', 'false', '2020-02-26 18:08:18', '2020-02-26 18:08:18');
INSERT INTO `users` VALUES ('28', 'fredded', 'losdsfper.jessysa@gmail.com', '$2y$10$DzgowBPosg2GMToI8d23H.mv4J.Gwg0k2bEhZutfWWVbeRYQacBdG', null, '0', 'E5qnIg9tRxFhdRpTKtaD12WUuCUlZWAdM5jCWyit', 'false', '2020-02-26 18:08:37', '2020-02-26 18:08:37');
INSERT INTO `users` VALUES ('29', 'fredesrick', 'frse.df@gmail.com', '$2y$10$KI4EFiVeAgRUSpGqlDyjlOIj.KLy5h6tS2FaRbrdPT0lns51mEE3i', null, '0', 'JXaE7AoOhkPx0kAAVD5SnjdN3Ki8OpqweOOEopfJ', 'false', '2020-02-26 18:08:49', '2020-02-26 18:08:49');
INSERT INTO `users` VALUES ('30', 'freddeds', 'losdsfper.jesssysa@gmail.com', '$2y$10$ow1g06.rQXgMLcfai6xW2.AcGCk8IsUrF5ypmPqu5jSksRHXraeJW', null, '0', '96S4imDRJxXmK4lW0zbJjo1f1GxprZhXw8B65Ubz', 'false', '2020-02-26 18:09:00', '2020-02-26 18:09:00');
INSERT INTO `users` VALUES ('31', 'fredsdeds', 'lossdsfper.jesssysa@gmail.com', '$2y$10$zhpSniXGHeVVIzwtXH063OfqtTfyIbzHnMbkh6aUd4i36wrHUN0wq', null, '0', 'TxhGwECpPPi4mBub7GGJYUEFop5Thfo6BCH0OFnB', 'false', '2020-02-26 18:11:20', '2020-02-26 18:11:20');
INSERT INTO `users` VALUES ('32', 'fredsssesrick', 'frsse.df@gmail.com', '$2y$10$cti4jC140KNhKdXYZbF6F.WoDdxdNdpO/aMqO3I/Ahn3ENtcQJdcO', null, '0', 'SCijeMVCnw9ic3RQnHRM6x25pRc0VjWwHIvjOLNP', 'false', '2020-02-26 18:11:27', '2020-02-26 18:11:27');
INSERT INTO `users` VALUES ('33', 'fredsdedsrrr', 'lossdrsfper.jesssysa@gmail.com', '$2y$10$HmJyPi13LYBR.mH2Pfz8/eA3E/ItB4kxoHpqsGZQVxgTwjS27TkQK', null, '0', 'FkA4bveDqNQO5vCYfsV0x0k4x22pie5GFDa53vzs', 'false', '2020-02-26 18:16:05', '2020-02-26 18:16:05');
INSERT INTO `users` VALUES ('34', 'pedro', 'rlosssdrsfsssser.jesssysa@gmail.com', '$2y$10$Y4ZVAQ5OqMgIyi1AigeSC.25R7P2mBb7uuj2u.eqBZ7isqXEb9TYy', null, '0', 'zxy80eTzPeDPU8YQh9hBUG9aDYhq58w2tzVO4ulZ', 'false', '2020-02-26 18:17:24', '2020-02-26 18:17:24');
INSERT INTO `users` VALUES ('35', 'pedro', 'rlosssdrsfsssster.jesssysa@gmail.com', '$2y$10$BvvNufUofCP4ZKYubj3n.epiBq0bDFTlZfcEbKE7QqWdPfnhm1Rae', null, '0', 'S0QfacyMiuvoz2bkp2YD14s4OcHVmjtOmTcUOy13', 'false', '2020-02-26 18:18:41', '2020-02-26 18:18:41');
INSERT INTO `users` VALUES ('36', 'pedro', 'rwssysa@gmail.com', '$2y$10$2rDgS1Ey8U.C6pZ/EUaN7OJE8GsGQrgB55P.0IScFLzGPYwtXVPXS', null, '0', 'oqGSZXMVKUe56mB7Un4dgP1SKtJBckOaH2Ga9Vd1', 'false', '2020-02-26 18:19:37', '2020-02-26 18:19:37');
INSERT INTO `users` VALUES ('37', 'pessdro', 'rwssssysa@gmail.com', '$2y$10$9pOAKs/8faBQ7vPzUtkJ1uZd3mmHhJvzjS52b7O7GIWszm/jR304q', null, '0', '6VUsF5FmcSQ8e4TQwQfhSxTx8Xz7S0aai1kWGvoE', 'false', '2020-02-26 18:29:57', '2020-02-26 18:29:57');
INSERT INTO `users` VALUES ('38', 'pessdro', 'sd@gsmail.com', '$2y$10$SZzObSdqSYf2UmX6fBQOg.BIln2KOfP2SGMK0ahl0sW4i46MCMCA2', null, '0', 'o0uuTJM6lbPfU9bzI1Rrwt8DDfxZcJUxgWti9cej', 'false', '2020-02-26 18:31:17', '2020-02-26 18:31:17');
