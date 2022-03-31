-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 31, 2022 alle 16:43
-- Versione del server: 10.4.14-MariaDB
-- Versione PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `egov_db`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add System', 7, 'add_system'),
(26, 'Can change System', 7, 'change_system'),
(27, 'Can delete System', 7, 'delete_system'),
(28, 'Can view System', 7, 'view_system'),
(29, 'Can add Process', 8, 'add_process'),
(30, 'Can change Process', 8, 'change_process'),
(31, 'Can delete Process', 8, 'delete_process'),
(32, 'Can view Process', 8, 'view_process'),
(33, 'Can add Asset_type', 9, 'add_asset_type'),
(34, 'Can change Asset_type', 9, 'change_asset_type'),
(35, 'Can delete Asset_type', 9, 'delete_asset_type'),
(36, 'Can view Asset_type', 9, 'view_asset_type'),
(37, 'Can add Asset', 10, 'add_asset'),
(38, 'Can change Asset', 10, 'change_asset'),
(39, 'Can delete Asset', 10, 'delete_asset'),
(40, 'Can view Asset', 10, 'view_asset'),
(41, 'Can add Attribute_value', 11, 'add_attribute_value'),
(42, 'Can change Attribute_value', 11, 'change_attribute_value'),
(43, 'Can delete Attribute_value', 11, 'delete_attribute_value'),
(44, 'Can view Attribute_value', 11, 'view_attribute_value'),
(45, 'Can add Threat', 12, 'add_threat'),
(46, 'Can change Threat', 12, 'change_threat'),
(47, 'Can delete Threat', 12, 'delete_threat'),
(48, 'Can view Threat', 12, 'view_threat'),
(49, 'Can add Attribute', 13, 'add_attribute'),
(50, 'Can change Attribute', 13, 'change_attribute'),
(51, 'Can delete Attribute', 13, 'delete_attribute'),
(52, 'Can view Attribute', 13, 'view_attribute'),
(53, 'Can add Control', 14, 'add_control'),
(54, 'Can change Control', 14, 'change_control'),
(55, 'Can delete Control', 14, 'delete_control'),
(56, 'Can view Control', 14, 'view_control'),
(57, 'Can add asset_has_attribute', 15, 'add_asset_has_attribute'),
(58, 'Can change asset_has_attribute', 15, 'change_asset_has_attribute'),
(59, 'Can delete asset_has_attribute', 15, 'delete_asset_has_attribute'),
(60, 'Can view asset_has_attribute', 15, 'view_asset_has_attribute'),
(61, 'Can add threat_has_attribute', 16, 'add_threat_has_attribute'),
(62, 'Can change threat_has_attribute', 16, 'change_threat_has_attribute'),
(63, 'Can delete threat_has_attribute', 16, 'delete_threat_has_attribute'),
(64, 'Can view threat_has_attribute', 16, 'view_threat_has_attribute'),
(65, 'Can add threat_has_control', 17, 'add_threat_has_control'),
(66, 'Can change threat_has_control', 17, 'change_threat_has_control'),
(67, 'Can delete threat_has_control', 17, 'delete_threat_has_control'),
(68, 'Can view threat_has_control', 17, 'view_threat_has_control'),
(69, 'Can add threat agent category', 18, 'add_threatagentcategory'),
(70, 'Can change threat agent category', 18, 'change_threatagentcategory'),
(71, 'Can delete threat agent category', 18, 'delete_threatagentcategory'),
(72, 'Can view threat agent category', 18, 'view_threatagentcategory'),
(73, 'Can add threat agent attribute', 19, 'add_threatagentattribute'),
(74, 'Can change threat agent attribute', 19, 'change_threatagentattribute'),
(75, 'Can delete threat agent attribute', 19, 'delete_threatagentattribute'),
(76, 'Can view threat agent attribute', 19, 'view_threatagentattribute'),
(77, 'Can add threat agent question', 20, 'add_threatagentquestion'),
(78, 'Can change threat agent question', 20, 'change_threatagentquestion'),
(79, 'Can delete threat agent question', 20, 'delete_threatagentquestion'),
(80, 'Can view threat agent question', 20, 'view_threatagentquestion'),
(81, 'Can add reply', 21, 'add_reply'),
(82, 'Can change reply', 21, 'change_reply'),
(83, 'Can delete reply', 21, 'delete_reply'),
(84, 'Can view reply', 21, 'view_reply'),
(85, 'Can add ta replies_ question', 22, 'add_tareplies_question'),
(86, 'Can change ta replies_ question', 22, 'change_tareplies_question'),
(87, 'Can delete ta replies_ question', 22, 'delete_tareplies_question'),
(88, 'Can view ta replies_ question', 22, 'view_tareplies_question'),
(89, 'Can add ta category attribute', 23, 'add_tacategoryattribute'),
(90, 'Can change ta category attribute', 23, 'change_tacategoryattribute'),
(91, 'Can delete ta category attribute', 23, 'delete_tacategoryattribute'),
(92, 'Can view ta category attribute', 23, 'view_tacategoryattribute'),
(93, 'Can add ta reply category', 24, 'add_tareplycategory'),
(94, 'Can change ta reply category', 24, 'change_tareplycategory'),
(95, 'Can delete ta reply category', 24, 'delete_tareplycategory'),
(96, 'Can view ta reply category', 24, 'view_tareplycategory'),
(97, 'Can add threat agent risk scores', 25, 'add_threatagentriskscores'),
(98, 'Can change threat agent risk scores', 25, 'change_threatagentriskscores'),
(99, 'Can delete threat agent risk scores', 25, 'delete_threatagentriskscores'),
(100, 'Can view threat agent risk scores', 25, 'view_threatagentriskscores'),
(101, 'Can add system_ threat agent', 26, 'add_system_threatagent'),
(102, 'Can change system_ threat agent', 26, 'change_system_threatagent'),
(103, 'Can delete system_ threat agent', 26, 'delete_system_threatagent'),
(104, 'Can view system_ threat agent', 26, 'view_system_threatagent'),
(105, 'Can add risk', 27, 'add_risk'),
(106, 'Can change risk', 27, 'change_risk'),
(107, 'Can delete risk', 27, 'delete_risk'),
(108, 'Can view risk', 27, 'view_risk'),
(109, 'Can add stride', 28, 'add_stride'),
(110, 'Can change stride', 28, 'change_stride'),
(111, 'Can delete stride', 28, 'delete_stride'),
(112, 'Can view stride', 28, 'view_stride'),
(113, 'Can add stride impact record', 29, 'add_strideimpactrecord'),
(114, 'Can change stride impact record', 29, 'change_strideimpactrecord'),
(115, 'Can delete stride impact record', 29, 'delete_strideimpactrecord'),
(116, 'Can view stride impact record', 29, 'view_strideimpactrecord'),
(117, 'Can add threat_ stride', 30, 'add_threat_stride'),
(118, 'Can change threat_ stride', 30, 'change_threat_stride'),
(119, 'Can delete threat_ stride', 30, 'delete_threat_stride'),
(120, 'Can view threat_ stride', 30, 'view_threat_stride'),
(121, 'Can add overall risk', 31, 'add_overallrisk'),
(122, 'Can change overall risk', 31, 'change_overallrisk'),
(123, 'Can delete overall risk', 31, 'delete_overallrisk'),
(124, 'Can view overall risk', 31, 'view_overallrisk'),
(125, 'Can add data object', 32, 'add_dataobject'),
(126, 'Can change data object', 32, 'change_dataobject'),
(127, 'Can delete data object', 32, 'delete_dataobject'),
(128, 'Can view data object', 32, 'view_dataobject'),
(129, 'Can add actor', 33, 'add_actor'),
(130, 'Can change actor', 33, 'change_actor'),
(131, 'Can delete actor', 33, 'delete_actor'),
(132, 'Can view actor', 33, 'view_actor');

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(33, 'parsingbpmn', 'actor'),
(10, 'parsingbpmn', 'asset'),
(15, 'parsingbpmn', 'asset_has_attribute'),
(9, 'parsingbpmn', 'asset_type'),
(13, 'parsingbpmn', 'attribute'),
(11, 'parsingbpmn', 'attribute_value'),
(14, 'parsingbpmn', 'control'),
(32, 'parsingbpmn', 'dataobject'),
(31, 'parsingbpmn', 'overallrisk'),
(8, 'parsingbpmn', 'process'),
(21, 'parsingbpmn', 'reply'),
(27, 'parsingbpmn', 'risk'),
(28, 'parsingbpmn', 'stride'),
(29, 'parsingbpmn', 'strideimpactrecord'),
(7, 'parsingbpmn', 'system'),
(26, 'parsingbpmn', 'system_threatagent'),
(23, 'parsingbpmn', 'tacategoryattribute'),
(22, 'parsingbpmn', 'tareplies_question'),
(24, 'parsingbpmn', 'tareplycategory'),
(12, 'parsingbpmn', 'threat'),
(19, 'parsingbpmn', 'threatagentattribute'),
(18, 'parsingbpmn', 'threatagentcategory'),
(20, 'parsingbpmn', 'threatagentquestion'),
(25, 'parsingbpmn', 'threatagentriskscores'),
(16, 'parsingbpmn', 'threat_has_attribute'),
(17, 'parsingbpmn', 'threat_has_control'),
(30, 'parsingbpmn', 'threat_stride'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-13 15:10:39.059863'),
(2, 'auth', '0001_initial', '2022-02-13 15:10:39.251986'),
(3, 'admin', '0001_initial', '2022-02-13 15:10:39.737981'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-13 15:10:39.858984'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-13 15:10:39.871026'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-13 15:10:39.999996'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-13 15:10:40.059016'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-13 15:10:40.086018'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-13 15:10:40.099003'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-13 15:10:40.162998'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-13 15:10:40.167986'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-13 15:10:40.180014'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-13 15:10:40.202985'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-13 15:10:40.227012'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-13 15:10:40.248979'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-13 15:10:40.271979'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-13 15:10:40.292998'),
(18, 'sessions', '0001_initial', '2022-02-13 15:10:40.316978'),
(19, 'parsingbpmn', '0001_initial', '2022-02-13 15:21:16.860121'),
(20, 'parsingbpmn', '0002_auto_20220215_1634', '2022-02-15 15:35:36.111560'),
(21, 'parsingbpmn', '0003_auto_20220215_1636', '2022-02-15 15:36:33.882514'),
(22, 'parsingbpmn', '0002_auto_20220226_1917', '2022-02-26 18:17:34.925177'),
(23, 'parsingbpmn', '0003_auto_20220302_1056', '2022-03-02 10:10:47.121448'),
(24, 'parsingbpmn', '0004_auto_20220302_1136', '2022-03-02 10:37:19.665538'),
(25, 'parsingbpmn', '0005_auto_20220303_1344', '2022-03-03 12:44:56.033049'),
(26, 'parsingbpmn', '0006_remove_strideimpactrecord_app', '2022-03-03 16:43:49.509998'),
(27, 'parsingbpmn', '0007_auto_20220303_1742', '2022-03-03 16:43:49.674014'),
(28, 'parsingbpmn', '0008_auto_20220303_1854', '2022-03-03 17:54:36.089723'),
(29, 'parsingbpmn', '0009_auto_20220303_1930', '2022-03-03 18:30:34.721832'),
(30, 'parsingbpmn', '0010_auto_20220303_1956', '2022-03-03 18:57:05.166347'),
(31, 'parsingbpmn', '0011_auto_20220303_2003', '2022-03-03 19:03:40.608639'),
(32, 'parsingbpmn', '0012_auto_20220303_2132', '2022-03-03 20:32:58.253143'),
(33, 'parsingbpmn', '0002_remove_risk_threat_risk_impact_risk_likelihood_and_more', '2022-03-18 17:02:39.713828'),
(34, 'parsingbpmn', '0003_dataobject_id', '2022-03-18 17:02:39.724828'),
(35, 'parsingbpmn', '0004_rename_dataobject_id_dataobject', '2022-03-18 17:02:39.732826'),
(36, 'parsingbpmn', '0005_remove_risk_threat', '2022-03-18 17:02:39.742827'),
(37, 'parsingbpmn', '0006_risk_impact', '2022-03-18 17:02:39.754827'),
(38, 'parsingbpmn', '0007_risk_likelihood', '2022-03-18 17:02:39.768826'),
(39, 'parsingbpmn', '0008_process_process_bpmn_id', '2022-03-18 17:05:38.020695'),
(40, 'parsingbpmn', '0009_auto_20220318_1807', '2022-03-18 17:07:10.699771'),
(41, 'parsingbpmn', '0008_process_process_id_bpmn', '2022-03-18 17:09:43.444670'),
(42, 'parsingbpmn', '0009_remove_process_process_id_bpmn', '2022-03-18 17:19:25.331861'),
(43, 'parsingbpmn', '0010_actor', '2022-03-18 17:25:23.570812'),
(44, 'parsingbpmn', '0011_asset_process_bpmn_id', '2022-03-18 17:40:05.830531'),
(45, 'parsingbpmn', '0012_auto_20220318_1843', '2022-03-18 17:44:04.383850'),
(46, 'parsingbpmn', '0013_auto_20220331_1615', '2022-03-31 14:17:33.753912');

-- --------------------------------------------------------

--
-- Struttura della tabella `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_actor`
--

CREATE TABLE `parsingbpmn_actor` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `process_bpmn_id` int(11) DEFAULT NULL,
  `process_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset`
--

CREATE TABLE `parsingbpmn_asset` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bpmn_id` varchar(99) DEFAULT NULL,
  `asset_type_id` int(11) DEFAULT NULL,
  `process_id` int(11) NOT NULL,
  `position` varchar(99) DEFAULT NULL,
  `process_bpmn_id` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset`
--

INSERT INTO `parsingbpmn_asset` (`id`, `name`, `bpmn_id`, `asset_type_id`, `process_id`, `position`, `process_bpmn_id`) VALUES
(742, 'Compile certificate request', 'Activity_0e44ssw', 3, 68, '310:150:100:80', NULL),
(743, 'Certificate request', 'Activity_0m5vgkb', 1, 68, '450:150:100:80', NULL),
(744, 'Recieve notification', 'Activity_15a5z8l', 2, 68, '720:140:100:80', NULL),
(745, 'Download Certificate', 'Activity_1lh76my', 3, 68, '860:140:100:80', NULL),
(746, 'Acquire certificate request', 'Activity_075eaka', 2, 68, '450:380:100:80', NULL),
(747, 'Certificate processing', 'Activity_0yo8nd0', 5, 68, '590:380:100:80', NULL),
(748, 'Notify certification ready', 'Activity_11l7oi5', 1, 68, '720:380:100:80', NULL),
(749, 'Compile certificate request', 'Activity_0e44ssw', 3, 69, '310:150:100:80', NULL),
(750, 'Certificate request', 'Activity_0m5vgkb', 1, 69, '450:150:100:80', NULL),
(751, 'Recieve notification', 'Activity_15a5z8l', 2, 69, '720:140:100:80', NULL),
(752, 'Download Certificate', 'Activity_1lh76my', 3, 69, '860:140:100:80', NULL),
(753, 'Acquire certificate request', 'Activity_075eaka', 2, 69, '450:380:100:80', NULL),
(754, 'Certificate processing', 'Activity_0yo8nd0', 5, 69, '590:380:100:80', NULL),
(755, 'Notify certification ready', 'Activity_11l7oi5', 1, 69, '720:380:100:80', NULL),
(784, 'Compile certificate request', 'Activity_0e44ssw', 3, 74, '310:325:100:80', NULL),
(785, 'Certificate request', 'Activity_0m5vgkb', 1, 74, '450:325:100:80', NULL),
(786, 'Recieve notification', 'Activity_15a5z8l', 2, 74, '720:315:100:80', NULL),
(787, 'Download Certificate', 'Activity_1lh76my', 3, 74, '860:315:100:80', NULL),
(788, 'Acquire certificate request', 'Activity_075eaka', 2, 74, '450:560:100:80', NULL),
(789, 'Certificate processing', 'Activity_0yo8nd0', 5, 74, '590:560:100:80', NULL),
(790, 'Notify certification ready', 'Activity_11l7oi5', 1, 74, '720:560:100:80', NULL),
(791, 'Compile certificate request', 'Activity_0e44ssw', 3, 75, '310:320:100:80', NULL),
(792, 'Certificate request', 'Activity_0m5vgkb', 1, 75, '450:320:100:80', NULL),
(793, 'Recieve notification', 'Activity_15a5z8l', 2, 75, '720:310:100:80', NULL),
(794, 'Download Certificate', 'Activity_1lh76my', 3, 75, '860:310:100:80', NULL),
(795, 'Compile certificate request', 'Activity_0e44ssw', 3, 76, '310:320:100:80', NULL),
(796, 'Certificate request', 'Activity_0m5vgkb', 1, 76, '450:320:100:80', NULL),
(797, 'Recieve notification', 'Activity_15a5z8l', 2, 76, '720:310:100:80', NULL),
(798, 'Download Certificate', 'Activity_1lh76my', 3, 76, '860:310:100:80', NULL),
(799, 'Notifications', 'DataObjectReference_19l4554', 9, 76, '852:215:36:50', NULL),
(800, 'Certificate', 'DataObjectReference_0wv3x94', 9, 76, '602:215:36:50', NULL),
(801, 'Personal', 'DataObjectReference_0k0pelp', 9, 76, '422:205:36:50', NULL),
(802, 'Acquire certificate request', 'Activity_075eaka', 2, 76, '450:550:100:80', NULL),
(803, 'Certificate processing', 'Activity_0yo8nd0', 5, 76, '590:550:100:80', NULL),
(804, 'Notify certification ready', 'Activity_11l7oi5', 1, 76, '720:550:100:80', NULL),
(805, 'Test', 'DataObjectReference_hEUZTUe', 9, 76, '', NULL),
(806, 'Compile certificate request', 'Activity_0e44ssw', 3, 84, '310:220:100:80', NULL),
(807, 'Certificate request', 'Activity_0m5vgkb', 1, 84, '450:220:100:80', NULL),
(808, 'Recieve notification', 'Activity_15a5z8l', 2, 84, '720:210:100:80', NULL),
(809, 'Download Certificate', 'Activity_1lh76my', 3, 84, '860:210:100:80', NULL),
(810, 'test', 'DataObjectReference_0ivs7q5', 9, 84, '572:135:36:50', NULL),
(811, 'Acquire certificate request', 'Activity_075eaka', 2, 84, '450:450:100:80', NULL),
(812, 'Certificate processing', 'Activity_0yo8nd0', 5, 84, '590:450:100:80', NULL),
(813, 'Notify certification ready', 'Activity_11l7oi5', 1, 84, '720:450:100:80', NULL),
(814, 'Compile certificate request', 'Activity_0e44ssw', 3, 86, '310:150:100:80', NULL),
(815, 'Certificate request', 'Activity_0m5vgkb', 1, 86, '450:150:100:80', NULL),
(816, 'Recieve notification', 'Activity_15a5z8l', 2, 86, '720:140:100:80', NULL),
(817, 'Download Certificate', 'Activity_1lh76my', 3, 86, '860:140:100:80', NULL),
(818, 'Acquire certificate request', 'Activity_075eaka', 2, 86, '450:380:100:80', NULL),
(819, 'Certificate processing', 'Activity_0yo8nd0', 5, 86, '590:380:100:80', NULL),
(820, 'Notify certification ready', 'Activity_11l7oi5', 1, 86, '720:380:100:80', NULL),
(821, 'TestProva', 'Activity_rlsxDDztV', NULL, 86, '100:100:100:100', NULL),
(822, 'Compile certificate request', 'Activity_0e44ssw', 3, 87, '310:150:100:80', NULL),
(823, 'Certificate request', 'Activity_0m5vgkb', 1, 87, '450:150:100:80', NULL),
(824, 'Recieve notification', 'Activity_15a5z8l', 2, 87, '720:140:100:80', NULL),
(825, 'Download Certificate', 'Activity_1lh76my', 3, 87, '860:140:100:80', NULL),
(826, 'Acquire certificate request', 'Activity_075eaka', 2, 87, '450:380:100:80', NULL),
(827, 'Certificate processing', 'Activity_0yo8nd0', 5, 87, '590:380:100:80', NULL),
(828, 'Notify certification ready', 'Activity_11l7oi5', 1, 87, '720:380:100:80', NULL),
(829, 'TestProva', 'Activity_rlsxDDztV', NULL, 87, '100:100:100:100', NULL),
(830, 'Task1', 'Activity_12bl4v5', NULL, 88, '290:170:100:80', NULL),
(831, 'Task3', 'Activity_0yv2p2r', NULL, 88, '560:170:100:80', NULL),
(832, 'dato', 'DataObjectReference_14khqej', 9, 88, '412:95:36:50', NULL),
(833, 'Task2', 'Activity_12x6bgi', NULL, 88, '400:440:100:80', NULL),
(834, 'Task1', 'Activity_12bl4v5', NULL, 90, '290:170:100:80', NULL),
(835, 'Task3', 'Activity_0yv2p2r', NULL, 90, '560:170:100:80', NULL),
(836, 'dato', 'DataObjectReference_14khqej', 9, 90, '412:95:36:50', NULL),
(837, 'Task2', 'Activity_12x6bgi', NULL, 90, '400:440:100:80', NULL),
(838, 'Task1', 'Activity_12bl4v5', NULL, 91, '290:170:100:80', NULL),
(839, 'Task3', 'Activity_0yv2p2r', NULL, 91, '560:170:100:80', NULL),
(840, 'dato', 'DataObjectReference_14khqej', 9, 91, '412:95:36:50', NULL),
(841, 'Task2', 'Activity_12x6bgi', NULL, 91, '400:440:100:80', NULL),
(842, 'Task1', 'Activity_12bl4v5', NULL, 94, '290:170:100:80', NULL),
(843, 'Compile certificate request', 'Activity_0e44ssw', 3, 97, '310:320:100:80', NULL),
(844, 'Certificate request', 'Activity_0m5vgkb', 1, 97, '450:320:100:80', NULL),
(845, 'Recieve notification', 'Activity_15a5z8l', 2, 97, '720:310:100:80', NULL),
(846, 'Download Certificate', 'Activity_1lh76my', 3, 97, '860:310:100:80', NULL),
(847, 'Notifications', 'DataObjectReference_19l4554', 9, 97, '852:215:36:50', NULL),
(848, 'Certificate', 'DataObjectReference_0wv3x94', 9, 97, '602:215:36:50', NULL),
(849, 'Personal', 'DataObjectReference_0k0pelp', 9, 97, '422:205:36:50', NULL),
(850, 'Acquire certificate request', 'Activity_075eaka', 2, 97, '450:550:100:80', NULL),
(851, 'Certificate processing', 'Activity_0yo8nd0', 5, 97, '590:550:100:80', NULL),
(852, 'Notify certification ready', 'Activity_11l7oi5', 1, 97, '720:550:100:80', NULL),
(853, 'Compile certificate request', 'Activity_0e44ssw', 3, 98, '310:320:100:80', NULL),
(854, 'Certificate request', 'Activity_0m5vgkb', 1, 98, '450:320:100:80', NULL),
(855, 'Recieve notification', 'Activity_15a5z8l', 2, 98, '720:310:100:80', NULL),
(856, 'Download Certificate', 'Activity_1lh76my', 3, 98, '860:310:100:80', NULL),
(857, 'Notifications', 'DataObjectReference_19l4554', 9, 98, '852:215:36:50', NULL),
(858, 'Certificate', 'DataObjectReference_0wv3x94', 9, 98, '602:215:36:50', NULL),
(859, 'Personal', 'DataObjectReference_0k0pelp', 9, 98, '422:205:36:50', NULL),
(860, 'Acquire certificate request', 'Activity_075eaka', 2, 98, '450:550:100:80', NULL),
(861, 'Certificate processing', 'Activity_0yo8nd0', 5, 98, '590:550:100:80', NULL),
(862, 'Notify certification ready', 'Activity_11l7oi5', 1, 98, '720:550:100:80', NULL),
(863, 'Compile certificate request', 'Activity_0e44ssw', 3, 99, '310:320:100:80', NULL),
(864, 'Certificate request', 'Activity_0m5vgkb', 1, 99, '450:320:100:80', NULL),
(865, 'Recieve notification', 'Activity_15a5z8l', 2, 99, '720:310:100:80', NULL),
(866, 'Download Certificate', 'Activity_1lh76my', 3, 99, '860:310:100:80', NULL),
(867, 'Notifications', 'DataObjectReference_19l4554', 9, 99, '852:215:36:50', NULL),
(868, 'Certificate', 'DataObjectReference_0wv3x94', 9, 99, '602:215:36:50', NULL),
(869, 'Personal', 'DataObjectReference_0k0pelp', 9, 99, '422:205:36:50', NULL),
(870, 'Acquire certificate request', 'Activity_075eaka', 2, 99, '450:550:100:80', NULL),
(871, 'Certificate processing', 'Activity_0yo8nd0', 5, 99, '590:550:100:80', NULL),
(872, 'Notify certification ready', 'Activity_11l7oi5', 1, 99, '720:550:100:80', NULL),
(873, 'Compile certificate request', 'Activity_0e44ssw', 3, 102, '310:320:100:80', NULL),
(874, 'Certificate request', 'Activity_0m5vgkb', 1, 102, '450:320:100:80', NULL),
(875, 'Recieve notification', 'Activity_15a5z8l', 2, 102, '720:310:100:80', NULL),
(876, 'Download Certificate', 'Activity_1lh76my', 3, 102, '860:310:100:80', NULL),
(877, 'Notifications', 'DataObjectReference_19l4554', 9, 102, '852:215:36:50', NULL),
(878, 'Certificate', 'DataObjectReference_0wv3x94', 9, 102, '602:215:36:50', NULL),
(879, 'Personal', 'DataObjectReference_0k0pelp', 9, 102, '422:205:36:50', NULL),
(880, 'Acquire certificate request', 'Activity_075eaka', 2, 102, '450:550:100:80', NULL),
(881, 'Certificate processing', 'Activity_0yo8nd0', 5, 102, '590:550:100:80', NULL),
(882, 'Notify certification ready', 'Activity_11l7oi5', 1, 102, '720:550:100:80', NULL),
(883, 'Compile certificate request', 'Activity_0e44ssw', 3, 103, '310:320:100:80', NULL),
(884, 'Certificate request', 'Activity_0m5vgkb', 1, 103, '450:320:100:80', NULL),
(885, 'Recieve notification', 'Activity_15a5z8l', 2, 103, '720:310:100:80', NULL),
(886, 'Download Certificate', 'Activity_1lh76my', 3, 103, '860:310:100:80', NULL),
(887, 'Compile certificate request', 'Activity_0e44ssw', 3, 104, '310:320:100:80', NULL),
(888, 'Certificate request', 'Activity_0m5vgkb', 1, 104, '450:320:100:80', NULL),
(889, 'Recieve notification', 'Activity_15a5z8l', 2, 104, '720:310:100:80', NULL),
(890, 'Download Certificate', 'Activity_1lh76my', 3, 104, '860:310:100:80', NULL),
(891, 'Notifications', 'DataObjectReference_19l4554', 9, 104, '852:215:36:50', 'Process_0gzphmm'),
(892, 'Certificate', 'DataObjectReference_0wv3x94', 9, 104, '602:215:36:50', 'Process_0gzphmm'),
(893, 'Personal', 'DataObjectReference_0k0pelp', 9, 104, '422:205:36:50', 'Process_0gzphmm'),
(894, 'Acquire certificate request', 'Activity_075eaka', 2, 104, '450:550:100:80', NULL),
(895, 'Certificate processing', 'Activity_0yo8nd0', 5, 104, '590:550:100:80', NULL),
(896, 'Notify certification ready', 'Activity_11l7oi5', 1, 104, '720:550:100:80', NULL),
(897, 'Compile certificate request', 'Activity_0e44ssw', 3, 105, '310:320:100:80', NULL),
(898, 'Certificate request', 'Activity_0m5vgkb', 1, 105, '450:320:100:80', NULL),
(899, 'Recieve notification', 'Activity_15a5z8l', 2, 105, '720:310:100:80', NULL),
(900, 'Download Certificate', 'Activity_1lh76my', 3, 105, '860:310:100:80', NULL),
(901, 'Notifications', 'DataObjectReference_19l4554', 9, 105, '852:215:36:50', 'Process_0gzphmm'),
(902, 'Certificate', 'DataObjectReference_0wv3x94', 9, 105, '602:215:36:50', 'Process_0gzphmm'),
(903, 'Personal', 'DataObjectReference_0k0pelp', 9, 105, '422:205:36:50', 'Process_0gzphmm'),
(904, 'Acquire certificate request', 'Activity_075eaka', 2, 105, '450:550:100:80', NULL),
(905, 'Certificate processing', 'Activity_0yo8nd0', 5, 105, '590:550:100:80', NULL),
(906, 'Notify certification ready', 'Activity_11l7oi5', 1, 105, '720:550:100:80', NULL),
(907, 'Compile certificate request', 'Activity_0e44ssw', 3, 106, '310:320:100:80', 'Process_0gzphmm'),
(908, 'Certificate request', 'Activity_0m5vgkb', 1, 106, '450:320:100:80', 'Process_0gzphmm'),
(909, 'Recieve notification', 'Activity_15a5z8l', 2, 106, '720:310:100:80', 'Process_0gzphmm'),
(910, 'Download Certificate', 'Activity_1lh76my', 3, 106, '860:310:100:80', 'Process_0gzphmm'),
(911, 'Notifications', 'DataObjectReference_19l4554', 9, 106, '852:215:36:50', 'Process_0gzphmm'),
(912, 'Certificate', 'DataObjectReference_0wv3x94', 9, 106, '602:215:36:50', 'Process_0gzphmm'),
(913, 'Personal', 'DataObjectReference_0k0pelp', 9, 106, '422:205:36:50', 'Process_0gzphmm'),
(914, 'Acquire certificate request', 'Activity_075eaka', 2, 106, '450:550:100:80', 'Process_1mmbaau'),
(915, 'Certificate processing', 'Activity_0yo8nd0', 5, 106, '590:550:100:80', 'Process_1mmbaau'),
(916, 'Notify certification ready', 'Activity_11l7oi5', 1, 106, '720:550:100:80', 'Process_1mmbaau'),
(917, 'Compile certificate request', 'Activity_0e44ssw', 3, 107, '310:320:100:80', 'Process_0gzphmm'),
(918, 'Certificate request', 'Activity_0m5vgkb', 1, 107, '450:320:100:80', 'Process_0gzphmm'),
(919, 'Recieve notification', 'Activity_15a5z8l', 2, 107, '720:310:100:80', 'Process_0gzphmm'),
(920, 'Download Certificate', 'Activity_1lh76my', 3, 107, '860:310:100:80', 'Process_0gzphmm'),
(921, 'Notifications', 'DataObjectReference_19l4554', 9, 107, '852:215:36:50', 'Process_0gzphmm'),
(922, 'Certificate', 'DataObjectReference_0wv3x94', 9, 107, '602:215:36:50', 'Process_0gzphmm'),
(923, 'Personal', 'DataObjectReference_0k0pelp', 9, 107, '422:205:36:50', 'Process_0gzphmm'),
(924, 'Acquire certificate request', 'Activity_075eaka', 2, 107, '450:550:100:80', 'Process_1mmbaau'),
(925, 'Certificate processing', 'Activity_0yo8nd0', 5, 107, '590:550:100:80', 'Process_1mmbaau'),
(926, 'Notify certification ready', 'Activity_11l7oi5', 1, 107, '720:550:100:80', 'Process_1mmbaau'),
(927, 'Compile certificate request', 'Activity_0e44ssw', 3, 108, '310:150:100:80', 'Process_0gzphmm'),
(928, 'Certificate request', 'Activity_0m5vgkb', 1, 108, '450:150:100:80', 'Process_0gzphmm'),
(929, 'Recieve notification', 'Activity_15a5z8l', 2, 108, '720:140:100:80', 'Process_0gzphmm'),
(930, 'Download Certificate', 'Activity_1lh76my', 3, 108, '860:140:100:80', 'Process_0gzphmm'),
(931, 'Acquire certificate request', 'Activity_075eaka', 2, 108, '450:380:100:80', 'Process_1mmbaau'),
(932, 'Certificate processing', 'Activity_0yo8nd0', 5, 108, '590:380:100:80', 'Process_1mmbaau'),
(933, 'Notify certification ready', 'Activity_11l7oi5', 1, 108, '720:380:100:80', 'Process_1mmbaau'),
(934, 'Compile certificate request', 'Activity_0e44ssw', 3, 109, '310:320:100:80', 'Process_0gzphmm'),
(935, 'Certificate request', 'Activity_0m5vgkb', 1, 109, '450:320:100:80', 'Process_0gzphmm'),
(936, 'Recieve notification', 'Activity_15a5z8l', 2, 109, '720:310:100:80', 'Process_0gzphmm'),
(937, 'Download Certificate', 'Activity_1lh76my', 3, 109, '860:310:100:80', 'Process_0gzphmm'),
(938, 'Notifications', 'DataObjectReference_19l4554', 9, 109, '852:215:36:50', 'Process_0gzphmm'),
(939, 'Certificate', 'DataObjectReference_0wv3x94', 9, 109, '602:215:36:50', 'Process_0gzphmm'),
(940, 'Personal', 'DataObjectReference_0k0pelp', 9, 109, '422:205:36:50', 'Process_0gzphmm'),
(941, 'Acquire certificate request', 'Activity_075eaka', 2, 109, '450:550:100:80', 'Process_1mmbaau'),
(942, 'Certificate processing', 'Activity_0yo8nd0', 5, 109, '590:550:100:80', 'Process_1mmbaau'),
(943, 'Notify certification ready', 'Activity_11l7oi5', 1, 109, '720:550:100:80', 'Process_1mmbaau'),
(944, 'Task1', 'Activity_12bl4v5', 1, 110, '290:170:100:80', 'Process_0f53oai'),
(945, 'Task3', 'Activity_0yv2p2r', 1, 110, '560:170:100:80', 'Process_0f53oai'),
(946, 'dato', 'DataObjectReference_14khqej', 9, 110, '412:95:36:50', 'Process_0f53oai'),
(947, 'Task2', 'Activity_12x6bgi', 1, 110, '400:440:100:80', 'Process_0mw1ti3'),
(948, 'Task1', 'Activity_12bl4v5', 1, 111, '290:170:100:80', 'Process_0f53oai'),
(949, 'Task3', 'Activity_0yv2p2r', 4, 111, '560:170:100:80', 'Process_0f53oai'),
(950, 'Task2', 'Activity_12x6bgi', 5, 111, '400:440:100:80', 'Process_0mw1ti3'),
(951, 'Task2', 'Activity_1q644ta', 1, 112, '614:159:100:80', 'Process_0373j7m'),
(952, 'Task 1', 'Activity_09jjdbx', 3, 112, '390:159:100:80', 'Process_0373j7m'),
(953, 'Task2', 'Activity_1q644ta', 1, 113, '614:159:100:80', 'Process_0373j7m'),
(954, 'Task 1', 'Activity_09jjdbx', 3, 113, '390:159:100:80', 'Process_0373j7m'),
(955, 'Task2', 'Activity_1q644ta', 1, 114, '614:159:100:80', 'Process_0373j7m'),
(956, 'Task 1', 'Activity_09jjdbx', 3, 114, '390:159:100:80', 'Process_0373j7m'),
(957, 'Task2', 'Activity_1q644ta', 1, 115, '614:159:100:80', 'Process_0373j7m'),
(958, 'Task 1', 'Activity_09jjdbx', 3, 115, '390:159:100:80', 'Process_0373j7m'),
(959, 'Task1', 'Activity_12bl4v5', 1, 116, '290:170:100:80', 'Process_0f53oai'),
(960, 'Task3', 'Activity_0yv2p2r', 2, 116, '560:170:100:80', 'Process_0f53oai'),
(961, 'dato', 'DataObjectReference_14khqej', 9, 116, '412:95:36:50', 'Process_0f53oai'),
(962, 'Task2', 'Activity_12x6bgi', 1, 116, '400:440:100:80', 'Process_0mw1ti3'),
(963, 'Task2', 'Activity_1q644ta', 1, 117, '614:159:100:80', 'Process_0373j7m'),
(964, 'Task 1', 'Activity_09jjdbx', 3, 117, '390:159:100:80', 'Process_0373j7m'),
(965, 'Task2', 'Activity_1q644ta', 1, 118, '614:159:100:80', 'Process_0373j7m'),
(966, 'Task 1', 'Activity_09jjdbx', 3, 118, '390:159:100:80', 'Process_0373j7m'),
(967, 'Task2', 'Activity_1q644ta', 1, 119, '614:159:100:80', 'Process_0373j7m'),
(968, 'Task 1', 'Activity_09jjdbx', 3, 119, '390:159:100:80', 'Process_0373j7m'),
(969, 'task1', 'Activity_1iaonrp', 1, 120, '350:220:100:80', 'Process_03g1b8a'),
(970, 'task2', 'Activity_1n6fgjg', 5, 120, '520:220:100:80', 'Process_03g1b8a'),
(971, 'task1', 'Activity_1iaonrp', 1, 121, '350:220:100:80', 'Process_03g1b8a'),
(972, 'task2', 'Activity_1n6fgjg', 3, 121, '520:220:100:80', 'Process_03g1b8a'),
(973, 'task1', 'Activity_1iaonrp', 1, 122, '350:220:100:80', 'Process_03g1b8a'),
(974, 'task2', 'Activity_1n6fgjg', 1, 122, '520:220:100:80', 'Process_03g1b8a'),
(975, 'task1', 'Activity_1iaonrp', 1, 123, '350:220:100:80', 'Process_03g1b8a'),
(976, 'task2', 'Activity_1n6fgjg', 1, 123, '520:220:100:80', 'Process_03g1b8a'),
(977, 'task1', 'Activity_1iaonrp', 1, 124, '350:220:100:80', 'Process_03g1b8a'),
(978, 'task2', 'Activity_1n6fgjg', 2, 124, '520:220:100:80', 'Process_03g1b8a'),
(979, 'task1', 'Activity_1iaonrp', 1, 125, '350:220:100:80', 'Process_03g1b8a'),
(980, 'task2', 'Activity_1n6fgjg', 1, 125, '520:220:100:80', 'Process_03g1b8a'),
(981, 'task1', 'Activity_1iaonrp', 1, 126, '350:220:100:80', 'Process_03g1b8a'),
(982, 'task2', 'Activity_1n6fgjg', 1, 126, '520:220:100:80', 'Process_03g1b8a'),
(983, 'task1', 'Activity_1iaonrp', 1, 127, '350:220:100:80', 'Process_03g1b8a'),
(984, 'task2', 'Activity_1n6fgjg', 1, 127, '520:220:100:80', 'Process_03g1b8a'),
(985, 'task1', 'Activity_1iaonrp', 1, 128, '350:220:100:80', 'Process_03g1b8a'),
(986, 'task2', 'Activity_1n6fgjg', 1, 128, '520:220:100:80', 'Process_03g1b8a'),
(987, 'task1', 'Activity_1iaonrp', 1, 129, '350:220:100:80', 'Process_03g1b8a'),
(988, 'task2', 'Activity_1n6fgjg', 1, 129, '520:220:100:80', 'Process_03g1b8a'),
(989, 'task1', 'Activity_1iaonrp', 1, 130, '350:220:100:80', 'Process_03g1b8a'),
(990, 'task2', 'Activity_1n6fgjg', 2, 130, '520:220:100:80', 'Process_03g1b8a'),
(991, 'task1', 'Activity_1iaonrp', 1, 131, '350:220:100:80', 'Process_03g1b8a'),
(992, 'task2', 'Activity_1n6fgjg', 1, 131, '520:220:100:80', 'Process_03g1b8a'),
(993, 'task1', 'Activity_1iaonrp', 1, 132, '350:220:100:80', 'Process_03g1b8a'),
(994, 'task2', 'Activity_1n6fgjg', 1, 132, '520:220:100:80', 'Process_03g1b8a'),
(995, 'task1', 'Activity_1iaonrp', 1, 133, '350:220:100:80', 'Process_03g1b8a'),
(996, 'task2', 'Activity_1n6fgjg', 1, 133, '520:220:100:80', 'Process_03g1b8a'),
(997, 'task1', 'Activity_1iaonrp', 1, 134, '350:220:100:80', 'Process_03g1b8a'),
(998, 'task2', 'Activity_1n6fgjg', 1, 134, '520:220:100:80', 'Process_03g1b8a'),
(999, 'task1', 'Activity_1iaonrp', 1, 135, '350:220:100:80', 'Process_03g1b8a'),
(1000, 'task2', 'Activity_1n6fgjg', 1, 135, '520:220:100:80', 'Process_03g1b8a'),
(1001, 'task1', 'Activity_1iaonrp', 1, 136, '350:220:100:80', 'Process_03g1b8a'),
(1002, 'task2', 'Activity_1n6fgjg', 5, 136, '520:220:100:80', 'Process_03g1b8a'),
(1003, 'Prenotazione telefonica', 'Activity_180pib6', 1, 137, '390:100:100:80', 'Process_1xyvfli'),
(1004, 'Prenotazione con QRCode', 'Activity_0cm5v2m', 1, 137, '390:190:100:80', 'Process_1xyvfli'),
(1005, 'Prenotazione tramite E-mail', 'Activity_1lwwsbj', 1, 137, '390:290:100:80', 'Process_1xyvfli'),
(1006, 'Prenotazione Medico di Base', 'Activity_12dpk9l', 1, 137, '390:400:100:80', 'Process_1xyvfli'),
(1007, 'Pagare il Ticket', 'Activity_017ezyy', 1, 137, '860:240:100:80', 'Process_1xyvfli'),
(1008, 'Effettua Pagamento', 'Activity_13i8qks', 1, 137, '1230:170:100:80', 'Process_1xyvfli'),
(1009, 'Si reca in Ambulatorio', 'Activity_0hc8aph', 1, 137, '1780:280:100:80', 'Process_1xyvfli'),
(1010, 'Fornisce Dati Personali', 'Activity_1atxzvc', 1, 137, '1930:280:100:80', 'Process_1xyvfli'),
(1011, 'Fornisce i Dati', 'Activity_0o3mpaz', 1, 137, '2270:390:100:80', 'Process_1xyvfli'),
(1012, 'Ricevo Esiti', 'Activity_1x89g9o', 2, 137, '2580:290:100:80', 'Process_1xyvfli'),
(1013, 'Convocazione ricevuta', 'Activity_0xi88c7', 1, 137, '2860:200:100:80', 'Process_1xyvfli'),
(1014, 'Ricezione Ricevuta Pagamento', 'Activity_0sfu0vb', 2, 137, '1400:170:100:80', 'Process_1xyvfli'),
(1015, 'Riceve Richiesta di Prenotazione', 'Activity_13s2bky', 1, 137, '550:920:100:80', 'Process_1ombx9c'),
(1016, 'Verifica Disponibilità', 'Activity_0liik3g', 1, 137, '690:920:100:80', 'Process_1ombx9c'),
(1017, 'Comunicazione Disponibilità', 'Activity_0zdo204', 1, 137, '830:920:100:80', 'Process_1ombx9c'),
(1018, 'Ricezione Richiesta Pagamento', 'Activity_1bh1nno', 5, 137, '1030:760:100:80', 'Process_1ombx9c'),
(1019, 'Comunica al paziente che non deve pagare', 'Activity_0t40eea', 1, 137, '1290:690:100:80', 'Process_1ombx9c'),
(1020, 'Comunica l\'importo da pagare', 'Activity_0mbd5ys', 1, 137, '1300:800:100:80', 'Process_1ombx9c'),
(1021, 'Ricezione del Pagamento', 'Activity_1in31w4', 2, 137, '1440:800:100:80', 'Process_1ombx9c'),
(1022, 'Numero di Prenotazione', 'DataObjectReference_07ohlfo', 9, 137, '1682:705:36:50', 'Process_1ombx9c'),
(1023, 'Verifica numero di Prenotazione', 'Activity_09e2msh', 1, 137, '1780:1050:100:80', 'Process_1ombx9c'),
(1024, 'Identifica Paziente', 'Activity_1hs56sq', 1, 137, '1930:1050:100:80', 'Process_1ombx9c'),
(1025, 'Effettua Accesso', 'Activity_1fgr5jf', 1, 137, '2080:1050:100:80', 'Process_1ombx9c'),
(1026, 'Chiede al paziente la storia Clinica', 'Activity_1unzhs2', 4, 137, '2370:1160:100:80', 'Process_1ombx9c'),
(1027, 'Legge Storia Clinica', 'Activity_0uooic3', 1, 137, '2370:1050:100:80', 'Process_1ombx9c'),
(1028, 'Inserisce i dati nel fascicolo', 'Activity_16j6eqq', 2, 137, '2570:1160:100:80', 'Process_1ombx9c'),
(1029, 'Esegue Esami', 'Activity_0xov70h', 1, 137, '2820:1050:100:80', 'Process_1ombx9c'),
(1030, 'Convocazione per visita specialistica', 'Activity_0vyog11', 1, 137, '3210:1050:100:80', 'Process_1ombx9c'),
(1031, 'Invia Risultati', 'Activity_166uysk', 1, 137, '2990:1050:100:80', 'Process_1ombx9c'),
(1032, 'task1', 'Activity_0sk03aw', 1, 138, '320:170:100:80', 'Process_1lbvsgn'),
(1033, 'task2', 'Activity_0js94ly', 1, 138, '480:170:100:80', 'Process_1lbvsgn'),
(1034, 'Dato1', 'DataObjectReference_pCDbTSD', 9, 138, '', NULL),
(1035, 'Dato2', 'DataObjectReference_qGVQsmj', 9, 138, '', NULL),
(1036, 'Prenotazione telefonica', 'Activity_180pib6', 1, 139, '390:100:100:80', 'Process_1xyvfli'),
(1037, 'Prenotazione con QRCode', 'Activity_0cm5v2m', 1, 139, '390:190:100:80', 'Process_1xyvfli'),
(1038, 'Prenotazione tramite E-mail', 'Activity_1lwwsbj', 5, 139, '390:290:100:80', 'Process_1xyvfli'),
(1039, 'Prenotazione Medico di Base', 'Activity_12dpk9l', 3, 139, '390:400:100:80', 'Process_1xyvfli'),
(1040, 'Pagare il Ticket', 'Activity_017ezyy', 1, 139, '860:240:100:80', 'Process_1xyvfli'),
(1041, 'Effettua Pagamento', 'Activity_13i8qks', 1, 139, '1230:170:100:80', 'Process_1xyvfli'),
(1042, 'Si reca in Ambulatorio', 'Activity_0hc8aph', 1, 139, '1780:280:100:80', 'Process_1xyvfli'),
(1043, 'Fornisce Dati Personali', 'Activity_1atxzvc', 1, 139, '1930:280:100:80', 'Process_1xyvfli'),
(1044, 'Fornisce i Dati', 'Activity_0o3mpaz', 1, 139, '2270:390:100:80', 'Process_1xyvfli'),
(1045, 'Ricevo Esiti', 'Activity_1x89g9o', 2, 139, '2580:290:100:80', 'Process_1xyvfli'),
(1046, 'Convocazione ricevuta', 'Activity_0xi88c7', 1, 139, '2860:200:100:80', 'Process_1xyvfli'),
(1047, 'Ricezione Ricevuta Pagamento', 'Activity_0sfu0vb', 2, 139, '1400:170:100:80', 'Process_1xyvfli'),
(1048, 'Riceve Richiesta di Prenotazione', 'Activity_13s2bky', 1, 139, '550:920:100:80', 'Process_1ombx9c'),
(1049, 'Verifica Disponibilità', 'Activity_0liik3g', 1, 139, '690:920:100:80', 'Process_1ombx9c'),
(1050, 'Comunicazione Disponibilità', 'Activity_0zdo204', 4, 139, '830:920:100:80', 'Process_1ombx9c'),
(1051, 'Ricezione Richiesta Pagamento', 'Activity_1bh1nno', 1, 139, '1030:760:100:80', 'Process_1ombx9c'),
(1052, 'Comunica al paziente che non deve pagare', 'Activity_0t40eea', 1, 139, '1290:690:100:80', 'Process_1ombx9c'),
(1053, 'Comunica l\'importo da pagare', 'Activity_0mbd5ys', 1, 139, '1300:800:100:80', 'Process_1ombx9c'),
(1054, 'Ricezione del Pagamento', 'Activity_1in31w4', 2, 139, '1440:800:100:80', 'Process_1ombx9c'),
(1055, 'Numero di Prenotazione', 'DataObjectReference_07ohlfo', 9, 139, '1682:705:36:50', 'Process_1ombx9c'),
(1056, 'Verifica numero di Prenotazione', 'Activity_09e2msh', 1, 139, '1780:1050:100:80', 'Process_1ombx9c'),
(1057, 'Identifica Paziente', 'Activity_1hs56sq', 1, 139, '1930:1050:100:80', 'Process_1ombx9c'),
(1058, 'Effettua Accesso', 'Activity_1fgr5jf', 1, 139, '2080:1050:100:80', 'Process_1ombx9c'),
(1059, 'Chiede al paziente la storia Clinica', 'Activity_1unzhs2', 1, 139, '2370:1160:100:80', 'Process_1ombx9c'),
(1060, 'Legge Storia Clinica', 'Activity_0uooic3', 1, 139, '2370:1050:100:80', 'Process_1ombx9c'),
(1061, 'Inserisce i dati nel fascicolo', 'Activity_16j6eqq', 2, 139, '2570:1160:100:80', 'Process_1ombx9c'),
(1062, 'Esegue Esami', 'Activity_0xov70h', 1, 139, '2820:1050:100:80', 'Process_1ombx9c'),
(1063, 'Convocazione per visita specialistica', 'Activity_0vyog11', 1, 139, '3210:1050:100:80', 'Process_1ombx9c'),
(1064, 'Invia Risultati', 'Activity_166uysk', 1, 139, '2990:1050:100:80', 'Process_1ombx9c'),
(1065, 'task1', 'Activity_1nai1e7', 1, 140, '360:120:100:80', 'Process_020lh86'),
(1066, 'task2', 'Activity_16dgztb', 5, 140, '530:120:100:80', 'Process_020lh86'),
(1067, 'PROVA', 'DataObjectReference_iOQNPGI', 9, 140, '', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_has_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset_has_attribute`
--

INSERT INTO `parsingbpmn_asset_has_attribute` (`id`, `asset_id`, `attribute_id`) VALUES
(418, 742, 7),
(419, 743, 1),
(420, 744, 4),
(421, 745, 7),
(422, 746, 4),
(423, 747, 10),
(424, 748, 1),
(425, 749, 7),
(426, 750, 2),
(427, 751, 5),
(428, 752, 7),
(429, 753, 4),
(430, 754, 10),
(431, 755, 1),
(439, 853, 7),
(440, 854, 1),
(441, 855, 4),
(442, 856, 7),
(443, 860, 4),
(444, 861, 10),
(445, 862, 1),
(446, 853, 7),
(447, 854, 1),
(448, 855, 4),
(449, 856, 7),
(450, 860, 4),
(451, 861, 10),
(452, 862, 1),
(453, 917, 7),
(454, 918, 1),
(455, 919, 4),
(456, 920, 7),
(457, 924, 4),
(458, 925, 10),
(459, 926, 1),
(460, 927, 7),
(461, 928, 1),
(462, 929, 4),
(463, 930, 7),
(464, 931, 4),
(465, 932, 10),
(466, 933, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_has_dataobject_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_dataobject_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `asset_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_type`
--

CREATE TABLE `parsingbpmn_asset_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset_type`
--

INSERT INTO `parsingbpmn_asset_type` (`id`, `name`, `description`) VALUES
(1, 'Send task', 'A Send Task is represents a task that sends a Message to another lane or pool. The Task is completed once the Message has been sent.'),
(2, 'Receive task', 'A Receive Task indicates that the process has to wait for a message to arrive in order to continue. The Task is completed once the message has received.'),
(3, 'User task', 'A User Task represents that a human performer performs the Task with the use of a software application.'),
(4, 'Manual task', 'A Manual Task is a Task that is performed physically.'),
(5, 'Service task', 'A Service Task is a Task that uses a Web service, an automated application, or other kinds of service in completing the task.'),
(6, 'Script task', 'A Script Task is executed by a business process engine. The task defines a script that the engine can interpret. When the task begin, the engine will execute the script. The Task will be completed when the script is completed.'),
(7, 'Business rule task', 'It provides a mechanism for a process to provide input to a Business Rules Engine and then obtain the output provided by the Business Rules Engine. As for service and script task, it is a task without human interaction.'),
(9, 'DataObject', 'Data Objects may represent e.g. documents used in a process, both in physical and digital form. They look like a page with folded top right corner');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_attribute`
--

CREATE TABLE `parsingbpmn_attribute` (
  `id` int(11) NOT NULL,
  `attribute_name` varchar(100) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `attribute_value_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_attribute`
--

INSERT INTO `parsingbpmn_attribute` (`id`, `attribute_name`, `asset_type_id`, `attribute_value_id`) VALUES
(1, 'Communication typology\r\n', 1, 1),
(2, 'Communication typology\r\n', 1, 2),
(3, 'Communication typology\r\n', 1, 3),
(4, 'Communication typology\r\n', 2, 1),
(5, 'Communication typology\r\n', 2, 2),
(6, 'Communication typology\r\n', 2, 3),
(7, 'Application typology\r\n', 3, 4),
(8, 'Application typology\r\n', 3, 5),
(9, 'Task type\r\n', 4, 6),
(10, 'Service typology\r\n', 5, 7),
(11, 'Service typology\r\n', 5, 8),
(12, 'Task type\r\n', 6, 9),
(13, 'Task type\r\n', 7, 10),
(14, 'Communication typology', 1, 11),
(15, 'Communication typology', 2, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_attribute_value`
--

CREATE TABLE `parsingbpmn_attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_attribute_value`
--

INSERT INTO `parsingbpmn_attribute_value` (`id`, `value`) VALUES
(1, 'PEC communication'),
(2, 'Mail communication'),
(3, 'Post office communication'),
(4, 'Online'),
(5, 'Offline'),
(6, 'Manual task'),
(7, 'Statefull'),
(8, 'Stateless'),
(9, 'Script task'),
(10, 'Business rule task'),
(11, 'Interoperability protocol');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_control`
--

CREATE TABLE `parsingbpmn_control` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_control`
--

INSERT INTO `parsingbpmn_control` (`id`, `name`, `description`) VALUES
(1, 'Inventory and Control of Hardware Assets', 'Actively manage (inventory, track, and correct) all hardware devices on the network so that only authorized devices are given access, and unauthorized and unmanaged devices are found and prevented from gaining access.'),
(2, 'Inventory and Control of Software Assets', 'Actively manage (inventory, track, and correct) all software on the network so that only authorized software is installed and can execute, and that unauthorized and unmanaged software is found and prevented from installation or execution. '),
(3, 'Continuous Vulnerability Management', 'Continuously acquire, assess, and take action on new information in order to identify vulnerabilities, remediate, and minimize the window of opportunity for attackers.'),
(4, 'Controlled Use of Administrative Privileges', 'The processes and tools used to track/control/prevent/correct the use, assignment, and configuration of administrative privileges on computers, networks, and applications.'),
(5, 'Secure Configuration for Hardware and Software on Mobile Devices, Laptops, Workstations and Servers', 'Establish, implement, and actively manage (track, report on, correct) the security configuration of mobile devices, laptops, servers, and workstations using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings. '),
(6, 'Maintenance, Monitoring and Analysis of Audit Logs', 'Collect, manage, and analyze audit logs of events that could help detect, understand, or recover from an attack. '),
(7, 'Email and Web Browser Protections', 'Minimize the attack surface and the opportunities for attackers to manipulate human behavior though their interaction with web browsers and email systems. '),
(8, 'Malware Defenses', 'Control the installation, spread, and execution of malicious code at multiple points in the enterprise, while optimizing the use of automation to enable rapid updating of defense, data gathering, and corrective action.'),
(9, 'Limitation and Control of Network Ports, Protocols, and Services', 'Manage (track/control/correct) the ongoing operational use of ports, protocols, and services on networked devices in order to minimize windows of vulnerability available to attackers.'),
(10, 'Data Recovery Capabilities', 'The processes and tools used to properly back up critical information with a proven methodology for timely recovery of it.'),
(11, 'Secure Configuration for Network Devices, such as Firewalls, Routers and Switches', 'Establish, implement, and actively manage (track, report on, correct) the security configuration of network infrastructure devices using a rigorous configuration management and change control process in order to prevent attackers from exploiting vulnerable services and settings.'),
(12, 'Boundary Defense', 'Detect/prevent/correct the flow of information transferring networks of different trust levels with a focus on security-damaging data.'),
(13, 'Data Protection', 'The processes and tools used to prevent data exfiltration, mitigate the effects of exfiltrated data, and ensure the privacy and integrity of sensitive information.'),
(14, 'Controlled Access Based on the Need to Know', 'The processes and tools used to track/control/prevent/correct secure access to critical assets (e.g., information, resources, systems) according to the formal determination of which persons, computers, and applications have a need and right to access these critical assets based on an approved classification.'),
(15, 'Wireless Access Control', 'The processes and tools used to track/control/prevent/correct the security use of wireless local area networks (WLANs), access points, and wireless client systems.'),
(16, 'Account Monitoring and Control', 'Actively manage the life cycle of system and application accounts - their creation, use, dormancy, deletion - in order to minimize opportunities for attackers to leverage them.'),
(17, 'Implement a Security Awareness and Training Program', 'For all functional roles in the organization (prioritizing those mission-critical to the business and its security), identify the specific knowledge, skills, and abilities needed to support defense of the enterprise; develop and execute an integrated plan to assess, identify gaps, and remediate through policy, organizational planning, training, and awareness programs.'),
(18, 'Application Software Security', 'Manage the security life cycle of all in-house developed and acquired software in order to prevent, detect, and correct security weaknesses.'),
(19, 'Incident Response and Management', 'Protect the organization\'s information, as well as its reputation, by developing and implementing an incident response infrastructure (e.g., plans, defined roles, training, communications, management oversight) for quickly discovering an attack and then effectively containing the damage, eradicating the attacker\'s presence, and restoring the integrity of the network and systems.'),
(20, 'Penetration Tests and Red Team Exercises', 'Test the overall strength of an organization\'s defense (the technology, the processes, and the people) by simulating the objectives and actions of an attacker.');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_dataobjectattribute`
--

CREATE TABLE `parsingbpmn_dataobjectattribute` (
  `id` int(11) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `order_of_size` varchar(100) NOT NULL,
  `personal` varchar(100) NOT NULL,
  `load_dependece` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_overallrisk`
--

CREATE TABLE `parsingbpmn_overallrisk` (
  `id` int(11) NOT NULL,
  `spoofing` varchar(100) NOT NULL,
  `tampering` varchar(100) NOT NULL,
  `repudiation` varchar(100) NOT NULL,
  `information` varchar(100) NOT NULL,
  `dos` varchar(100) NOT NULL,
  `eop` varchar(100) NOT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_overallrisk`
--

INSERT INTO `parsingbpmn_overallrisk` (`id`, `spoofing`, `tampering`, `repudiation`, `information`, `dos`, `eop`, `asset_id`, `process_id`, `system_id`) VALUES
(82, 'LOW', 'LOW', 'LOW', 'VERY LOW', 'HIGH', 'LOW', 749, 69, 11),
(83, 'MEDIUM', 'LOW', 'VERY LOW', 'LOW', 'HIGH', 'LOW', 750, 69, 11),
(84, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'HIGH', 'LOW', 751, 69, 11),
(85, 'LOW', 'LOW', 'LOW', 'VERY LOW', 'HIGH', 'LOW', 752, 69, 11),
(86, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 753, 69, 11),
(87, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'HIGH', 'VERY LOW', 754, 69, 11),
(88, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'HIGH', 'LOW', 755, 69, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_process`
--

CREATE TABLE `parsingbpmn_process` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `xml` varchar(100) NOT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_process`
--

INSERT INTO `parsingbpmn_process` (`id`, `name`, `xml`, `system_id`) VALUES
(68, 'Municipality', 'processes/xml/bpmn_1.0_alxG2XZ.bpmn', 8),
(69, 'Municipality', 'processes/xml/bpmn_1.0_kYQIAXL.bpmn', 11),
(74, 'Municipality2', 'processes/xml/diagram_3.bpmn', 11),
(75, 'DataObjectExample', 'processes/xml/dataobjsu2task.bpmn', 11),
(76, 'DataObjectExample', '', 11),
(77, 'test', 'processes/xml/bpmnDataobj.bpmn', 11),
(78, 'test', 'processes/xml/bpmnDataobj_HDK98xl.bpmn', 11),
(79, 'test', 'processes/xml/bpmnDataobj_5s75NNb.bpmn', 11),
(80, 'test', 'processes/xml/bpmnDataobj_4Qoix1S.bpmn', 11),
(81, 'test', 'processes/xml/bpmnDataobj_6vglDQ1.bpmn', 11),
(82, 'test', 'processes/xml/bpmnDataobj_2SApevr.bpmn', 11),
(83, 'test', 'processes/xml/bpmnDataobj_6PGQSI4.bpmn', 11),
(84, 'test', 'processes/xml/bpmnDataobj_Hsbs6Fw.bpmn', 11),
(85, 'test', 'processes/xml/bpmn3.bpmn', 8),
(86, 'test', 'processes/xml/bpmn3_kAo3rfV.bpmn', 8),
(87, 'test', 'processes/xml/bpmn3_sVgNIOH.bpmn', 8),
(88, 'test', 'processes/xml/diagram_esempio.bpmn', 8),
(89, 'test', 'processes/xml/diagram_esempio_FcFWxIB.bpmn', 8),
(90, 'test', 'processes/xml/diagram_esempio_FS6kNb8.bpmn', 8),
(91, 'test', 'processes/xml/diagram_esempio_behvdMU.bpmn', 8),
(92, 'test', 'processes/xml/diagram_esempio_iKB7ZZB.bpmn', 8),
(93, 'test', 'processes/xml/diagram_esempio_h7zLi2S.bpmn', 8),
(94, 'test', 'processes/xml/diagram_esempio_cu2xLHa.bpmn', 8),
(95, 'test2', 'processes/xml/dataobjsu2task.bpmn', 8),
(96, 'test2', 'processes/xml/dataobjsu2task_AFoNmkc.bpmn', 8),
(97, 'test2', 'processes/xml/dataobjsu2task_9VmRl6P.bpmn', 8),
(98, 'test2', 'processes/xml/dataobjsu2task_UMEwoZS.bpmn', 8),
(99, 'test3', 'processes/xml/dataobjsu2task_lqFWxGv.bpmn', 3),
(100, 'test3', 'processes/xml/dataobjsu2task_NpQCPIo.bpmn', 3),
(101, 'test3', 'processes/xml/dataobjsu2task_9s5U0r9.bpmn', 3),
(102, 'test3', 'processes/xml/dataobjsu2task_qxOv1B8.bpmn', 3),
(103, 'Municipality', 'processes/xml/dataobjsu2task_NZr7VpG.bpmn', 3),
(104, 'Municipality', 'processes/xml/dataobjsu2task_oBvWuBt.bpmn', 3),
(105, 'Municipality', 'processes/xml/dataobjsu2task_j3eukn6.bpmn', 3),
(106, 'Municipality', 'processes/xml/dataobjsu2task_Fx26vtM.bpmn', 3),
(107, 'Municipality', 'processes/xml/dataobjsu2task_h926ChB.bpmn', 3),
(108, 'Municipality3322', 'processes/xml/bpmn2.bpmn', 3),
(109, 'Municipality022', 'processes/xml/dataobjsu2task_fiow2Yr.bpmn', 3),
(110, 'Test19.1', 'processes/xml/diagram_esempio_510H7xf.bpmn', 3),
(111, 'Test19.2', 'processes/xml/diagram_4.bpmn', 3),
(112, 'Test19.3', 'processes/xml/diagram_5.bpmn', 3),
(113, 'Test19.4', 'processes/xml/diagram_5_FjafleX.bpmn', 3),
(114, 'Test19.5', 'processes/xml/diagram_5_da6UrWh.bpmn', 3),
(115, 'Test19.6', 'processes/xml/diagram_5_464VmXw.bpmn', 3),
(116, 'Test19.7', 'processes/xml/diagram_esempio_2kdgGYJ.bpmn', 3),
(117, 'Test19.20', 'processes/xml/diagram_6.bpmn', 3),
(118, 'test1.0', 'processes/xml/diagram_6_SsDxBWm.bpmn', 12),
(119, 'test1.1', 'processes/xml/diagram1.bpmn', 12),
(120, 'test1.2', 'processes/xml/es1_-_Copia.bpmn', 12),
(121, 'test1.3', 'processes/xml/es1_-_Copia_pQcFlvX.bpmn', 12),
(122, 'test1.4', 'processes/xml/es1_-_Copia_2JGyNFH.bpmn', 12),
(123, 'test1.5', 'processes/xml/es1_-_Copia_wUFyJGT.bpmn', 12),
(124, 'test1.6', 'processes/xml/es1_-_Copia_QUGbyUA.bpmn', 12),
(125, 'test 1.7', 'processes/xml/es1_-_Copia_0dXt07W.bpmn', 12),
(126, 'test1.8', 'processes/xml/es1_-_Copia_uPFIeOv.bpmn', 12),
(127, 'test1.9', 'processes/xml/es1_-_Copia_SH37mw6.bpmn', 12),
(128, 'test2.0', 'processes/xml/es1_-_Copia_JwXvl4F.bpmn', 12),
(129, 'test2.1', 'processes/xml/es1_-_Copia_7NSSW7r.bpmn', 12),
(130, 'test2.2', 'processes/xml/es1_-_Copia_XFh1Yk8.bpmn', 12),
(131, 'test2.3', 'processes/xml/es1_-_Copia_7flxXms.bpmn', 12),
(132, 'test2.4', 'processes/xml/es1_-_Copia_z7LKkdL.bpmn', 12),
(133, 'test2.5', 'processes/xml/es1_-_Copia_UMrCs8T.bpmn', 12),
(134, 'test2.6', 'processes/xml/es1_-_Copia_MYimQ1i.bpmn', 12),
(135, 'test1.0', 'processes/xml/es1_-_Copia_rIYG2wl.bpmn', 13),
(136, 'test1.1', 'processes/xml/es1_-_Copia_2dNUDER.bpmn', 13),
(137, 'Picariello', 'processes/xml/DiagrammaPicariello.bpmn', 14),
(138, 'test1.0', 'processes/xml/es1.bpmn', 14),
(139, 'PicarielloBPMN', 'processes/xml/DiagrammaPicariello_1.bpmn', 15),
(140, 'TEST1.0', 'processes/xml/diagramTEST.bpmn', 16);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_reply`
--

CREATE TABLE `parsingbpmn_reply` (
  `id` int(11) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `multiple` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_reply`
--

INSERT INTO `parsingbpmn_reply` (`id`, `reply`, `multiple`) VALUES
(1, 'Yes', 0),
(2, 'No, the threats that apply to the system are related only to non-hostile situations', 0),
(3, 'Consider as `trusted` the employees', 0),
(4, 'Consider all threat agents', 0),
(5, 'Copy', 0),
(6, 'Deny', 0),
(7, 'All', 0),
(8, 'Destroy', 0),
(9, 'Damage', 0),
(10, 'Take', 0),
(11, 'Theft', 0),
(12, 'Cause harm', 0),
(13, 'Embarassment', 0),
(14, 'Tech Advantage', 0),
(15, 'Business Advantage', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_risk`
--

CREATE TABLE `parsingbpmn_risk` (
  `id` int(11) NOT NULL,
  `skill` int(11) DEFAULT NULL,
  `motive` int(11) DEFAULT NULL,
  `opportunity` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `ease_of_discovery` int(11) DEFAULT NULL,
  `ease_of_exploit` int(11) DEFAULT NULL,
  `intrusion_detection` int(11) DEFAULT NULL,
  `awareness` int(11) DEFAULT NULL,
  `loss_of_confidentiality` int(11) DEFAULT NULL,
  `loss_of_integrity` int(11) DEFAULT NULL,
  `loss_of_availability` int(11) DEFAULT NULL,
  `loss_of_accountability` int(11) DEFAULT NULL,
  `financial` int(11) DEFAULT NULL,
  `reputation` int(11) DEFAULT NULL,
  `non_compliance` int(11) DEFAULT NULL,
  `privacy` int(11) DEFAULT NULL,
  `asset_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL,
  `threat_stride_id` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `likelihood` int(11) DEFAULT NULL,
  `severity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_risk`
--

INSERT INTO `parsingbpmn_risk` (`id`, `skill`, `motive`, `opportunity`, `size`, `ease_of_discovery`, `ease_of_exploit`, `intrusion_detection`, `awareness`, `loss_of_confidentiality`, `loss_of_integrity`, `loss_of_availability`, `loss_of_accountability`, `financial`, `reputation`, `non_compliance`, `privacy`, `asset_id`, `system_id`, `process_id`, `threat_stride_id`, `impact`, `likelihood`, `severity`) VALUES
(1121, 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 749, 11, 69, 1, 5, 5, 'MEDIUM'),
(1122, 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 749, 11, 69, 2, 6, 5, 'HIGH'),
(1123, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 749, 11, 69, 23, 5, 6, 'HIGH'),
(1124, 9, 7, 5, 7, 6, 4, 4, 6, 5, 5, 5, 7, 9, 8, 8, 8, 749, 11, 69, 29, 6, 6, 'MEDIUM'),
(1125, 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 749, 11, 69, 37, 7, 5, 'HIGH'),
(1126, 9, 7, 5, 7, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 749, 11, 69, 38, 5, 7, 'HIGH'),
(1127, 9, 7, 5, 7, 2, 2, 3, 2, 5, 5, 5, 5, 9, 8, 8, 8, 749, 11, 69, 40, 6, 4, 'HIGH'),
(1128, 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 749, 11, 69, 50, 7, 6, 'CRITICAL'),
(1129, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 749, 11, 69, 56, 6, 7, 'CRITICAL'),
(1130, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 749, 11, 69, 57, 2, 6, 'MEDIUM'),
(1131, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 749, 11, 69, 60, 6, 7, 'CRITICAL'),
(1132, 9, 7, 5, 7, 7, 7, 8, 8, 8, 7, 8, 9, 9, 8, 8, 8, 749, 11, 69, 74, 8, 7, 'CRITICAL'),
(1133, 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 750, 11, 69, 1, 5, 5, 'MEDIUM'),
(1134, 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 750, 11, 69, 2, 6, 5, 'HIGH'),
(1135, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 750, 11, 69, 23, 5, 6, 'HIGH'),
(1136, 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 750, 11, 69, 27, 5, 5, 'MEDIUM'),
(1137, 9, 7, 5, 7, 6, 4, 4, 6, 5, 5, 5, 7, 9, 8, 8, 8, 750, 11, 69, 29, 6, 6, 'MEDIUM'),
(1138, 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 750, 11, 69, 37, 7, 5, 'HIGH'),
(1139, 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 750, 11, 69, 50, 7, 6, 'CRITICAL'),
(1140, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 750, 11, 69, 51, 6, 6, 'MEDIUM'),
(1141, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 750, 11, 69, 52, 6, 6, 'MEDIUM'),
(1142, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 750, 11, 69, 53, 6, 6, 'MEDIUM'),
(1143, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 750, 11, 69, 56, 6, 7, 'CRITICAL'),
(1144, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 750, 11, 69, 60, 6, 7, 'CRITICAL'),
(1145, 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 750, 11, 69, 65, 5, 7, 'HIGH'),
(1146, 9, 7, 5, 7, 7, 6, 5, 5, 5, 5, 5, 5, 7, 6, 7, 5, 750, 11, 69, 69, 5, 6, 'HIGH'),
(1147, 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 750, 11, 69, 71, 5, 7, 'HIGH'),
(1148, 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 751, 11, 69, 1, 5, 5, 'MEDIUM'),
(1149, 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 751, 11, 69, 2, 6, 5, 'HIGH'),
(1150, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 751, 11, 69, 23, 5, 6, 'HIGH'),
(1151, 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 751, 11, 69, 27, 5, 5, 'MEDIUM'),
(1152, 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 751, 11, 69, 37, 7, 5, 'HIGH'),
(1153, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 751, 11, 69, 51, 6, 6, 'MEDIUM'),
(1154, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 751, 11, 69, 52, 6, 6, 'MEDIUM'),
(1155, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 751, 11, 69, 53, 6, 6, 'MEDIUM'),
(1156, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 751, 11, 69, 56, 6, 7, 'CRITICAL'),
(1157, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 751, 11, 69, 60, 6, 7, 'CRITICAL'),
(1158, 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 751, 11, 69, 65, 5, 7, 'HIGH'),
(1159, 9, 7, 5, 7, 7, 6, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 751, 11, 69, 67, 5, 7, 'HIGH'),
(1160, 9, 7, 5, 7, 7, 6, 5, 5, 5, 5, 5, 5, 7, 6, 7, 5, 751, 11, 69, 69, 5, 6, 'HIGH'),
(1161, 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 751, 11, 69, 71, 5, 7, 'HIGH'),
(1162, 9, 7, 5, 7, 9, 8, 8, 9, 3, 2, 2, 1, 7, 6, 7, 5, 751, 11, 69, 72, 4, 7, 'HIGH'),
(1163, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 9, 8, 9, 8, 8, 8, 751, 11, 69, 73, 7, 6, 'MEDIUM'),
(1164, 9, 7, 5, 7, 7, 7, 8, 8, 8, 7, 8, 9, 9, 8, 8, 8, 751, 11, 69, 74, 8, 7, 'CRITICAL'),
(1165, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 7, 6, 7, 5, 751, 11, 69, 80, 5, 6, 'HIGH'),
(1166, 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 752, 11, 69, 1, 5, 5, 'MEDIUM'),
(1167, 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 752, 11, 69, 2, 6, 5, 'HIGH'),
(1168, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 752, 11, 69, 23, 5, 6, 'HIGH'),
(1169, 9, 7, 5, 7, 6, 4, 4, 6, 5, 5, 5, 7, 9, 8, 8, 8, 752, 11, 69, 29, 6, 6, 'MEDIUM'),
(1170, 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 752, 11, 69, 37, 7, 5, 'HIGH'),
(1171, 9, 7, 5, 7, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 752, 11, 69, 38, 5, 7, 'HIGH'),
(1172, 9, 7, 5, 7, 2, 2, 3, 2, 5, 5, 5, 5, 9, 8, 8, 8, 752, 11, 69, 40, 6, 4, 'HIGH'),
(1173, 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 752, 11, 69, 50, 7, 6, 'CRITICAL'),
(1174, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 752, 11, 69, 56, 6, 7, 'CRITICAL'),
(1175, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 752, 11, 69, 57, 2, 6, 'MEDIUM'),
(1176, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 752, 11, 69, 60, 6, 7, 'CRITICAL'),
(1177, 9, 7, 5, 7, 7, 7, 8, 8, 8, 7, 8, 9, 9, 8, 8, 8, 752, 11, 69, 74, 8, 7, 'CRITICAL'),
(1178, 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 753, 11, 69, 1, 5, 5, 'MEDIUM'),
(1179, 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 753, 11, 69, 2, 6, 5, 'HIGH'),
(1180, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 753, 11, 69, 23, 5, 6, 'HIGH'),
(1181, 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 753, 11, 69, 27, 5, 5, 'MEDIUM'),
(1182, 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 753, 11, 69, 37, 7, 5, 'HIGH'),
(1183, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 753, 11, 69, 51, 6, 6, 'MEDIUM'),
(1184, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 753, 11, 69, 52, 6, 6, 'MEDIUM'),
(1185, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 753, 11, 69, 53, 6, 6, 'MEDIUM'),
(1186, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 753, 11, 69, 56, 6, 7, 'CRITICAL'),
(1187, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 753, 11, 69, 60, 6, 7, 'CRITICAL'),
(1188, 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 753, 11, 69, 65, 5, 7, 'HIGH'),
(1189, 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 753, 11, 69, 71, 5, 7, 'HIGH'),
(1190, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 754, 11, 69, 32, 6, 6, 'MEDIUM'),
(1191, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 754, 11, 69, 34, 6, 6, 'MEDIUM'),
(1192, 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 754, 11, 69, 37, 7, 5, 'HIGH'),
(1193, 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 754, 11, 69, 50, 7, 6, 'CRITICAL'),
(1194, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 754, 11, 69, 53, 6, 6, 'MEDIUM'),
(1195, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 754, 11, 69, 56, 6, 7, 'CRITICAL'),
(1196, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 754, 11, 69, 60, 6, 7, 'CRITICAL'),
(1197, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 9, 8, 9, 8, 8, 8, 754, 11, 69, 73, 7, 6, 'MEDIUM'),
(1198, 9, 7, 5, 7, 1, 3, 3, 5, 8, 8, 1, 5, 7, 6, 7, 5, 755, 11, 69, 1, 5, 5, 'MEDIUM'),
(1199, 9, 7, 5, 7, 1, 3, 3, 5, 5, 5, 1, 5, 9, 8, 8, 8, 755, 11, 69, 2, 6, 5, 'HIGH'),
(1200, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 5, 5, 755, 11, 69, 23, 5, 6, 'HIGH'),
(1201, 9, 7, 5, 7, 4, 8, 2, 1, 5, 5, 5, 4, 7, 6, 7, 5, 755, 11, 69, 27, 5, 5, 'MEDIUM'),
(1202, 9, 7, 5, 7, 5, 5, 5, 3, 5, 5, 9, 5, 9, 8, 8, 8, 755, 11, 69, 37, 7, 5, 'HIGH'),
(1203, 9, 7, 5, 7, 7, 5, 5, 7, 7, 7, 8, 7, 9, 8, 8, 8, 755, 11, 69, 50, 7, 6, 'CRITICAL'),
(1204, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 755, 11, 69, 51, 6, 6, 'MEDIUM'),
(1205, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 755, 11, 69, 52, 6, 6, 'MEDIUM'),
(1206, 9, 7, 5, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 8, 8, 755, 11, 69, 53, 6, 6, 'MEDIUM'),
(1207, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 755, 11, 69, 56, 6, 7, 'CRITICAL'),
(1208, 9, 7, 5, 7, 8, 7, 7, 8, 5, 5, 5, 5, 9, 8, 8, 8, 755, 11, 69, 60, 6, 7, 'CRITICAL'),
(1209, 9, 7, 5, 7, 8, 7, 5, 8, 5, 5, 5, 5, 7, 6, 7, 5, 755, 11, 69, 65, 5, 7, 'HIGH'),
(1210, 9, 7, 5, 7, 9, 8, 7, 8, 5, 5, 5, 5, 7, 6, 7, 5, 755, 11, 69, 71, 5, 7, 'HIGH');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_stride`
--

CREATE TABLE `parsingbpmn_stride` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_stride`
--

INSERT INTO `parsingbpmn_stride` (`id`, `category`) VALUES
(1, 'Spoofing'),
(2, 'Tampering'),
(3, 'Repudiation'),
(4, 'Information Disclosure'),
(5, 'Denial Of Services'),
(6, 'Elevation of privilege');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_strideimpactrecord`
--

CREATE TABLE `parsingbpmn_strideimpactrecord` (
  `id` int(11) NOT NULL,
  `financialdamage` int(11) DEFAULT NULL,
  `reputationdamage` int(11) DEFAULT NULL,
  `noncompliance` int(11) DEFAULT NULL,
  `privacyviolation` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `stride_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `process_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_strideimpactrecord`
--

INSERT INTO `parsingbpmn_strideimpactrecord` (`id`, `financialdamage`, `reputationdamage`, `noncompliance`, `privacyviolation`, `created_at`, `updated_at`, `stride_id`, `system_id`, `process_id`) VALUES
(1012, 7, 6, 7, 5, '2022-03-04 08:52:11.000925', '2022-03-04 08:52:11.000925', 1, NULL, 69),
(1013, 5, 5, 5, 5, '2022-03-04 08:52:11.025195', '2022-03-04 08:52:11.026198', 2, NULL, 69),
(1014, 5, 5, 5, 5, '2022-03-04 08:52:11.040227', '2022-03-04 08:52:11.040227', 4, NULL, 69),
(1015, 9, 8, 8, 8, '2022-03-04 08:52:11.046195', '2022-03-04 08:52:11.046195', 5, NULL, 69),
(1016, 6, 6, 5, 5, '2022-03-04 08:52:11.055190', '2022-03-04 08:52:11.055190', 6, NULL, 69);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_system`
--

CREATE TABLE `parsingbpmn_system` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_system`
--

INSERT INTO `parsingbpmn_system` (`id`, `name`) VALUES
(3, 'Regione Campania'),
(8, 'Unicampania'),
(11, 'Municipality'),
(12, 'Test'),
(13, 'test2'),
(14, 'test3'),
(15, 'Picariello'),
(16, 'TEST4');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_system_threatagent`
--

CREATE TABLE `parsingbpmn_system_threatagent` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_system_threatagent`
--

INSERT INTO `parsingbpmn_system_threatagent` (`id`, `category_id`, `system_id`) VALUES
(1, 4, 3),
(2, 9, 3),
(3, 10, 3),
(4, 13, 3),
(5, 16, 3),
(6, 18, 3),
(7, 20, 3),
(8, 15, 3),
(9, 19, 3),
(10, 12, 3),
(11, 5, 3),
(12, 14, 3),
(42, 4, 8),
(43, 9, 8),
(44, 10, 8),
(45, 13, 8),
(46, 16, 8),
(47, 18, 8),
(48, 20, 8),
(49, 6, 11),
(50, 8, 11),
(51, 13, 11),
(52, 16, 11),
(53, 20, 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_tacategoryattribute`
--

CREATE TABLE `parsingbpmn_tacategoryattribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_tacategoryattribute`
--

INSERT INTO `parsingbpmn_tacategoryattribute` (`id`, `attribute_id`, `category_id`) VALUES
(1, 1, 1),
(2, 4, 1),
(3, 6, 1),
(4, 9, 1),
(5, 18, 1),
(6, 20, 1),
(7, 28, 1),
(8, 31, 1),
(9, 32, 1),
(10, 1, 2),
(11, 4, 2),
(12, 7, 2),
(13, 9, 2),
(14, 16, 2),
(15, 19, 2),
(16, 28, 2),
(17, 31, 2),
(18, 32, 2),
(19, 1, 3),
(20, 4, 3),
(21, 5, 3),
(22, 9, 3),
(23, 17, 3),
(24, 19, 3),
(25, 28, 3),
(26, 31, 3),
(27, 32, 3),
(28, 2, 4),
(29, 3, 4),
(30, 7, 4),
(31, 10, 4),
(32, 15, 4),
(33, 22, 4),
(34, 25, 4),
(35, 31, 4),
(36, 2, 5),
(37, 3, 5),
(38, 6, 5),
(39, 13, 5),
(40, 18, 5),
(41, 21, 5),
(42, 23, 5),
(43, 32, 5),
(44, 2, 6),
(45, 3, 6),
(46, 5, 6),
(47, 13, 6),
(48, 18, 6),
(49, 21, 6),
(50, 23, 6),
(51, 30, 6),
(52, 33, 6),
(53, 2, 7),
(54, 3, 7),
(55, 7, 7),
(56, 14, 7),
(57, 18, 7),
(58, 21, 7),
(59, 24, 7),
(60, 30, 7),
(61, 33, 7),
(62, 2, 8),
(63, 3, 8),
(64, 5, 8),
(65, 12, 8),
(66, 18, 8),
(67, 21, 8),
(68, 23, 8),
(69, 30, 8),
(70, 33, 8),
(71, 2, 9),
(72, 3, 9),
(73, 8, 9),
(74, 9, 9),
(75, 17, 9),
(76, 22, 9),
(77, 25, 9),
(78, 26, 9),
(79, 31, 9),
(80, 32, 9),
(81, 2, 10),
(82, 3, 10),
(83, 8, 10),
(84, 14, 10),
(85, 18, 10),
(86, 22, 10),
(87, 25, 10),
(88, 26, 10),
(89, 31, 10),
(90, 32, 10),
(91, 2, 11),
(92, 3, 11),
(93, 5, 11),
(94, 14, 11),
(95, 18, 11),
(96, 22, 11),
(97, 23, 11),
(98, 24, 11),
(99, 30, 11),
(100, 33, 11),
(101, 2, 12),
(102, 3, 12),
(103, 5, 12),
(104, 13, 12),
(105, 18, 12),
(106, 21, 12),
(107, 23, 12),
(108, 29, 12),
(109, 33, 12),
(110, 2, 13),
(111, 3, 13),
(112, 8, 13),
(113, 9, 13),
(114, 15, 13),
(115, 22, 13),
(116, 28, 13),
(117, 31, 13),
(118, 32, 13),
(119, 2, 14),
(120, 3, 14),
(121, 7, 14),
(122, 13, 14),
(123, 18, 14),
(124, 20, 14),
(125, 23, 14),
(126, 27, 14),
(127, 30, 14),
(128, 2, 15),
(129, 3, 15),
(130, 6, 15),
(131, 13, 15),
(132, 18, 15),
(133, 22, 15),
(134, 27, 15),
(135, 29, 15),
(136, 2, 16),
(137, 3, 16),
(138, 7, 16),
(139, 13, 16),
(140, 18, 16),
(141, 21, 16),
(142, 28, 16),
(143, 31, 16),
(144, 32, 16),
(145, 2, 17),
(146, 3, 17),
(147, 7, 17),
(148, 10, 17),
(149, 16, 17),
(150, 21, 17),
(151, 28, 17),
(152, 31, 17),
(153, 32, 17),
(154, 2, 18),
(155, 3, 18),
(156, 6, 18),
(157, 13, 18),
(158, 18, 18),
(159, 22, 18),
(160, 25, 18),
(161, 26, 18),
(162, 27, 18),
(163, 31, 18),
(164, 2, 19),
(165, 3, 19),
(166, 5, 19),
(167, 9, 19),
(168, 15, 19),
(169, 21, 19),
(170, 27, 19),
(171, 29, 19),
(172, 2, 20),
(173, 3, 20),
(174, 6, 20),
(175, 11, 20),
(176, 17, 20),
(177, 21, 20),
(178, 28, 20),
(179, 31, 20),
(180, 2, 21),
(181, 3, 21),
(182, 5, 21),
(183, 12, 21),
(184, 17, 21),
(185, 20, 21),
(186, 23, 21),
(187, 30, 21),
(188, 33, 21);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_tareplies_question`
--

CREATE TABLE `parsingbpmn_tareplies_question` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_tareplies_question`
--

INSERT INTO `parsingbpmn_tareplies_question` (`id`, `question_id`, `reply_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 3, 7),
(8, 3, 8),
(9, 3, 9),
(10, 3, 10),
(11, 4, 11),
(12, 4, 12),
(13, 4, 13),
(14, 4, 14),
(15, 4, 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_tareplycategory`
--

CREATE TABLE `parsingbpmn_tareplycategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_tareplycategory`
--

INSERT INTO `parsingbpmn_tareplycategory` (`id`, `category_id`, `reply_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1),
(14, 14, 1),
(15, 15, 1),
(16, 16, 1),
(17, 17, 1),
(18, 18, 1),
(19, 19, 1),
(20, 20, 1),
(21, 21, 1),
(22, 1, 2),
(23, 2, 2),
(24, 3, 2),
(25, 13, 2),
(26, 16, 2),
(27, 20, 2),
(28, 13, 3),
(29, 16, 3),
(30, 20, 3),
(31, 4, 3),
(32, 5, 3),
(33, 6, 3),
(34, 8, 3),
(35, 10, 3),
(36, 14, 3),
(37, 15, 3),
(38, 16, 3),
(39, 18, 3),
(40, 19, 3),
(41, 13, 4),
(42, 16, 4),
(43, 20, 4),
(44, 4, 4),
(45, 5, 4),
(46, 6, 4),
(47, 7, 4),
(48, 8, 4),
(49, 9, 4),
(50, 10, 4),
(51, 11, 4),
(52, 12, 4),
(53, 13, 4),
(54, 14, 4),
(55, 15, 4),
(56, 16, 4),
(57, 17, 4),
(58, 18, 4),
(59, 19, 4),
(60, 20, 4),
(61, 13, 5),
(62, 16, 5),
(63, 20, 5),
(64, 5, 5),
(65, 6, 5),
(66, 8, 5),
(67, 11, 5),
(68, 12, 5),
(69, 14, 5),
(70, 21, 5),
(71, 13, 6),
(72, 16, 6),
(73, 20, 6),
(74, 7, 6),
(75, 10, 6),
(76, 13, 7),
(77, 16, 7),
(78, 20, 7),
(79, 1, 7),
(80, 2, 7),
(81, 3, 7),
(82, 16, 7),
(83, 8, 7),
(84, 13, 8),
(85, 16, 8),
(86, 20, 8),
(87, 4, 8),
(88, 10, 8),
(89, 9, 8),
(90, 18, 8),
(91, 13, 9),
(92, 16, 9),
(93, 20, 9),
(94, 9, 9),
(95, 10, 9),
(96, 15, 9),
(97, 18, 9),
(98, 13, 10),
(99, 16, 10),
(100, 20, 10),
(101, 14, 10),
(102, 18, 10),
(103, 15, 10),
(104, 19, 10),
(105, 13, 11),
(106, 16, 11),
(107, 20, 11),
(108, 12, 11),
(109, 15, 11),
(110, 19, 11),
(111, 13, 12),
(112, 16, 12),
(113, 20, 12),
(114, 1, 12),
(115, 2, 12),
(116, 3, 12),
(117, 4, 12),
(118, 9, 12),
(119, 10, 12),
(120, 16, 12),
(121, 18, 12),
(122, 13, 13),
(123, 16, 13),
(124, 20, 13),
(125, 1, 13),
(126, 2, 13),
(127, 3, 13),
(128, 5, 13),
(129, 9, 13),
(130, 10, 13),
(131, 14, 13),
(132, 16, 13),
(133, 13, 14),
(134, 16, 14),
(135, 20, 14),
(136, 6, 14),
(137, 7, 14),
(138, 8, 14),
(139, 11, 14),
(140, 12, 14),
(141, 21, 14),
(142, 13, 15),
(143, 16, 15),
(144, 20, 15),
(145, 6, 15),
(146, 7, 15),
(147, 8, 15),
(148, 11, 15),
(149, 21, 15);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat`
--

CREATE TABLE `parsingbpmn_threat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `owasp_awareness` int(11) DEFAULT NULL,
  `owasp_ease_of_discovery` int(11) DEFAULT NULL,
  `owasp_ease_of_exploit` int(11) DEFAULT NULL,
  `owasp_intrusion_detection` int(11) DEFAULT NULL,
  `loss_of_accountability` int(11) DEFAULT NULL,
  `loss_of_availability` int(11) DEFAULT NULL,
  `loss_of_confidentiality` int(11) DEFAULT NULL,
  `loss_of_integrity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat`
--

INSERT INTO `parsingbpmn_threat` (`id`, `name`, `description`, `owasp_awareness`, `owasp_ease_of_discovery`, `owasp_ease_of_exploit`, `owasp_intrusion_detection`, `loss_of_accountability`, `loss_of_availability`, `loss_of_confidentiality`, `loss_of_integrity`) VALUES
(1, 'Fraud', 'Fraud made by human', 5, 1, 3, 3, 5, 1, 8, 8),
(2, 'Sabotage', 'Intentional actions (non-fulfillment or defective fulfillment of personal duties) aimed to cause disruption or damage of IT Assets', 5, 1, 3, 3, 5, 1, 5, 5),
(3, 'Vandalism', 'Act of physically damage of IT Assets', 3, 6, 8, 1, 3, 8, 7, 9),
(4, 'Theft (devices, storage media and documents)\r\n', 'Stealing of information or IT Assets. [Theft of mobile devices (smartphones/ tablets) - Theft of fi9ed hardware - Theft of documents - Theft of backups]', 6, 5, 3, 4, 2, 9, 8, 7),
(5, 'Information leakage/sharing\r\n', 'Sharing information with unauthorised entities. Loss of information confidentiality due to intentional human actions.', 3, 2, 7, 2, 6, 4, 9, 7),
(6, 'Unauthorized physical access / Unauthorised entry to premises\r\n', 'Unapproved access to facility.\r\n', 2, 3, 8, 7, 6, 2, 8, 9),
(7, 'Coercion, extortion or corruption\r\n', 'Actions caused by coercion, extortion or corruption\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(8, 'Damage from the warfare\r\n', 'Threats of direct impact of warfare activities\r\n', 5, 5, 5, 5, 8, 8, 7, 8),
(9, 'Terrorists attack\r\n', 'Threats of bombing or other actions that counts as \"terrorists attacks\"\r\n', 5, 5, 5, 5, 8, 8, 7, 8),
(10, 'Information leakage/sharing due to human error\r\n', 'Unintentional distribution of private or sensitive data to an unauthorized entity by staff member.\r\n', 1, 4, 8, 2, 4, 5, 5, 5),
(11, 'Erroneous use or administration of devices and systems\r\n', 'Information leakage / sharing / damage caused by users IT Assets misuse (lack of awareness of application features) or wrong / improperly IT Assets configuration or management\r\n', 6, 6, 4, 4, 7, 5, 5, 5),
(12, 'Using information from an unreliable source\r\n', 'Bad decision based on unreliable sources of information or unchecked information.\r\n', 8, 7, 7, 8, 5, 5, 5, 5),
(13, 'Unintentional change of data in an information system\r\n', 'Loss of information integrity due to human error (information system user mistake)\r\n', 5, 5, 5, 5, 5, 2, 8, 9),
(14, 'Inadequate design and planning or improperly adaptation\r\n', 'Threats caused by improperly IT Assets or business processes design (inadequate specifications of IT products, inadequate usability, insecure interfaces, policy/procedure flows, design errors)\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(15, 'Damage caused by a third party \r\n', 'Threats of damage of IT Assets caused by third party \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(16, 'Damages resulting from penetration testing\r\n', 'Threats to information systems caused by improperly / inprepare conducting of IT penetration testing\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(17, 'Loss of information in the cloud\r\n', 'Threats of loosing information or data stored in the cloud\r\n', 3, 5, 5, 5, 5, 9, 5, 5),
(18, 'Loss of (integrity of) sensitive information\r\n', 'Threats of loosing information or data (or changing) information classified as sensitive\r\n', 8, 8, 7, 7, 5, 5, 5, 9),
(19, 'Loss of devices, storage media and documents\r\n', 'Threats of the lack of availability (loosing) of IT Assets and documents\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(20, 'Destruction of records\r\n', 'Threats of the lack of availability (destruction) of data and records (information) stored in devices and storage media\r\n', 2, 2, 2, 3, 5, 5, 5, 5),
(21, 'Disaster (natural earthquakes,floods,landslides, tsunamis,heavy rains,heavy snowfalls,heavy winds)', 'Large scale and large effects natural disasters', 1, 1, 1, 1, 5, 5, 5, 5),
(22, 'Fire', 'Threat of fire ', 1, 1, 1, 1, 5, 5, 5, 5),
(23, 'Pollution, dust, corrosion\r\n', 'Threat of disruption of work of IT systems (hardware) dur to pollution, dust or corrosion (arising from the air)\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(24, 'Thunder stroke\r\n', 'Threat of damage of IT hardware caused by the thunder strike (the electrical overvoltage)\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(25, 'Water\r\n', 'Threat of damage of IT hardware caused by the water\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(26, 'Explosion\r\n', 'empty\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(27, 'Dangerous radiation leak\r\n', 'empty\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(28, 'Unfavorable climatic conditions\r\n', 'Threat of disruption of work of IT systems due to climatic conditions that have the negative effect on hardware\r\n', 1, 2, 2, 2, 5, 5, 5, 5),
(29, 'Major events in the environment\r\n', 'empty\r\n', 2, 2, 2, 2, 5, 5, 5, 5),
(30, 'Threats from space / Electromagnetic storm\r\n', 'Threats of the negative impact of solar radiation (harmful rays) to a satellites and radio wave communication systems - Electromagnetic storm\r\n', 1, 1, 1, 2, 5, 5, 5, 5),
(31, 'Wildlife\r\n', 'empty\r\n', 2, 2, 2, 2, 5, 5, 5, 5),
(32, 'Failure of devices or systems\r\n', 'Threat of failure of IT hardware and/or software assets or its parts\r\n', 7, 7, 5, 5, 7, 8, 7, 7),
(33, 'Failure or disruption of communication links (communication networks)\r\n', 'Threat of failure or malfunction of communications links \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(34, 'Failure or disruption of main supply\r\n', 'Threat of failure or disruption of supply required for information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(35, 'Failure or disruption of service providers (supply chain)\r\n', 'Threat of failure or disruption of thire party services required for proper operation of information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(36, 'Malfunction of equipment (devices or systems)\r\n', 'Threat of malfunction of IT hardware and/or software assets or its parts\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(37, 'Loss of resources\r\n', 'Unavailability of resources (supply) required for proper operation of information system\r\n', 8, 8, 7, 7, 5, 5, 5, 5),
(38, 'Absence of personnel\r\n', 'Unavailability of key personnel and their competences\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(39, 'Strike\r\n', 'Unavailability of staff due strike (large scale absence of personnel)\r\n', 1, 2, 2, 2, 5, 5, 5, 5),
(40, 'Loss of support services\r\n', 'Unavailability of support services required for proper operation of information system\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(41, 'Internet outage\r\n', 'Unavailability of the Internet connection\r\n', 8, 8, 7, 7, 5, 5, 5, 5),
(42, 'Network outage\r\n', 'Unavailability of communication links\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(43, 'War driving\r\n', 'Threat of locating and possible exploite connection to the wireless network\r\n', 5, 6, 7, 7, 5, 5, 5, 5),
(44, 'Intercepting compromising emissions\r\n', 'Threat of disclosure transmitted information using interception and analysis of compromising emission\r\n', 5, 6, 7, 7, 5, 5, 5, 5),
(45, 'Interception of information\r\n', 'Threat of interception of information improperly secured in transmission or improperly actions of staff\r\n', 8, 8, 7, 5, 5, 5, 5, 5),
(46, 'Interfering radiation\r\n', 'Threat of failure of IT hardware or transmission connection due to electromagnetic induction or electromagnetic radiation emitted from an another source\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(47, 'Replay of messages\r\n', 'Threat in which valid data transmission is maliciously or fraudulently repeated or delayed\r\n', 8, 7, 6, 7, 5, 5, 5, 5),
(48, 'Network Reconnaissance, Network traffic manipulation and Information gathering\r\n', 'Threat of identifying information about network to find security weaknesses\r\n', 6, 6, 7, 5, 5, 5, 5, 5),
(49, 'Man in the middle/ Session hijacking \r\n', 'Threats that relay on alters of communication between two parties\r\n', 5, 7, 6, 5, 5, 5, 5, 5),
(50, 'Identity theft (Identity Fraud/ Account) \r\n', 'Threat of identity theft action\r\n', 8, 9, 8, 7, 5, 5, 5, 5),
(51, 'Receive of unsolicited E-mail \r\n', 'Threat of receive of unsolicited E-mail that affect for information security and efficienty of work (SPAM)\r\n', 9, 9, 8, 8, 1, 2, 3, 2),
(52, 'Denial of service\r\n', 'Threat of Deny of service type attacks at information systems/services\r\n', 5, 5, 5, 5, 8, 9, 5, 5),
(53, 'Malicious code/ software/ activity\r\n', 'Threat of malicious code or software execution\r\n', 8, 7, 7, 8, 9, 8, 8, 7),
(54, 'Social Engineering\r\n', 'Phishing attacks, Spear phishing attacks\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(55, 'Abuse of Information Leakage\r\n', '? What is difference between others Physical attack (deliberate/ intentional)?\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(56, 'Generation and use of rogue certificates\r\n', 'Threat of use of rogue certificates\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(57, 'Manipulation of hardware and software\r\n', 'Threat of unauthorized manipulation of hardware and software\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(58, 'Manipulation of information\r\n', 'Threat of intentional data manipulation to mislead information systems or somebody or to cover other nefarious activities (loss of integrity of information) \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(59, 'Misuse of audit tools\r\n', 'Threat of nefarious actions with use of audit tools (discovery security weaknesses in information systems)\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(60, 'Misuse of information/ information systems (including mobile apps)\r\n', 'Threat of nefarious action due to misuse of information / information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(61, 'Unauthorized activities\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(62, 'Unauthorized installation of software\r\n', 'Threat of unauthorized installation of software\r\n', 5, 6, 5, 5, 7, 5, 5, 5),
(63, 'Compromising confidential information (data breaches)\r\n', 'Threat of data breach \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(64, 'Hoax\r\n', 'Threat of disruption of work due to False rumor and/or a fake warning\r\n', 4, 2, 3, 3, 5, 5, 5, 5),
(65, 'Remote activity (execution)\r\n', 'Threat of remote activity over controled IT Assets\r\n', 8, 7, 7, 8, 5, 5, 5, 5),
(66, 'Targeted attacks (APTs etc.)\r\n', 'Threat of sophisticated targetes attack with combination of many attack techniques\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(67, 'Failed of bussines process\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(68, 'Brute force\r\n', 'empty\r\n', 8, 7, 9, 8, 5, 5, 5, 5),
(69, 'Abuse of authorizations\r\n', 'empty\r\n', 8, 8, 7, 6, 5, 5, 5, 5),
(70, 'Violation of laws or regulations / Breach of legislation\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to violation of law or regulations\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(71, 'Failure to meet contractual requirements\r\n', 'Threat of finacial penatly or lost of trust of customers and collaborators due to failure to meet contractual requirements\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(72, 'Unauthorized use of IPR protected resources\r\n', 'Threat of finacial or legal penatly or lost of trust of customers and collaborators due to improper/illegal use of copyrights material\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(73, 'Abuse of personal data\r\n', 'Threat of illegal use personal data\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(74, 'Judiciary decisions/court orders\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(75, '', '', NULL, NULL, NULL, NULL, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threatagentattribute`
--

CREATE TABLE `parsingbpmn_threatagentattribute` (
  `id` int(11) NOT NULL,
  `attribute` varchar(100) DEFAULT NULL,
  `attribute_value` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threatagentattribute`
--

INSERT INTO `parsingbpmn_threatagentattribute` (`id`, `attribute`, `attribute_value`, `description`, `score`) VALUES
(1, 'Intent', 'Non hostile', 'The agent is friendly and intends to protect the assets, but accidentally or mistakenly takes actions that result in harm', 1),
(2, 'Intent', 'Hostile', 'The agent intents to cause harm or inappropriately use assets, and the agent take deliberate actions to achieve that result', 2),
(3, 'Access', 'External', 'Agent has only external access', 1),
(4, 'Access', 'Internal', 'Agent has internal access', 2),
(5, 'Visibility', 'Clandestine', 'The agent intends to keep both the attack and his or her identity secret', 1),
(6, 'Visibility', 'Covert', 'The victim knows about the attack at the time it occurs, or soon after, However the agent of the attacks intends to remain unidentified', 2),
(7, 'Visibility', 'Overt', 'The agent deliberately makes the attack and the threat agent identity is known before or at the time of execution', 3),
(8, 'Visibility', 'Multiple', 'The agent does not have a rational plan, may make a choice opportunistically at the time of attack, or may not place importance on secrecy', 4),
(9, 'Resources', 'Individual', 'Resources limited to the average individual, agent acts independently, Minimum skill level is None', 1),
(10, 'Resources', 'Club', 'Members interact on a social and volunteer basis, often with little personal interest in the specific target, Minimum skill level is Minimal', 2),
(11, 'Resources', 'Contest', 'A short lived and perhaps anonymous interaction that concludes when the participants have achieved a single goal Minimum skill is Operational', 3),
(12, 'Resources', 'Team', 'A formally organized group with a leader typically motivated by a specific goal and organized around that goal. Group persists long term and typically operates within a single geography. Minimum skill level: Operational', 4),
(13, 'Resources', 'Organization', 'Larger and better resourced than a Team, typically a company, Usually operates in multiple geographies and persists long term, Minimum skill level is Adept', 5),
(14, 'Resources', 'Government', 'Controls public assets and functions within a jurisdiction, very well resourced and persists long term, Minimum skill level is Adept', 6),
(15, 'Skills', 'None', 'Has average intelligence and ability and can easily carry out random acts of disruption or destruction but has no expertise or training', 1),
(16, 'Skills', 'Minimal', 'Can copy and use existing techniques', 2),
(17, 'Skills', 'Operational', 'Understands underlying technology or methods and can create new attacks within a narrow domain', 3),
(18, 'Skills', 'Adept', 'Expert in technology and attack methods, and can both apply existing attacks and create new one to greatest advantage', 4),
(19, 'Limits', 'Code of Conduct', 'Agents typically follow both the applicable laws and an additional code of conduct accepted within a profession or an exchange of goods or services', 4),
(20, 'Limits', 'Legal', 'Agents act within the limits of applicable laws', 3),
(21, 'Limits', 'Extra-legal minor', 'Agents may break the law in relatively minor, non violent ways, such as minor vandalism or trespass', 2),
(22, 'Limits', 'Extra-legal major', 'Agents take no account of the law and may engage in felonious behaviours resulting in significant financial impact or extreme violence', 1),
(23, 'Objectives', 'Copy', 'Make a replica of the asset so the agent has simultaneous access to it', 1),
(24, 'Objectives', 'Deny', 'Impact the confidentiality of the asset', 2),
(25, 'Objectives', 'Destroy', 'Destroy the asset, which becomes worthless to the organization or the agent', 3),
(26, 'Objectives', 'Damage', 'Damage the asset which remains in the organization but has limited functionality or value', 4),
(27, 'Objectives', 'Take', 'Gain possession of the asset so that the organization has no access to it.', 5),
(28, 'Objectives', 'All', 'The agent does not have a rational plan, or may make a choice opportunistically at the time of attack', 6),
(29, 'Outcome', 'Acquisition/Theft', 'Illicit acquisition of valuable assets for resale or extortion in a way that preserves the integrity but damage other items in the process', 1),
(30, 'Outcome', 'Business Advantage', 'Increased ability to compete in a market with a given set of products, The goal is to acquire business processes or assets', 2),
(31, 'Outcome', 'DamageOutcome', 'Injury to personnel, physical or electronic assets, or intellectual property', 3),
(32, 'Outcome', 'Embarassment', 'Public portrayal of organization in an unflattering light, causing Intel to lose influence, credibility, competitiveness, or stock value', 4),
(33, 'Outcome', 'Tech Advantage', 'Illicit improvement of a specific product or production capability, The primary target is to acquire production processes or assets rather than a business process', 5);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threatagentcategory`
--

CREATE TABLE `parsingbpmn_threatagentcategory` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `common_actions` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threatagentcategory`
--

INSERT INTO `parsingbpmn_threatagentcategory` (`id`, `category`, `description`, `common_actions`) VALUES
(1, 'Employee Reckless', 'Current employee who knowingly and deliberately circumvents safeguards for expediency,but intends no harm or serious consequence', 'Benign shortcuts and misuse of authorizations,pushed wrong button'),
(2, 'Employee Untrained', 'Current employee with harmless intent but unknowingly misuses system or safeguards', 'Poor process,unforeseen mistakes,pushed wrong button'),
(3, 'Info Partner', 'Someone with whom the company has voluntarily shared sensitive data', 'Poor internal protection of company proprietary materials'),
(4, 'Anarchist', 'Someone who rejects all forms of structure,private or public,and acts with few constraints', 'Violence,property destruction,physical business disruptio'),
(5, 'Civil Activist', 'Highly motivated but non-violent supporter of cause', 'Electronic or physical business disruption,theft of business data'),
(6, 'Competitor', 'Business adversary who competes for revenues or resources (acquisitions,etc.)', 'Theft of IP or business data'),
(7, 'Corrupt Government Official', 'Person who inappropriately uses his or her position within the givernment to acquire company resources', 'Organizatonal of physical business disruption'),
(8, 'Data Miner', 'Professional data gatherer external to the company (includes cyber methods)', 'Theft of IP,PII,or business data'),
(9, 'Employee Disgruntled', 'Current or former employee with intent to harm the company', 'Abuse of privileges for sabotage,cyber or physical'),
(10, 'Government Cyberwarrior', 'State-sponsored attacker with significat resources to affect major disruption on national scale', 'Organizational,infrastructural,and physical business disruption,through network/computing disruption,web hijacking,malware'),
(11, 'Government Spy', 'State-sponsored spy as a trusted insider,supporting idealistic goal', 'Theft of IP or business data'),
(12, 'Internal Spy', 'Professional data gatherer as a trusted insider,generally with a simple profit motive', 'Theft of IP,PII,or business data'),
(13, 'Irrational Individual', 'Someone with illogical purpose and irrational behavior', 'Personal violence resulting in physical business disrumption'),
(14, 'Legal Adversary', 'Adversary in legal proceedings against the company,warranted or not', 'Organizational business disruption,access to IP or business data'),
(15, 'Mobster', 'Manager of organized crime organization with significant resources', 'Theft of IP,PII,or business data,violence'),
(16, 'Radical Activist', 'Highly motivated,potentially destructive supporter of cause', 'Property destruction,physical business disruption'),
(17, 'Sensationalist', ' Attention-grabber who may employ any method for notoriety,looking for 15 minutes of fame', 'Public announcements for PR crises,theft of business data'),
(18, 'Terrorist', 'Person who relies on the use of violence to support personal socio-political agenda', 'Violence,property destruction,physical business disruption'),
(19, 'Thief', 'Opportunistic individual with simple profit motive', 'Theft of hardware goods or IP,PII,or business data'),
(20, 'Cyber Vandal', 'Derives thrills from intrusion or destruction of property,without strong agenda', 'Network/computing disruption,web hijacking,malware'),
(21, 'Vendor', 'Business partner who seeks inside information for financial advantage over competitors', 'Theft of IP or business data');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threatagentquestion`
--

CREATE TABLE `parsingbpmn_threatagentquestion` (
  `id` int(11) NOT NULL,
  `Qid` varchar(500) DEFAULT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threatagentquestion`
--

INSERT INTO `parsingbpmn_threatagentquestion` (`id`, `Qid`, `question`) VALUES
(1, '1', 'Are there someone who can gain an advantage\r\nimplementing a cyber threat against your system?'),
(2, '2', 'Do you trust all employees and do you assume that they are not a possible Threat agent?'),
(3, '3', 'What are the goals of the attackers that represent the most threat to you?'),
(4, '4', 'What could be the expected results of a possible attacker in the phases of a possible attack on\r\nthe software system?');

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threatagentriskscores`
--

CREATE TABLE `parsingbpmn_threatagentriskscores` (
  `id` int(11) NOT NULL,
  `skill` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `motive` int(11) NOT NULL,
  `opportunity` int(11) NOT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threatagentriskscores`
--

INSERT INTO `parsingbpmn_threatagentriskscores` (`id`, `skill`, `size`, `motive`, `opportunity`, `created_at`, `updated_at`, `system_id`) VALUES
(12, 9, 7, 7, 5, '2022-03-04 08:50:52.909444', '2022-03-04 08:50:52.909444', 11);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_has_attribute`
--

CREATE TABLE `parsingbpmn_threat_has_attribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat_has_attribute`
--

INSERT INTO `parsingbpmn_threat_has_attribute` (`id`, `attribute_id`, `threat_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 1, 2),
(5, 2, 2),
(6, 3, 2),
(7, 3, 3),
(8, 1, 7),
(9, 2, 7),
(10, 3, 7),
(11, 1, 10),
(12, 2, 10),
(13, 3, 10),
(14, 2, 11),
(15, 1, 17),
(16, 2, 17),
(17, 1, 32),
(18, 2, 32),
(19, 1, 33),
(20, 2, 33),
(21, 1, 34),
(22, 2, 34),
(23, 3, 34),
(24, 1, 35),
(25, 2, 35),
(26, 1, 37),
(27, 2, 37),
(28, 3, 37),
(29, 1, 41),
(30, 2, 41),
(31, 1, 45),
(32, 2, 45),
(33, 3, 45),
(34, 2, 49),
(35, 1, 50),
(36, 2, 50),
(37, 3, 58),
(38, 4, 1),
(39, 5, 1),
(40, 6, 1),
(41, 4, 2),
(42, 5, 2),
(43, 6, 2),
(44, 6, 3),
(45, 4, 7),
(46, 5, 7),
(47, 6, 7),
(48, 4, 10),
(49, 5, 10),
(50, 6, 10),
(51, 4, 17),
(52, 5, 17),
(53, 4, 33),
(54, 5, 33),
(55, 4, 34),
(56, 5, 34),
(57, 6, 34),
(58, 4, 35),
(59, 5, 35),
(60, 4, 37),
(61, 5, 37),
(62, 6, 37),
(63, 4, 41),
(64, 5, 41),
(65, 4, 45),
(66, 5, 45),
(67, 6, 45),
(68, 5, 47),
(69, 5, 49),
(70, 4, 50),
(71, 5, 50),
(72, 5, 51),
(73, 5, 52),
(74, 5, 53),
(75, 5, 54),
(76, 6, 58),
(77, 12, 1),
(78, 12, 2),
(79, 12, 3),
(80, 10, 15),
(81, 11, 15),
(82, 10, 16),
(83, 11, 16),
(84, 10, 17),
(85, 10, 32),
(86, 11, 32),
(87, 10, 35),
(88, 11, 35),
(89, 10, 37),
(90, 11, 37),
(91, 10, 41),
(92, 11, 41),
(93, 10, 52),
(94, 11, 52),
(95, 9, 1),
(96, 9, 2),
(97, 9, 3),
(98, 9, 4),
(99, 9, 5),
(100, 9, 7),
(101, 7, 1),
(102, 8, 1),
(103, 7, 2),
(104, 8, 2),
(105, 7, 7),
(106, 8, 7),
(107, 7, 11),
(108, 8, 11),
(109, 7, 17),
(110, 7, 18),
(111, 8, 18),
(112, 7, 20),
(113, 8, 20),
(114, 7, 32),
(115, 8, 32),
(116, 7, 37),
(117, 8, 37),
(118, 7, 38),
(119, 8, 38),
(120, 7, 41),
(121, 8, 42),
(122, 7, 53),
(123, 8, 53),
(124, 14, 11),
(125, 14, 17),
(126, 14, 32),
(127, 14, 33),
(128, 14, 34),
(129, 14, 35),
(130, 14, 37),
(131, 14, 41),
(132, 14, 45),
(133, 14, 49),
(134, 14, 58),
(135, 15, 17),
(136, 15, 33),
(137, 15, 34),
(138, 15, 35),
(139, 15, 37),
(140, 15, 41),
(141, 15, 45),
(142, 15, 47),
(143, 15, 49),
(144, 15, 52),
(145, 15, 58);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_has_control`
--

CREATE TABLE `parsingbpmn_threat_has_control` (
  `id` int(11) NOT NULL,
  `control_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat_has_control`
--

INSERT INTO `parsingbpmn_threat_has_control` (`id`, `control_id`, `threat_id`) VALUES
(1, 10, 1),
(2, 13, 1),
(3, 16, 1),
(4, 17, 1),
(5, 19, 1),
(6, 6, 2),
(7, 19, 2),
(8, 10, 3),
(9, 14, 3),
(10, 19, 3),
(11, 10, 4),
(12, 13, 4),
(13, 14, 4),
(14, 19, 4),
(15, 10, 5),
(16, 13, 5),
(17, 17, 5),
(18, 19, 5),
(19, 14, 6),
(20, 17, 6),
(21, 19, 6),
(22, 6, 7),
(23, 17, 7),
(24, 19, 7),
(25, 10, 8),
(26, 19, 8),
(27, 10, 9),
(28, 19, 9),
(29, 2, 10),
(30, 3, 10),
(31, 5, 10),
(32, 7, 10),
(33, 9, 10),
(34, 11, 10),
(35, 13, 10),
(36, 17, 10),
(37, 18, 10),
(38, 19, 10),
(39, 20, 10),
(40, 1, 11),
(41, 2, 11),
(42, 4, 11),
(43, 5, 11),
(44, 11, 11),
(45, 16, 11),
(46, 17, 11),
(47, 19, 11),
(48, 3, 12),
(49, 6, 12),
(50, 7, 12),
(51, 8, 12),
(52, 17, 12),
(53, 19, 12),
(54, 20, 12),
(55, 10, 13),
(56, 13, 13),
(57, 19, 13),
(58, 3, 14),
(59, 5, 14),
(60, 9, 14),
(61, 11, 14),
(62, 14, 14),
(63, 19, 14),
(64, 1, 15),
(65, 2, 15),
(66, 3, 15),
(67, 6, 15),
(68, 8, 15),
(69, 9, 15),
(70, 12, 15),
(71, 19, 15),
(72, 3, 16),
(73, 4, 16),
(74, 5, 16),
(75, 6, 16),
(76, 9, 16),
(77, 11, 16),
(78, 12, 16),
(79, 14, 16),
(80, 15, 16),
(81, 16, 16),
(82, 18, 16),
(83, 19, 16),
(84, 20, 16),
(85, 7, 17),
(86, 10, 17),
(87, 19, 17),
(88, 1, 18),
(89, 2, 18),
(90, 3, 18),
(91, 5, 18),
(92, 7, 18),
(93, 8, 18),
(94, 9, 18),
(95, 10, 18),
(96, 11, 18),
(97, 13, 18),
(98, 16, 18),
(99, 18, 18),
(100, 19, 18),
(101, 3, 19),
(102, 7, 19),
(103, 8, 19),
(104, 10, 19),
(105, 13, 19),
(106, 18, 19),
(107, 19, 19),
(108, 1, 20),
(109, 2, 20),
(110, 3, 20),
(111, 6, 20),
(112, 7, 20),
(113, 8, 20),
(114, 10, 20),
(115, 13, 20),
(116, 16, 20),
(117, 18, 20),
(118, 19, 20),
(119, 20, 20),
(120, 10, 21),
(121, 19, 21),
(122, 10, 22),
(123, 19, 22),
(124, 10, 23),
(125, 19, 23),
(126, 10, 24),
(127, 19, 24),
(128, 10, 25),
(129, 19, 25),
(130, 10, 26),
(131, 19, 26),
(132, 10, 27),
(133, 19, 27),
(134, 10, 28),
(135, 19, 28),
(136, 10, 29),
(137, 19, 29),
(138, 10, 30),
(139, 19, 30),
(140, 10, 31),
(141, 19, 31),
(142, 1, 32),
(143, 2, 32),
(144, 5, 32),
(145, 6, 32),
(146, 17, 32),
(147, 19, 32),
(148, 1, 33),
(149, 6, 33),
(150, 10, 33),
(151, 14, 33),
(152, 15, 33),
(153, 19, 33),
(154, 1, 34),
(155, 6, 34),
(156, 19, 34),
(157, 6, 35),
(158, 19, 35),
(159, 1, 36),
(160, 2, 36),
(161, 3, 36),
(162, 6, 36),
(163, 8, 36),
(164, 10, 36),
(165, 13, 36),
(166, 18, 36),
(167, 19, 36),
(168, 20, 36),
(169, 6, 37),
(170, 10, 37),
(171, 19, 37),
(172, 17, 38),
(173, 19, 38),
(174, 17, 39),
(175, 19, 39),
(176, 6, 40),
(177, 19, 40),
(178, 1, 41),
(179, 6, 41),
(180, 10, 41),
(181, 19, 41),
(182, 1, 42),
(183, 6, 42),
(184, 10, 42),
(185, 19, 42),
(186, 1, 43),
(187, 3, 43),
(188, 5, 43),
(189, 6, 43),
(190, 8, 43),
(191, 9, 43),
(192, 11, 43),
(193, 13, 43),
(194, 15, 43),
(195, 19, 43),
(196, 20, 43),
(197, 19, 44),
(198, 3, 45),
(199, 5, 45),
(200, 7, 45),
(201, 8, 45),
(202, 13, 45),
(203, 17, 45),
(204, 18, 45),
(205, 19, 45),
(206, 20, 45),
(207, 19, 46),
(208, 1, 47),
(209, 2, 47),
(210, 3, 47),
(211, 5, 47),
(212, 7, 47),
(213, 8, 47),
(214, 18, 47),
(215, 19, 47),
(216, 20, 47),
(217, 3, 48),
(218, 6, 48),
(219, 9, 48),
(220, 11, 48),
(221, 12, 48),
(222, 19, 48),
(223, 2, 49),
(224, 5, 49),
(225, 13, 49),
(226, 16, 49),
(227, 17, 49),
(228, 19, 49),
(229, 3, 50),
(230, 5, 50),
(231, 7, 50),
(232, 8, 50),
(233, 13, 50),
(234, 14, 50),
(235, 17, 50),
(236, 18, 50),
(237, 19, 50),
(238, 20, 50),
(239, 3, 51),
(240, 5, 51),
(241, 7, 51),
(242, 8, 51),
(243, 13, 51),
(244, 17, 51),
(245, 18, 51),
(246, 19, 51),
(247, 6, 52),
(248, 9, 52),
(249, 11, 52),
(250, 12, 52),
(251, 18, 52),
(252, 19, 52),
(253, 20, 52),
(254, 2, 53),
(255, 3, 53),
(256, 5, 53),
(257, 6, 53),
(258, 7, 53),
(259, 8, 53),
(260, 9, 53),
(261, 10, 53),
(262, 11, 53),
(263, 13, 53),
(264, 17, 53),
(265, 18, 53),
(266, 19, 53),
(267, 20, 53),
(268, 7, 54),
(269, 13, 54),
(270, 17, 54),
(271, 19, 54),
(272, 10, 55),
(273, 13, 55),
(274, 19, 55),
(275, 2, 56),
(276, 6, 56),
(277, 9, 56),
(278, 13, 56),
(279, 19, 56),
(280, 1, 57),
(281, 2, 57),
(282, 3, 57),
(283, 8, 57),
(284, 10, 57),
(285, 12, 57),
(286, 13, 57),
(287, 18, 57),
(288, 19, 57),
(289, 20, 57),
(290, 3, 58),
(291, 4, 58),
(292, 5, 58),
(293, 6, 58),
(294, 7, 58),
(295, 8, 58),
(296, 9, 58),
(297, 13, 58),
(298, 14, 58),
(299, 18, 58),
(300, 19, 58),
(301, 20, 58),
(302, 3, 59),
(303, 5, 59),
(304, 8, 59),
(305, 9, 59),
(306, 12, 59),
(307, 18, 59),
(308, 19, 59),
(309, 20, 59),
(310, 3, 60),
(311, 5, 60),
(312, 8, 60),
(313, 9, 60),
(314, 12, 60),
(315, 18, 60),
(316, 19, 60),
(317, 20, 60),
(318, 4, 61),
(319, 6, 61),
(320, 9, 61),
(321, 10, 61),
(322, 13, 61),
(323, 14, 61),
(324, 15, 61),
(325, 16, 61),
(326, 19, 61),
(327, 2, 62),
(328, 4, 62),
(329, 6, 62),
(330, 9, 62),
(331, 10, 62),
(332, 13, 62),
(333, 14, 62),
(334, 15, 62),
(335, 16, 62),
(336, 18, 62),
(337, 19, 62),
(338, 1, 63),
(339, 2, 63),
(340, 3, 63),
(341, 4, 63),
(342, 5, 63),
(343, 6, 63),
(344, 8, 63),
(345, 9, 63),
(346, 13, 63),
(347, 14, 63),
(348, 17, 63),
(349, 18, 63),
(350, 19, 63),
(351, 20, 63),
(352, 17, 64),
(353, 19, 64),
(354, 5, 65),
(355, 9, 65),
(356, 11, 65),
(357, 19, 65),
(358, 1, 66),
(359, 2, 66),
(360, 3, 66),
(361, 6, 66),
(362, 8, 66),
(363, 9, 66),
(364, 11, 66),
(365, 13, 66),
(366, 18, 66),
(367, 19, 66),
(368, 20, 66),
(369, 17, 67),
(370, 19, 67),
(371, 5, 68),
(372, 6, 68),
(373, 9, 68),
(374, 11, 68),
(375, 12, 68),
(376, 14, 68),
(377, 17, 68),
(378, 18, 68),
(379, 19, 68),
(380, 20, 68),
(381, 4, 69),
(382, 5, 69),
(383, 6, 69),
(384, 11, 69),
(385, 14, 69),
(386, 18, 69),
(387, 19, 69),
(388, 3, 70),
(389, 5, 70),
(390, 6, 70),
(391, 9, 70),
(392, 11, 70),
(393, 13, 70),
(394, 14, 70),
(395, 16, 70),
(396, 17, 70),
(397, 18, 70),
(398, 19, 70),
(399, 20, 70),
(400, 3, 71),
(401, 5, 71),
(402, 6, 71),
(403, 9, 71),
(404, 11, 71),
(405, 13, 71),
(406, 14, 71),
(407, 16, 71),
(408, 17, 71),
(409, 18, 71),
(410, 19, 71),
(411, 20, 71),
(412, 13, 72),
(413, 14, 72),
(414, 17, 72),
(415, 19, 72),
(416, 13, 73),
(417, 14, 73),
(418, 17, 73),
(419, 19, 73),
(420, 19, 74);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_stride`
--

CREATE TABLE `parsingbpmn_threat_stride` (
  `id` int(11) NOT NULL,
  `stride_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat_stride`
--

INSERT INTO `parsingbpmn_threat_stride` (`id`, `stride_id`, `threat_id`) VALUES
(1, 1, 1),
(2, 5, 2),
(13, 5, 3),
(14, 2, 3),
(15, 4, 3),
(16, 5, 4),
(17, 1, 5),
(18, 2, 5),
(19, 4, 5),
(20, 1, 6),
(21, 6, 6),
(22, 2, 6),
(23, 6, 7),
(24, 3, 7),
(25, 5, 8),
(26, 5, 9),
(27, 4, 10),
(28, 1, 10),
(29, 2, 11),
(30, 5, 11),
(31, 4, 12),
(32, 2, 15),
(33, 5, 15),
(34, 2, 16),
(35, 6, 16),
(36, 5, 16),
(37, 5, 17),
(38, 2, 18),
(39, 5, 19),
(40, 5, 20),
(41, 5, 21),
(42, 5, 22),
(43, 5, 23),
(44, 5, 24),
(45, 5, 26),
(46, 5, 28),
(47, 5, 29),
(48, 5, 30),
(49, 5, 31),
(50, 5, 32),
(51, 5, 33),
(52, 5, 34),
(53, 5, 35),
(54, 2, 36),
(55, 4, 36),
(56, 5, 37),
(57, 3, 38),
(58, 5, 39),
(59, 5, 40),
(60, 5, 41),
(61, 5, 42),
(62, 1, 43),
(63, 4, 43),
(64, 1, 44),
(65, 1, 45),
(66, 1, 46),
(67, 1, 47),
(68, 1, 48),
(69, 1, 49),
(70, 2, 49),
(71, 1, 50),
(72, 1, 51),
(73, 5, 52),
(74, 5, 53),
(75, 1, 53),
(76, 2, 53),
(77, 3, 53),
(78, 4, 53),
(79, 6, 53),
(80, 1, 54),
(81, 4, 55),
(82, 6, 56),
(83, 2, 57),
(84, 2, 58),
(85, 2, 59),
(86, 5, 59),
(87, 1, 59),
(88, 4, 60),
(89, 2, 60),
(90, 6, 61),
(91, 6, 62),
(92, 4, 63),
(93, 2, 64),
(94, 6, 65),
(95, 1, 66),
(96, 2, 66),
(97, 3, 66),
(98, 4, 66),
(99, 5, 66),
(100, 6, 66),
(101, 5, 67),
(102, 6, 68),
(103, 6, 69),
(104, 3, 70),
(105, 4, 73),
(106, 6, 72);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indici per le tabelle `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indici per le tabelle `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indici per le tabelle `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indici per le tabelle `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indici per le tabelle `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indici per le tabelle `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indici per le tabelle `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indici per le tabelle `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indici per le tabelle `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_actor_process_id_d24aa330_fk_parsingbpmn_system_id` (`process_id`);

--
-- Indici per le tabelle `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_asset_asset_type_id_2a32922f_fk_parsingbp` (`asset_type_id`),
  ADD KEY `parsingbpmn_asset_process_id_f1708c54_fk_parsingbpmn_process_id` (`process_id`);

--
-- Indici per le tabelle `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_asset_ha_asset_id_aa73cc70_fk_parsingbp` (`asset_id`),
  ADD KEY `parsingbpmn_asset_ha_attribute_id_1481f8c4_fk_parsingbp` (`attribute_id`);

--
-- Indici per le tabelle `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_attribut_attribute_value_id_bfcbe512_fk_parsingbp` (`attribute_value_id`),
  ADD KEY `parsingbpmn_attribut_asset_type_id_fe69074c_fk_parsingbp` (`asset_type_id`);

--
-- Indici per le tabelle `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_control`
--
ALTER TABLE `parsingbpmn_control`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_dataobjectattribute`
--
ALTER TABLE `parsingbpmn_dataobjectattribute`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_overallr_asset_id_a90dd13a_fk_parsingbp` (`asset_id`),
  ADD KEY `parsingbpmn_overallr_process_id_d6476854_fk_parsingbp` (`process_id`),
  ADD KEY `parsingbpmn_overallr_system_id_77a4c856_fk_parsingbp` (`system_id`);

--
-- Indici per le tabelle `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_process_system_id_de20096e_fk_parsingbpmn_system_id` (`system_id`);

--
-- Indici per le tabelle `parsingbpmn_reply`
--
ALTER TABLE `parsingbpmn_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_risk_asset_id_e1d75156_fk_parsingbpmn_asset_id` (`asset_id`),
  ADD KEY `parsingbpmn_risk_process_id_e7df9970_fk_parsingbpmn_process_id` (`process_id`),
  ADD KEY `parsingbpmn_risk_system_id_14dbe4d1_fk_parsingbpmn_system_id` (`system_id`),
  ADD KEY `parsingbpmn_risk_threat_stride_id_b393f1a9_fk_parsingbp` (`threat_stride_id`);

--
-- Indici per le tabelle `parsingbpmn_stride`
--
ALTER TABLE `parsingbpmn_stride`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_strideim_stride_id_ffcd0aa5_fk_parsingbp` (`stride_id`),
  ADD KEY `parsingbpmn_strideim_system_id_ff099720_fk_parsingbp` (`system_id`),
  ADD KEY `parsingbpmn_strideim_process_id_a5e6c918_fk_parsingbp` (`process_id`);

--
-- Indici per le tabelle `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_system_t_category_id_c8fc893a_fk_parsingbp` (`category_id`),
  ADD KEY `parsingbpmn_system_t_system_id_6fa9aab0_fk_parsingbp` (`system_id`);

--
-- Indici per le tabelle `parsingbpmn_tacategoryattribute`
--
ALTER TABLE `parsingbpmn_tacategoryattribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tacatego_attribute_id_3dcbdfb1_fk_parsingbp` (`attribute_id`),
  ADD KEY `parsingbpmn_tacatego_category_id_54a051c7_fk_parsingbp` (`category_id`);

--
-- Indici per le tabelle `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tareplie_question_id_1a607f61_fk_parsingbp` (`question_id`),
  ADD KEY `parsingbpmn_tareplie_reply_id_0e154aae_fk_parsingbp` (`reply_id`);

--
-- Indici per le tabelle `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tareplyc_category_id_398b7fa7_fk_parsingbp` (`category_id`),
  ADD KEY `parsingbpmn_tareplyc_reply_id_5a0188c3_fk_parsingbp` (`reply_id`);

--
-- Indici per le tabelle `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threatagentattribute`
--
ALTER TABLE `parsingbpmn_threatagentattribute`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threatagentcategory`
--
ALTER TABLE `parsingbpmn_threatagentcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threatagentquestion`
--
ALTER TABLE `parsingbpmn_threatagentquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `parsingbpmn_threatagentriskscores`
--
ALTER TABLE `parsingbpmn_threatagentriskscores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threatag_system_id_6ca17507_fk_parsingbp` (`system_id`);

--
-- Indici per le tabelle `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threat_h_attribute_id_135fbf09_fk_parsingbp` (`attribute_id`),
  ADD KEY `parsingbpmn_threat_h_threat_id_e9510391_fk_parsingbp` (`threat_id`);

--
-- Indici per le tabelle `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threat_h_control_id_7388a9d5_fk_parsingbp` (`control_id`),
  ADD KEY `parsingbpmn_threat_h_threat_id_e0101e51_fk_parsingbp` (`threat_id`);

--
-- Indici per le tabelle `parsingbpmn_threat_stride`
--
ALTER TABLE `parsingbpmn_threat_stride`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_threat_s_stride_id_7c72a7c7_fk_parsingbp` (`stride_id`),
  ADD KEY `parsingbpmn_threat_s_threat_id_d0c8cc23_fk_parsingbp` (`threat_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT per la tabella `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT per la tabella `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1068;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_control`
--
ALTER TABLE `parsingbpmn_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_dataobjectattribute`
--
ALTER TABLE `parsingbpmn_dataobjectattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_reply`
--
ALTER TABLE `parsingbpmn_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1211;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_stride`
--
ALTER TABLE `parsingbpmn_stride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1017;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tacategoryattribute`
--
ALTER TABLE `parsingbpmn_tacategoryattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentattribute`
--
ALTER TABLE `parsingbpmn_threatagentattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentcategory`
--
ALTER TABLE `parsingbpmn_threatagentcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentquestion`
--
ALTER TABLE `parsingbpmn_threatagentquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentriskscores`
--
ALTER TABLE `parsingbpmn_threatagentriskscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_stride`
--
ALTER TABLE `parsingbpmn_threat_stride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Limiti per la tabella `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limiti per la tabella `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limiti per la tabella `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  ADD CONSTRAINT `parsingbpmn_actor_process_id_d24aa330_fk_parsingbpmn_system_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  ADD CONSTRAINT `parsingbpmn_asset_asset_type_id_2a32922f_fk_parsingbp` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_process_id_f1708c54_fk_parsingbpmn_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

--
-- Limiti per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_id_aa73cc70_fk_parsingbp` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_attribute_id_1481f8c4_fk_parsingbp` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`);

--
-- Limiti per la tabella `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  ADD CONSTRAINT `parsingbpmn_attribut_asset_type_id_fe69074c_fk_parsingbp` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingbpmn_attribut_attribute_value_id_bfcbe512_fk_parsingbp` FOREIGN KEY (`attribute_value_id`) REFERENCES `parsingbpmn_attribute_value` (`id`);

--
-- Limiti per la tabella `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  ADD CONSTRAINT `parsingbpmn_overallr_asset_id_a90dd13a_fk_parsingbp` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_overallr_process_id_d6476854_fk_parsingbp` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`),
  ADD CONSTRAINT `parsingbpmn_overallr_system_id_77a4c856_fk_parsingbp` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  ADD CONSTRAINT `parsingbpmn_process_system_id_de20096e_fk_parsingbpmn_system_id` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  ADD CONSTRAINT `parsingbpmn_risk_asset_id_e1d75156_fk_parsingbpmn_asset_id` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_risk_process_id_e7df9970_fk_parsingbpmn_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`),
  ADD CONSTRAINT `parsingbpmn_risk_system_id_14dbe4d1_fk_parsingbpmn_system_id` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`),
  ADD CONSTRAINT `parsingbpmn_risk_threat_stride_id_b393f1a9_fk_parsingbp` FOREIGN KEY (`threat_stride_id`) REFERENCES `parsingbpmn_threat_stride` (`id`);

--
-- Limiti per la tabella `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  ADD CONSTRAINT `parsingbpmn_strideim_process_id_a5e6c918_fk_parsingbp` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`),
  ADD CONSTRAINT `parsingbpmn_strideim_stride_id_ffcd0aa5_fk_parsingbp` FOREIGN KEY (`stride_id`) REFERENCES `parsingbpmn_stride` (`id`),
  ADD CONSTRAINT `parsingbpmn_strideim_system_id_ff099720_fk_parsingbp` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  ADD CONSTRAINT `parsingbpmn_system_t_category_id_c8fc893a_fk_parsingbp` FOREIGN KEY (`category_id`) REFERENCES `parsingbpmn_threatagentcategory` (`id`),
  ADD CONSTRAINT `parsingbpmn_system_t_system_id_6fa9aab0_fk_parsingbp` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_tacategoryattribute`
--
ALTER TABLE `parsingbpmn_tacategoryattribute`
  ADD CONSTRAINT `parsingbpmn_tacatego_attribute_id_3dcbdfb1_fk_parsingbp` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_threatagentattribute` (`id`),
  ADD CONSTRAINT `parsingbpmn_tacatego_category_id_54a051c7_fk_parsingbp` FOREIGN KEY (`category_id`) REFERENCES `parsingbpmn_threatagentcategory` (`id`);

--
-- Limiti per la tabella `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  ADD CONSTRAINT `parsingbpmn_tareplie_question_id_1a607f61_fk_parsingbp` FOREIGN KEY (`question_id`) REFERENCES `parsingbpmn_threatagentquestion` (`id`),
  ADD CONSTRAINT `parsingbpmn_tareplie_reply_id_0e154aae_fk_parsingbp` FOREIGN KEY (`reply_id`) REFERENCES `parsingbpmn_reply` (`id`);

--
-- Limiti per la tabella `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  ADD CONSTRAINT `parsingbpmn_tareplyc_category_id_398b7fa7_fk_parsingbp` FOREIGN KEY (`category_id`) REFERENCES `parsingbpmn_threatagentcategory` (`id`),
  ADD CONSTRAINT `parsingbpmn_tareplyc_reply_id_5a0188c3_fk_parsingbp` FOREIGN KEY (`reply_id`) REFERENCES `parsingbpmn_reply` (`id`);

--
-- Limiti per la tabella `parsingbpmn_threatagentriskscores`
--
ALTER TABLE `parsingbpmn_threatagentriskscores`
  ADD CONSTRAINT `parsingbpmn_threatag_system_id_6ca17507_fk_parsingbp` FOREIGN KEY (`system_id`) REFERENCES `parsingbpmn_system` (`id`);

--
-- Limiti per la tabella `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  ADD CONSTRAINT `parsingbpmn_threat_h_attribute_id_135fbf09_fk_parsingbp` FOREIGN KEY (`attribute_id`) REFERENCES `parsingbpmn_attribute` (`id`),
  ADD CONSTRAINT `parsingbpmn_threat_h_threat_id_e9510391_fk_parsingbp` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);

--
-- Limiti per la tabella `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  ADD CONSTRAINT `parsingbpmn_threat_h_control_id_7388a9d5_fk_parsingbp` FOREIGN KEY (`control_id`) REFERENCES `parsingbpmn_control` (`id`),
  ADD CONSTRAINT `parsingbpmn_threat_h_threat_id_e0101e51_fk_parsingbp` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);

--
-- Limiti per la tabella `parsingbpmn_threat_stride`
--
ALTER TABLE `parsingbpmn_threat_stride`
  ADD CONSTRAINT `parsingbpmn_threat_s_stride_id_7c72a7c7_fk_parsingbp` FOREIGN KEY (`stride_id`) REFERENCES `parsingbpmn_stride` (`id`),
  ADD CONSTRAINT `parsingbpmn_threat_s_threat_id_d0c8cc23_fk_parsingbp` FOREIGN KEY (`threat_id`) REFERENCES `parsingbpmn_threat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
