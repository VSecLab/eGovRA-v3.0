-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Lug 06, 2022 alle 19:32
-- Versione del server: 10.6.7-MariaDB-2ubuntu1
-- Versione PHP: 8.1.2

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
(25, 'Can add actor', 7, 'add_actor'),
(26, 'Can change actor', 7, 'change_actor'),
(27, 'Can delete actor', 7, 'delete_actor'),
(28, 'Can view actor', 7, 'view_actor'),
(29, 'Can add Asset', 8, 'add_asset'),
(30, 'Can change Asset', 8, 'change_asset'),
(31, 'Can delete Asset', 8, 'delete_asset'),
(32, 'Can view Asset', 8, 'view_asset'),
(33, 'Can add Asset_type', 9, 'add_asset_type'),
(34, 'Can change Asset_type', 9, 'change_asset_type'),
(35, 'Can delete Asset_type', 9, 'delete_asset_type'),
(36, 'Can view Asset_type', 9, 'view_asset_type'),
(37, 'Can add Attribute', 10, 'add_attribute'),
(38, 'Can change Attribute', 10, 'change_attribute'),
(39, 'Can delete Attribute', 10, 'delete_attribute'),
(40, 'Can view Attribute', 10, 'view_attribute'),
(41, 'Can add Attribute_value', 11, 'add_attribute_value'),
(42, 'Can change Attribute_value', 11, 'change_attribute_value'),
(43, 'Can delete Attribute_value', 11, 'delete_attribute_value'),
(44, 'Can view Attribute_value', 11, 'view_attribute_value'),
(45, 'Can add Control', 12, 'add_control'),
(46, 'Can change Control', 12, 'change_control'),
(47, 'Can delete Control', 12, 'delete_control'),
(48, 'Can view Control', 12, 'view_control'),
(49, 'Can add data object attribute', 13, 'add_dataobjectattribute'),
(50, 'Can change data object attribute', 13, 'change_dataobjectattribute'),
(51, 'Can delete data object attribute', 13, 'delete_dataobjectattribute'),
(52, 'Can view data object attribute', 13, 'view_dataobjectattribute'),
(53, 'Can add Process', 14, 'add_process'),
(54, 'Can change Process', 14, 'change_process'),
(55, 'Can delete Process', 14, 'delete_process'),
(56, 'Can view Process', 14, 'view_process'),
(57, 'Can add reply', 15, 'add_reply'),
(58, 'Can change reply', 15, 'change_reply'),
(59, 'Can delete reply', 15, 'delete_reply'),
(60, 'Can view reply', 15, 'view_reply'),
(61, 'Can add stride', 16, 'add_stride'),
(62, 'Can change stride', 16, 'change_stride'),
(63, 'Can delete stride', 16, 'delete_stride'),
(64, 'Can view stride', 16, 'view_stride'),
(65, 'Can add System', 17, 'add_system'),
(66, 'Can change System', 17, 'change_system'),
(67, 'Can delete System', 17, 'delete_system'),
(68, 'Can view System', 17, 'view_system'),
(69, 'Can add Threat', 18, 'add_threat'),
(70, 'Can change Threat', 18, 'change_threat'),
(71, 'Can delete Threat', 18, 'delete_threat'),
(72, 'Can view Threat', 18, 'view_threat'),
(73, 'Can add threat agent attribute', 19, 'add_threatagentattribute'),
(74, 'Can change threat agent attribute', 19, 'change_threatagentattribute'),
(75, 'Can delete threat agent attribute', 19, 'delete_threatagentattribute'),
(76, 'Can view threat agent attribute', 19, 'view_threatagentattribute'),
(77, 'Can add threat agent category', 20, 'add_threatagentcategory'),
(78, 'Can change threat agent category', 20, 'change_threatagentcategory'),
(79, 'Can delete threat agent category', 20, 'delete_threatagentcategory'),
(80, 'Can view threat agent category', 20, 'view_threatagentcategory'),
(81, 'Can add threat agent question', 21, 'add_threatagentquestion'),
(82, 'Can change threat agent question', 21, 'change_threatagentquestion'),
(83, 'Can delete threat agent question', 21, 'delete_threatagentquestion'),
(84, 'Can view threat agent question', 21, 'view_threatagentquestion'),
(85, 'Can add threat agent risk scores', 22, 'add_threatagentriskscores'),
(86, 'Can change threat agent risk scores', 22, 'change_threatagentriskscores'),
(87, 'Can delete threat agent risk scores', 22, 'delete_threatagentriskscores'),
(88, 'Can view threat agent risk scores', 22, 'view_threatagentriskscores'),
(89, 'Can add threat_ stride', 23, 'add_threat_stride'),
(90, 'Can change threat_ stride', 23, 'change_threat_stride'),
(91, 'Can delete threat_ stride', 23, 'delete_threat_stride'),
(92, 'Can view threat_ stride', 23, 'view_threat_stride'),
(93, 'Can add threat_has_control', 24, 'add_threat_has_control'),
(94, 'Can change threat_has_control', 24, 'change_threat_has_control'),
(95, 'Can delete threat_has_control', 24, 'delete_threat_has_control'),
(96, 'Can view threat_has_control', 24, 'view_threat_has_control'),
(97, 'Can add threat_has_attribute', 25, 'add_threat_has_attribute'),
(98, 'Can change threat_has_attribute', 25, 'change_threat_has_attribute'),
(99, 'Can delete threat_has_attribute', 25, 'delete_threat_has_attribute'),
(100, 'Can view threat_has_attribute', 25, 'view_threat_has_attribute'),
(101, 'Can add task_manages_ data', 26, 'add_task_manages_data'),
(102, 'Can change task_manages_ data', 26, 'change_task_manages_data'),
(103, 'Can delete task_manages_ data', 26, 'delete_task_manages_data'),
(104, 'Can view task_manages_ data', 26, 'view_task_manages_data'),
(105, 'Can add ta reply category', 27, 'add_tareplycategory'),
(106, 'Can change ta reply category', 27, 'change_tareplycategory'),
(107, 'Can delete ta reply category', 27, 'delete_tareplycategory'),
(108, 'Can view ta reply category', 27, 'view_tareplycategory'),
(109, 'Can add ta replies_ question', 28, 'add_tareplies_question'),
(110, 'Can change ta replies_ question', 28, 'change_tareplies_question'),
(111, 'Can delete ta replies_ question', 28, 'delete_tareplies_question'),
(112, 'Can view ta replies_ question', 28, 'view_tareplies_question'),
(113, 'Can add ta category attribute', 29, 'add_tacategoryattribute'),
(114, 'Can change ta category attribute', 29, 'change_tacategoryattribute'),
(115, 'Can delete ta category attribute', 29, 'delete_tacategoryattribute'),
(116, 'Can view ta category attribute', 29, 'view_tacategoryattribute'),
(117, 'Can add system_ threat agent', 30, 'add_system_threatagent'),
(118, 'Can change system_ threat agent', 30, 'change_system_threatagent'),
(119, 'Can delete system_ threat agent', 30, 'delete_system_threatagent'),
(120, 'Can view system_ threat agent', 30, 'view_system_threatagent'),
(121, 'Can add stride impact record', 31, 'add_strideimpactrecord'),
(122, 'Can change stride impact record', 31, 'change_strideimpactrecord'),
(123, 'Can delete stride impact record', 31, 'delete_strideimpactrecord'),
(124, 'Can view stride impact record', 31, 'view_strideimpactrecord'),
(125, 'Can add risk', 32, 'add_risk'),
(126, 'Can change risk', 32, 'change_risk'),
(127, 'Can delete risk', 32, 'delete_risk'),
(128, 'Can view risk', 32, 'view_risk'),
(129, 'Can add overall risk', 33, 'add_overallrisk'),
(130, 'Can change overall risk', 33, 'change_overallrisk'),
(131, 'Can delete overall risk', 33, 'delete_overallrisk'),
(132, 'Can view overall risk', 33, 'view_overallrisk'),
(133, 'Can add asset_has_ data object_attribute', 34, 'add_asset_has_dataobject_attribute'),
(134, 'Can change asset_has_ data object_attribute', 34, 'change_asset_has_dataobject_attribute'),
(135, 'Can delete asset_has_ data object_attribute', 34, 'delete_asset_has_dataobject_attribute'),
(136, 'Can view asset_has_ data object_attribute', 34, 'view_asset_has_dataobject_attribute'),
(137, 'Can add asset_has_attribute', 35, 'add_asset_has_attribute'),
(138, 'Can change asset_has_attribute', 35, 'change_asset_has_attribute'),
(139, 'Can delete asset_has_attribute', 35, 'delete_asset_has_attribute'),
(140, 'Can view asset_has_attribute', 35, 'view_asset_has_attribute'),
(141, 'Can add actor_manage_ data', 36, 'add_actor_manage_data'),
(142, 'Can change actor_manage_ data', 36, 'change_actor_manage_data'),
(143, 'Can delete actor_manage_ data', 36, 'delete_actor_manage_data'),
(144, 'Can view actor_manage_ data', 36, 'view_actor_manage_data');

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
(7, 'parsingbpmn', 'actor'),
(36, 'parsingbpmn', 'actor_manage_data'),
(8, 'parsingbpmn', 'asset'),
(35, 'parsingbpmn', 'asset_has_attribute'),
(34, 'parsingbpmn', 'asset_has_dataobject_attribute'),
(9, 'parsingbpmn', 'asset_type'),
(10, 'parsingbpmn', 'attribute'),
(11, 'parsingbpmn', 'attribute_value'),
(12, 'parsingbpmn', 'control'),
(13, 'parsingbpmn', 'dataobjectattribute'),
(33, 'parsingbpmn', 'overallrisk'),
(14, 'parsingbpmn', 'process'),
(15, 'parsingbpmn', 'reply'),
(32, 'parsingbpmn', 'risk'),
(16, 'parsingbpmn', 'stride'),
(31, 'parsingbpmn', 'strideimpactrecord'),
(17, 'parsingbpmn', 'system'),
(30, 'parsingbpmn', 'system_threatagent'),
(29, 'parsingbpmn', 'tacategoryattribute'),
(28, 'parsingbpmn', 'tareplies_question'),
(27, 'parsingbpmn', 'tareplycategory'),
(26, 'parsingbpmn', 'task_manages_data'),
(18, 'parsingbpmn', 'threat'),
(19, 'parsingbpmn', 'threatagentattribute'),
(20, 'parsingbpmn', 'threatagentcategory'),
(21, 'parsingbpmn', 'threatagentquestion'),
(22, 'parsingbpmn', 'threatagentriskscores'),
(25, 'parsingbpmn', 'threat_has_attribute'),
(24, 'parsingbpmn', 'threat_has_control'),
(23, 'parsingbpmn', 'threat_stride'),
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
(1, 'contenttypes', '0001_initial', '2022-07-04 10:08:35.366428'),
(2, 'auth', '0001_initial', '2022-07-04 10:08:35.713683'),
(3, 'admin', '0001_initial', '2022-07-04 10:08:35.837413'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-04 10:08:35.873043'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-04 10:08:35.884415'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-07-04 10:08:35.964386'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-07-04 10:08:36.026386'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-07-04 10:08:36.070754'),
(9, 'auth', '0004_alter_user_username_opts', '2022-07-04 10:08:36.081855'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-07-04 10:08:36.105415'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-07-04 10:08:36.107026'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-07-04 10:08:36.113895'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-07-04 10:08:36.134326'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-07-04 10:08:36.173983'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-07-04 10:08:36.203469'),
(16, 'auth', '0011_update_proxy_permissions', '2022-07-04 10:08:36.215480'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-07-04 10:08:36.255329'),
(18, 'parsingbpmn', '0001_initial', '2022-07-04 10:08:38.319061'),
(19, 'sessions', '0001_initial', '2022-07-04 10:08:38.372720');

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
  `process_bpmn_id` varchar(100) DEFAULT NULL,
  `process_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_actor`
--

INSERT INTO `parsingbpmn_actor` (`id`, `name`, `process_bpmn_id`, `process_id`) VALUES
(1, 'Voter', 'Process_1jc4gjl', 4),
(2, 'Voting Platform', 'Process_0ug2c5v', 4),
(3, 'Election Officer', 'Process_18khm4r', 4),
(4, 'Voter', 'Process_1jc4gjl', 5),
(5, 'Voting Platform', 'Process_0ug2c5v', 5),
(6, 'Election Officer', 'Process_18khm4r', 5),
(7, 'Voter', 'Process_1jc4gjl', 6),
(8, 'Voting Platform', 'Process_0ug2c5v', 6),
(9, 'Election Officer', 'Process_18khm4r', 6),
(10, 'Voter', 'Process_1jc4gjl', 7),
(11, 'Voting Platform', 'Process_0ug2c5v', 7),
(12, 'Election Officer', 'Process_18khm4r', 7),
(13, 'Voter', 'Process_1jc4gjl', 8),
(14, 'Voting Platform', 'Process_0ug2c5v', 8),
(15, 'Election Officer', 'Process_18khm4r', 8),
(16, 'Voter', 'Process_1jc4gjl', 9),
(17, 'Voting Platform', 'Process_0ug2c5v', 9),
(18, 'Election Officer', 'Process_18khm4r', 9),
(19, 'Voter', 'Process_1jc4gjl', 10),
(20, 'Voting Platform', 'Process_0ug2c5v', 10),
(21, 'Election Officer', 'Process_18khm4r', 10),
(22, 'Voter', 'Process_1jc4gjl', 11),
(23, 'Voting Platform', 'Process_0ug2c5v', 11),
(24, 'Election Officer', 'Process_18khm4r', 11),
(25, 'Voter', 'Process_1jc4gjl', 12),
(26, 'Voting Platform', 'Process_0ug2c5v', 12),
(27, 'Election Officer', 'Process_18khm4r', 12),
(28, 'Voter', 'Process_1jc4gjl', 13),
(29, 'Voting Platform', 'Process_0ug2c5v', 13),
(30, 'Election Officer', 'Process_18khm4r', 13),
(31, 'Voter', 'Process_1jc4gjl', 14),
(32, 'Voting Platform', 'Process_0ug2c5v', 14),
(33, 'Election Officer', 'Process_18khm4r', 14),
(34, 'Voter', 'Process_1jc4gjl', 15),
(35, 'Voting Platform', 'Process_0ug2c5v', 15),
(36, 'Election Officer', 'Process_18khm4r', 15),
(37, 'Voter', 'Process_1jc4gjl', 16),
(38, 'Voting Platform', 'Process_0ug2c5v', 16),
(39, 'Election Officer', 'Process_18khm4r', 16),
(40, 'Voter', 'Process_1jc4gjl', 17),
(41, 'Voting Platform', 'Process_0ug2c5v', 17),
(42, 'Election Officer', 'Process_18khm4r', 17),
(43, 'Voter', 'Process_1jc4gjl', 18),
(44, 'Voting Platform', 'Process_0ug2c5v', 18),
(45, 'Election Officer', 'Process_18khm4r', 18),
(46, 'Voter', 'Process_1jc4gjl', 19),
(47, 'Voting Platform', 'Process_0ug2c5v', 19),
(48, 'Election Officer', 'Process_18khm4r', 19),
(49, 'Voter', 'Process_1jc4gjl', 20),
(50, 'Voting Platform', 'Process_0ug2c5v', 20),
(51, 'Election Officer', 'Process_18khm4r', 20),
(52, 'Voter', 'Process_1jc4gjl', 21),
(53, 'Voting Platform', 'Process_0ug2c5v', 21),
(54, 'Election Officer', 'Process_18khm4r', 21),
(55, 'Voter', 'Process_1jc4gjl', 22),
(56, 'Voting Platform', 'Process_0ug2c5v', 22),
(57, 'Election Officer', 'Process_18khm4r', 22),
(58, 'Voter', 'Process_1jc4gjl', 23),
(59, 'Voting Platform', 'Process_0ug2c5v', 23),
(60, 'Election Officer', 'Process_18khm4r', 23),
(61, 'Voter', 'Process_1jc4gjl', 24),
(62, 'Voting Platform', 'Process_0ug2c5v', 24),
(63, 'Election Officer', 'Process_18khm4r', 24),
(64, 'Voter', 'Process_1jc4gjl', 25),
(65, 'Voting Platform', 'Process_0ug2c5v', 25),
(66, 'Election Officer', 'Process_18khm4r', 25),
(67, 'Voter', 'Process_1jc4gjl', 26),
(68, 'Voting Platform', 'Process_0ug2c5v', 26),
(69, 'Election Officer', 'Process_18khm4r', 26);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_actor_manage_data`
--

CREATE TABLE `parsingbpmn_actor_manage_data` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `process_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_actor_manage_data`
--

INSERT INTO `parsingbpmn_actor_manage_data` (`id`, `actor_id`, `data_id`, `process_id`) VALUES
(1, 2, 14, 5),
(2, 2, 21, 5),
(3, 3, 23, 5),
(4, 2, 38, 6),
(5, 2, 45, 6),
(6, 3, 47, 6),
(7, 2, 62, 7),
(8, 2, 69, 7),
(9, 3, 71, 7),
(10, 2, 89, 8),
(11, 2, 96, 8),
(12, 3, 98, 8),
(13, 2, 125, 9),
(14, 2, 132, 9),
(15, 3, 134, 9),
(16, 2, 152, 10),
(17, 2, 159, 10),
(18, 3, 161, 10),
(19, 2, 189, 11),
(20, 2, 196, 11),
(21, 3, 198, 11),
(22, 2, 216, 12),
(23, 2, 223, 12),
(24, 3, 225, 12),
(25, 2, 240, 13),
(26, 2, 247, 13),
(27, 3, 249, 13),
(28, 2, 264, 14),
(29, 2, 271, 14),
(30, 3, 273, 14),
(31, 2, 750, 15),
(32, 2, 757, 15),
(33, 3, 759, 15),
(34, 2, 775, 16),
(35, 2, 782, 16),
(36, 3, 784, 16),
(37, 2, 800, 17),
(38, 2, 807, 17),
(39, 3, 809, 17),
(40, 2, 825, 18),
(41, 2, 832, 18),
(42, 3, 834, 18),
(43, 2, 852, 19),
(44, 2, 859, 19),
(45, 3, 861, 19),
(46, 2, 877, 20),
(47, 2, 884, 20),
(48, 3, 886, 20),
(49, 2, 902, 21),
(50, 2, 909, 21),
(51, 3, 911, 21),
(52, 52, 919, 21),
(53, 2, 927, 22),
(54, 2, 934, 22),
(55, 3, 936, 22),
(56, 55, 944, 22),
(57, 2, 952, 23),
(58, 2, 959, 23),
(59, 3, 961, 23),
(60, 58, 969, 23),
(61, 2, 977, 24),
(62, 2, 984, 24),
(63, 3, 986, 24),
(64, 61, 994, 24),
(65, 2, 1002, 25),
(66, 2, 1009, 25),
(67, 3, 1011, 25),
(68, 2, 1026, 26),
(69, 2, 1033, 26),
(70, 3, 1035, 26);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset`
--

CREATE TABLE `parsingbpmn_asset` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bpmn_id` varchar(99) DEFAULT NULL,
  `position` varchar(99) DEFAULT NULL,
  `process_bpmn_id` varchar(99) DEFAULT NULL,
  `asset_type_id` int(11) DEFAULT NULL,
  `process_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset`
--

INSERT INTO `parsingbpmn_asset` (`id`, `name`, `bpmn_id`, `position`, `process_bpmn_id`, `asset_type_id`, `process_id`) VALUES
(1, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 4),
(2, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 4),
(3, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 4),
(4, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 4),
(5, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 4),
(6, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 4),
(7, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 5),
(8, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 5),
(9, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 5),
(10, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 5),
(11, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 5),
(12, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 5),
(13, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 5),
(14, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 5),
(15, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 5),
(16, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 5),
(17, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 5),
(18, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 5),
(19, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 5),
(20, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 5),
(21, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 5),
(22, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 5),
(23, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 5),
(24, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 5),
(25, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 5),
(26, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 5),
(27, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 5),
(28, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 5),
(29, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 5),
(30, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 5),
(31, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 6),
(32, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 6),
(33, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 6),
(34, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 6),
(35, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 6),
(36, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 6),
(37, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 6),
(38, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 6),
(39, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 6),
(40, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 6),
(41, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 6),
(42, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 6),
(43, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 6),
(44, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 6),
(45, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 6),
(46, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 6),
(47, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 6),
(48, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 6),
(49, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 6),
(50, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 6),
(51, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 6),
(52, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 6),
(53, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 6),
(54, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 6),
(55, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 7),
(56, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 7),
(57, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 7),
(58, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 7),
(59, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 7),
(60, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 7),
(61, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 7),
(62, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 7),
(63, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 7),
(64, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 7),
(65, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 7),
(66, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 7),
(67, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 7),
(68, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 7),
(69, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 7),
(70, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 7),
(71, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 7),
(72, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 7),
(73, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 7),
(74, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 7),
(75, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 7),
(76, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 7),
(77, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 7),
(78, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 7),
(79, 'Voter Profile', 'DataObjectReference_JKbHorf:DataObject_niPWSFW', '', NULL, 9, 7),
(80, 'Voting', 'DataObjectReference_KoDznTA:DataObject_lkehOPa', '', NULL, 9, 7),
(81, 'Voting Credentials', 'DataObjectReference_iTCRPrr:DataObject_szzIaaq', '', NULL, 9, 7),
(82, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 8),
(83, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 8),
(84, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 8),
(85, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 8),
(86, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 8),
(87, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 8),
(88, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 8),
(89, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 8),
(90, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 8),
(91, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 8),
(92, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 8),
(93, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 8),
(94, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 8),
(95, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 8),
(96, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 8),
(97, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 8),
(98, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 8),
(99, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 8),
(100, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 8),
(101, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 8),
(102, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 8),
(103, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 8),
(104, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 8),
(105, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 8),
(118, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 9),
(119, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 9),
(120, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 9),
(121, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 9),
(122, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 9),
(123, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 9),
(124, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 9),
(125, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 9),
(126, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 9),
(127, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 9),
(128, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 9),
(129, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 9),
(130, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 9),
(131, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 9),
(132, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 9),
(133, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 9),
(134, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 9),
(135, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 9),
(136, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 9),
(137, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 9),
(138, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 9),
(139, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 9),
(140, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 9),
(141, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 9),
(142, '(\'Voter Profile\', [\'1\', \'1\'])', 'DataObjectReference_HgGVUzp:DataObject_eRUszGM', '', NULL, 9, 9),
(143, '(\'Voting\', [\'1\'])', 'DataObjectReference_zdSmYYJ:DataObject_NRggPNW', '', NULL, 9, 9),
(144, '(\'Voting Credentials\', [\'1\', \'1\'])', 'DataObjectReference_fkIDJHX:DataObject_NwDxyFT', '', NULL, 9, 9),
(145, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 10),
(146, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 10),
(147, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 10),
(148, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 10),
(149, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 10),
(150, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 10),
(151, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 10),
(152, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 10),
(153, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 10),
(154, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 10),
(155, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 10),
(156, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 10),
(157, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 10),
(158, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 10),
(159, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 10),
(160, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 10),
(161, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 10),
(162, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 10),
(163, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 10),
(164, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 10),
(165, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 10),
(166, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 10),
(167, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 10),
(168, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 10),
(169, '(\'Voter Profile\', [\'1\', \'1\'])', 'DataObjectReference_IGVzaze:DataObject_ztQreqK', '', NULL, 9, 10),
(170, '(\'Voting\', [\'1\'])', 'DataObjectReference_hLbqqyA:DataObject_ezKbHMI', '', NULL, 9, 10),
(171, '(\'Voting Credentials\', [\'1\', \'1\'])', 'DataObjectReference_GzGttom:DataObject_CpfTsaL', '', NULL, 9, 10),
(172, '(\'1\', [\'1\', \'byte\', \'1\', \'1\', \'Voter\'])', 'DataObjectReference_JhjUkNM:DataObject_MuMHxig', '', NULL, 9, 10),
(173, '(\'23\', [\'1\', \'byte\', \'1\', \'1\', \'Voter\'])', 'DataObjectReference_whvPhQE:DataObject_ZdlyieJ', '', NULL, 9, 10),
(174, '(\"(\'Voting\',\", [\'1\'])', 'DataObjectReference_BkvWtGd:DataObject_jpLLkHD', '', NULL, 9, 10),
(175, '(\"(\'Voting\', [\'1\'])\", [\'1\', \'1\'])', 'DataObjectReference_kKzjwtg:DataObject_jIrxtgP', '', NULL, 9, 10),
(176, '(\"(\'Voting\", [\'1\'])', 'DataObjectReference_phVtNLe:DataObject_EkuAJZE', '', NULL, 9, 10),
(177, '(\"(\'Voting Credentials\', [\'1\', \'1\'])\", [\'1\', \'1\'])', 'DataObjectReference_xAOSdRl:DataObject_pTHepEo', '', NULL, 9, 10),
(178, '(\"(\'1\',\", [\'1\'])', 'DataObjectReference_IydBoPj:DataObject_axhCrsH', '', NULL, 9, 10),
(179, '(\"(\'1\', [\'1\', \'byte\', \'1\', \'1\', \'Voter\'])\", [\'1\', \'1\'])', 'DataObjectReference_IPFWGKO:DataObject_yzAsTjs', '', NULL, 9, 10),
(180, '(\"(\'23\',\", [\'1\'])', 'DataObjectReference_IZmvbDG:DataObject_sCvQiAz', '', NULL, 9, 10),
(181, '(\"(\'23\', [\'1\', \'byte\', \'1\', \'1\', \'Voter\'])\", [\'1\', \'1\'])', 'DataObjectReference_bjNEmHR:DataObject_yzdnnkJ', '', NULL, 9, 10),
(182, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 11),
(183, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 11),
(184, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 11),
(185, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 11),
(186, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 11),
(187, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 11),
(188, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 11),
(189, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 11),
(190, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 11),
(191, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 11),
(192, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 11),
(193, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 11),
(194, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 11),
(195, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 11),
(196, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 11),
(197, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 11),
(198, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 11),
(199, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 11),
(200, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 11),
(201, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 11),
(202, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 11),
(203, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 11),
(204, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 11),
(205, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 11),
(206, '(\'Voter Profile\', [\'1\', \'1\'])', 'DataObjectReference_mUPVFju:DataObject_HHXogOX', '', NULL, 9, 11),
(207, '(\'Voting\', [\'1\'])', 'DataObjectReference_VWoHvhQ:DataObject_Aipkqjl', '', NULL, 9, 11),
(208, '(\'Voting Credentials\', [\'1\', \'1\'])', 'DataObjectReference_zHfLygL:DataObject_BjoixMu', '', NULL, 9, 11),
(209, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 12),
(210, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 12),
(211, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 12),
(212, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 12),
(213, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 12),
(214, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 12),
(215, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 12),
(216, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 12),
(217, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 12),
(218, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 12),
(219, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 12),
(220, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 12),
(221, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 12),
(222, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 12),
(223, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 12),
(224, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 12),
(225, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 12),
(226, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 12),
(227, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 12),
(228, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 12),
(229, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 12),
(230, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 12),
(231, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 12),
(232, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 12),
(233, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 13),
(234, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 13),
(235, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 13),
(236, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 13),
(237, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 13),
(238, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 13),
(239, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 13),
(240, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 13),
(241, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 13),
(242, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 13),
(243, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 13),
(244, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 13),
(245, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 13),
(246, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 13),
(247, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 13),
(248, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 13),
(249, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 13),
(250, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 13),
(251, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 13),
(252, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 13),
(253, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 13),
(254, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 13),
(255, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 13),
(256, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 13),
(257, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 14),
(258, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 14),
(259, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 14),
(260, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 14),
(261, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 14),
(262, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 14),
(263, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 14),
(264, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 14),
(265, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 14),
(266, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 14),
(267, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 14),
(268, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 14),
(269, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 14),
(270, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 14),
(271, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 14),
(272, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 14),
(273, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 14),
(274, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 14),
(275, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 14),
(276, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 14),
(277, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 14),
(278, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 14),
(279, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 14),
(280, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 14),
(743, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 15),
(744, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 15),
(745, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 15),
(746, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 15),
(747, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 15),
(748, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 15),
(749, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 15),
(750, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 15),
(751, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 15),
(752, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 15),
(753, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 15),
(754, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 15),
(755, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 15),
(756, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 15),
(757, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 15),
(758, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 15),
(759, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 15),
(760, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 15),
(761, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 15),
(762, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 15),
(763, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 15),
(764, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 15),
(765, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 15),
(766, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 15),
(767, '(\'prova\', [\'1\', \'byte\', \'1\', \'1\', \'Voter\'])', 'DataObjectReference_HidgiiK:DataObject_qfvCFQB', '', NULL, 9, 15),
(768, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 16),
(769, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 16),
(770, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 16),
(771, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 16),
(772, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 16),
(773, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 16),
(774, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 16),
(775, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 16),
(776, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 16),
(777, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 16),
(778, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 16),
(779, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 16),
(780, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 16),
(781, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 16),
(782, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 16),
(783, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 16),
(784, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 16),
(785, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 16),
(786, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 16),
(787, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 16),
(788, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 16),
(789, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 16),
(790, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 16),
(791, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 16),
(792, '(\'prova\', [\'3\', \'byte\', \'1\', \'1\', \'Voter\'])', 'DataObjectReference_IVGCeYF:DataObject_lOJmKBK', '', NULL, 9, 16),
(793, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 17),
(794, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 17),
(795, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 17),
(796, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 17),
(797, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 17),
(798, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 17),
(799, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 17),
(800, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 17),
(801, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 17),
(802, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 17),
(803, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 17),
(804, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 17),
(805, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 17),
(806, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 17),
(807, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 17),
(808, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 17),
(809, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 17),
(810, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 17),
(811, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 17),
(812, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 17),
(813, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 17),
(814, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 17),
(815, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 17),
(816, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 17),
(817, '(\'prova1\', [\'1\', \'byte\', \'1\', \'1\', \'Voter\'])', 'DataObjectReference_KibSUqK:DataObject_fveGFrl', '', NULL, 9, 17),
(818, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 18),
(819, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 18),
(820, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 18),
(821, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 18),
(822, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 18),
(823, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 18),
(824, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 18),
(825, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 18),
(826, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 18),
(827, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 18),
(828, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 18),
(829, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 18),
(830, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 18),
(831, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 18),
(832, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 18),
(833, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 18),
(834, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 18),
(835, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 18),
(836, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 18),
(837, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 18),
(838, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 18),
(839, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 18),
(840, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 18),
(841, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 18),
(844, '(\'prova12\', [\'1\', \'byte\', \'1\', \'1\', \'Voter\'])', 'DataObjectReference_hDxjFSW:DataObject_XJpTorO', '', NULL, 9, 18),
(845, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 19),
(846, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 19),
(847, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 19),
(848, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 19),
(849, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 19),
(850, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 19),
(851, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 19),
(852, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 19),
(853, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 19),
(854, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 19),
(855, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 19),
(856, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 19),
(857, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 19),
(858, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 19),
(859, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 19),
(860, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 19),
(861, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 19),
(862, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 19),
(863, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 19),
(864, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 19),
(865, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 19),
(866, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 19),
(867, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 19),
(868, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 19),
(870, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 20),
(871, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 20),
(872, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 20),
(873, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 20),
(874, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 20),
(875, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 20),
(876, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 20),
(877, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 20),
(878, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 20),
(879, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 20),
(880, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 20),
(881, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 20),
(882, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 20),
(883, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 20),
(884, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 20),
(885, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 20),
(886, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 20),
(887, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 20),
(888, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 20),
(889, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 20),
(890, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 20),
(891, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 20),
(892, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 20),
(893, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 20),
(894, '(\'Ballot Box\', [\'1\', \'byte\', \'1\', \'1\'])', 'DataObjectReference_DgChlcW:DataObject_DDTBTSC', '', NULL, 9, 20),
(895, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 21),
(896, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 21),
(897, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 21),
(898, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 21),
(899, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 21),
(900, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 21),
(901, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 21),
(902, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 21),
(903, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 21),
(904, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 21),
(905, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 21),
(906, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 21),
(907, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 21),
(908, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 21),
(909, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 21),
(910, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 21),
(911, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 21),
(912, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 21),
(913, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 21),
(914, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 21),
(915, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 21),
(916, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 21),
(917, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 21),
(918, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 21),
(919, 'prova1', 'DataObjectReference_KjwAGpf:DataObject_UqiTMmd', '1490:620:36:50', 'Process_1jc4gjl', 9, 21),
(920, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 22),
(921, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 22),
(922, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 22),
(923, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 22),
(924, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 22),
(925, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 22),
(926, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 22),
(927, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 22),
(928, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 22),
(929, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 22),
(930, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 22),
(931, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 22),
(932, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 22),
(933, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 22),
(934, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 22),
(935, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 22),
(936, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 22),
(937, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 22),
(938, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 22),
(939, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 22),
(940, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 22),
(941, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 22),
(942, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 22),
(943, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 22),
(944, 'Dato', 'DataObjectReference_puPYEbl:DataObject_qsMYusl', '1330:970:36:50', 'Process_1jc4gjl', 9, 22),
(945, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 23),
(946, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 23),
(947, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 23),
(948, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 23),
(949, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 23),
(950, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 23),
(951, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 23),
(952, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 23),
(953, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 23),
(954, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 23),
(955, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 23),
(956, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 23),
(957, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 23),
(958, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 23),
(959, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 23),
(960, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 23),
(961, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 23),
(962, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 23),
(963, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 23),
(964, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 23),
(965, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 23),
(966, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 23),
(967, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 23),
(968, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 23),
(969, 'prov', 'DataObjectReference_YcRadjv:DataObject_mWmvrrc', '530:970:36:50', 'Process_1jc4gjl', 9, 23),
(970, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 24),
(971, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 24),
(972, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 24),
(973, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 24),
(974, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 24),
(975, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 24),
(976, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 24),
(977, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 24),
(978, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 24),
(979, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 24),
(980, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 24),
(981, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 24),
(982, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 24);
INSERT INTO `parsingbpmn_asset` (`id`, `name`, `bpmn_id`, `position`, `process_bpmn_id`, `asset_type_id`, `process_id`) VALUES
(983, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 24),
(984, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 24),
(985, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 24),
(986, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 24),
(987, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 24),
(988, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 24),
(989, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 24),
(990, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 24),
(991, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 24),
(992, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 24),
(993, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 24),
(994, 'pro', 'DataObjectReference_dmWxTun:DataObject_fEcJmft', '1900:620:36:50', 'Process_1jc4gjl', 9, 24),
(995, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 25),
(996, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 25),
(997, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 25),
(998, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 25),
(999, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 25),
(1000, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 25),
(1001, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 25),
(1002, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 25),
(1003, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 25),
(1004, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 25),
(1005, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 25),
(1006, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 25),
(1007, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 25),
(1008, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 25),
(1009, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 25),
(1010, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 25),
(1011, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 25),
(1012, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 25),
(1013, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 25),
(1014, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 25),
(1015, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 25),
(1016, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 25),
(1017, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 25),
(1018, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 25),
(1019, 'Recieve Voting Credentials', 'Activity_1dz6vxw', '360:160:100:80', 'Process_1jc4gjl', 2, 26),
(1020, 'Send Input Profile Data', 'Activity_011r2zb', '970:120:100:80', 'Activity_1dr8h8u', 1, 26),
(1021, 'Vote', 'Activity_1n7r7pe', '1570:160:100:80', 'Process_1jc4gjl', 3, 26),
(1022, 'Display Voting Interface', 'Activity_0kmcjig', '950:500:100:80', 'Process_0ug2c5v', 5, 26),
(1023, 'Recieve Input Profile Data', 'Activity_13toy0q', '1110:500:100:80', 'Process_0ug2c5v', 2, 26),
(1024, 'Check Correctness input data', 'Activity_1ynnhrp', '1260:500:100:80', 'Process_0ug2c5v', 6, 26),
(1025, 'Send Authentication Response', 'Activity_12xy0pi', '1390:500:100:80', 'Process_0ug2c5v', 1, 26),
(1026, 'Ballot Box', 'DataObjectReference_1mpt5bp:DataObject_086m2nc', '762:595:36:50', 'Process_0ug2c5v', 9, 26),
(1027, 'Recieve Vote', 'Activity_13xahxy', '1550:500:100:80', 'Process_0ug2c5v', 2, 26),
(1028, 'Update Ballot Box', 'Activity_0a9oxa7', '1700:500:100:80', 'Process_0ug2c5v', 5, 26),
(1029, 'Tallying', 'Activity_10ud3tk', '1960:500:100:80', 'Process_0ug2c5v', 5, 26),
(1030, 'Save Report', 'Activity_1pic144', '2100:500:100:80', 'Process_0ug2c5v', 5, 26),
(1031, 'installation and configuration', 'Activity_09yovbq', '330:510:100:80', 'Process_0ug2c5v', 5, 26),
(1032, 'Generate Voter Profile', 'Activity_168t18f', '610:510:100:80', 'Process_0ug2c5v', 5, 26),
(1033, 'Voter Profile', 'DataObjectReference_0t7418m:DataObject_11d3k4u', '522:445:36:50', 'Process_0ug2c5v', 9, 26),
(1034, 'Send Voting Credentials', 'Activity_1jv5ulv', '430:850:100:80', 'Process_18khm4r', 1, 26),
(1035, 'Voting Credentials', 'DataObjectReference_1i6yz4m:DataObject_1kfvc6d', '542:935:36:50', 'Process_18khm4r', 9, 26),
(1036, 'Voter profile and credentials are created', 'Activity_1jqaw64', '300:850:100:80', 'Process_18khm4r', 3, 26),
(1037, 'Installation and configuration procedures are created', 'Activity_01ujlvk', '590:850:100:80', 'Process_18khm4r', 3, 26),
(1038, 'Check if ballot box is empty', 'Activity_1ye04ik', '760:850:100:80', 'Process_18khm4r', 3, 26),
(1039, 'Send Start Signal', 'Activity_08361g9', '1060:850:100:80', 'Process_18khm4r', 1, 26),
(1040, 'Close the voting', 'Activity_08s55wq', '1390:850:100:80', 'Process_18khm4r', 1, 26),
(1041, 'Recieve Report', 'Activity_0fcaxya', '2010:840:100:80', 'Process_18khm4r', 1, 26),
(1042, 'Publish Result', 'Activity_01dlzxb', '2170:840:100:80', 'Process_18khm4r', 3, 26);

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
(1, 12, 12),
(2, 36, 12),
(3, 60, 12),
(4, 87, 12),
(5, 123, 12),
(6, 150, 12),
(7, 187, 12),
(8, 214, 12),
(9, 238, 12),
(10, 262, 12),
(11, 257, 4),
(12, 258, 1),
(13, 259, 7),
(14, 260, 10),
(15, 261, 4),
(16, 263, 1),
(17, 265, 4),
(18, 266, 10),
(19, 267, 10),
(20, 268, 10),
(21, 269, 10),
(22, 270, 10),
(23, 272, 1),
(24, 274, 7),
(25, 275, 7),
(26, 276, 7),
(27, 277, 1),
(28, 278, 1),
(29, 279, 1),
(30, 280, 7),
(31, 748, 12),
(32, 773, 12),
(33, 798, 12),
(34, 823, 12),
(35, 850, 12),
(36, 875, 12),
(37, 900, 12),
(38, 895, 4),
(39, 896, 1),
(40, 897, 7),
(41, 898, 10),
(42, 899, 4),
(43, 901, 1),
(44, 903, 4),
(45, 904, 10),
(46, 905, 10),
(47, 906, 10),
(48, 907, 10),
(49, 908, 10),
(50, 910, 1),
(51, 912, 7),
(52, 913, 7),
(53, 914, 7),
(54, 915, 1),
(55, 916, 1),
(56, 917, 1),
(57, 918, 7),
(58, 925, 12),
(59, 920, 4),
(60, 921, 1),
(61, 922, 7),
(62, 923, 10),
(63, 924, 5),
(64, 926, 1),
(65, 928, 4),
(66, 929, 10),
(67, 930, 10),
(68, 931, 10),
(69, 932, 10),
(70, 933, 10),
(71, 935, 1),
(72, 937, 7),
(73, 938, 7),
(74, 939, 7),
(75, 940, 1),
(76, 941, 1),
(77, 942, 1),
(78, 943, 7),
(79, 950, 12),
(80, 945, 4),
(81, 946, 1),
(82, 947, 8),
(83, 948, 10),
(84, 949, 4),
(85, 951, 1),
(86, 953, 4),
(87, 954, 10),
(88, 955, 10),
(89, 956, 10),
(90, 957, 10),
(91, 958, 10),
(92, 960, 1),
(93, 962, 7),
(94, 963, 7),
(95, 964, 7),
(96, 965, 1),
(97, 966, 1),
(98, 967, 1),
(99, 968, 7),
(100, 975, 12),
(101, 970, 4),
(102, 971, 1),
(103, 972, 7),
(104, 973, 10),
(105, 974, 4),
(106, 976, 1),
(107, 978, 4),
(108, 979, 10),
(109, 980, 10),
(110, 981, 10),
(111, 982, 10),
(112, 983, 10),
(113, 985, 1),
(114, 987, 7),
(115, 988, 7),
(116, 989, 7),
(117, 990, 1),
(118, 991, 1),
(119, 992, 1),
(120, 993, 7),
(121, 1000, 12),
(122, 995, 4),
(123, 996, 1),
(124, 997, 7),
(125, 998, 10),
(126, 999, 4),
(127, 1001, 1),
(128, 1003, 4),
(129, 1004, 10),
(130, 1005, 10),
(131, 1006, 10),
(132, 1007, 10),
(133, 1008, 10),
(134, 1010, 1),
(135, 1012, 7),
(136, 1013, 7),
(137, 1014, 7),
(138, 1015, 1),
(139, 1016, 1),
(140, 1017, 1),
(141, 1018, 7),
(142, 1024, 12),
(143, 1019, 4),
(144, 1020, 1),
(145, 1021, 8),
(146, 1022, 11),
(147, 1023, 4),
(148, 1025, 1),
(149, 1027, 4),
(150, 1028, 10),
(151, 1029, 10),
(152, 1030, 10),
(153, 1031, 10),
(154, 1032, 10),
(155, 1034, 1),
(156, 1036, 7),
(157, 1037, 7),
(158, 1038, 7),
(159, 1039, 1),
(160, 1040, 1),
(161, 1041, 1),
(162, 1042, 7);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_has_dataobject_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_dataobject_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `data_object_attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_asset_has_dataobject_attribute`
--

INSERT INTO `parsingbpmn_asset_has_dataobject_attribute` (`id`, `asset_id`, `asset_type_id`, `data_object_attribute_id`) VALUES
(1, 240, 9, 6),
(2, 247, 9, 7),
(3, 249, 9, 8),
(4, 264, 9, 9),
(5, 271, 9, 10),
(6, 273, 9, 11),
(7, 750, 9, 12),
(8, 757, 9, 13),
(9, 759, 9, 14),
(10, 750, 9, 15),
(11, 757, 9, 16),
(12, 759, 9, 17),
(13, 775, 9, 18),
(14, 782, 9, 19),
(15, 784, 9, 20),
(16, 775, 9, 21),
(17, 782, 9, 22),
(18, 784, 9, 23),
(19, 800, 9, 24),
(20, 807, 9, 25),
(21, 809, 9, 26),
(22, 825, 9, 27),
(23, 832, 9, 28),
(24, 834, 9, 29),
(25, 825, 9, 30),
(26, 832, 9, 31),
(27, 834, 9, 32),
(28, 825, 9, 33),
(29, 832, 9, 34),
(30, 834, 9, 35),
(31, 825, 9, 36),
(32, 832, 9, 37),
(33, 834, 9, 38),
(34, 825, 9, 39),
(35, 832, 9, 40),
(36, 834, 9, 41),
(37, 852, 9, 42),
(38, 859, 9, 43),
(39, 861, 9, 44),
(40, 877, 9, 45),
(41, 884, 9, 46),
(42, 886, 9, 47),
(43, 902, 9, 48),
(44, 909, 9, 49),
(45, 911, 9, 50),
(46, 919, 9, 51),
(47, 902, 9, 52),
(48, 909, 9, 53),
(49, 911, 9, 54),
(50, 919, 9, 55),
(51, 927, 9, 56),
(52, 934, 9, 57),
(53, 936, 9, 58),
(54, 944, 9, 59),
(55, 927, 9, 60),
(56, 934, 9, 61),
(57, 936, 9, 62),
(58, 944, 9, 63),
(59, 927, 9, 64),
(60, 934, 9, 65),
(61, 936, 9, 66),
(62, 944, 9, 67),
(63, 952, 9, 68),
(64, 959, 9, 69),
(65, 961, 9, 70),
(66, 969, 9, 71),
(67, 977, 9, 72),
(68, 984, 9, 73),
(69, 986, 9, 74),
(70, 994, 9, 75),
(71, 1002, 9, 76),
(72, 1009, 9, 77),
(73, 1011, 9, 78),
(74, 1026, 9, 79),
(75, 1033, 9, 80),
(76, 1035, 9, 81);

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

--
-- Dump dei dati per la tabella `parsingbpmn_dataobjectattribute`
--

INSERT INTO `parsingbpmn_dataobjectattribute` (`id`, `size`, `order_of_size`, `personal`, `load_dependece`) VALUES
(1, 1, 'byte', '1', 1),
(2, 1, 'byte', '1', 1),
(3, 1, 'byte', '1', 1),
(4, 1, 'byte', '1', 1),
(5, 1, 'byte', '1', 1),
(6, 1, 'byte', '1', 1),
(7, 1, 'byte', '1', 1),
(8, 1, 'byte', '1', 1),
(9, 1, 'byte', '1', 1),
(10, 1, 'byte', '1', 1),
(11, 1, 'byte', '0', 1),
(12, 3, 'byte', '1', 1),
(13, 1, 'byte', '1', 1),
(14, 1, 'byte', '1', 1),
(15, 3, 'byte', '1', 1),
(16, 1, 'byte', '1', 1),
(17, 1, 'byte', '1', 1),
(18, 1, 'byte', '1', 1),
(19, 1, 'byte', '1', 1),
(20, 1, 'byte', '1', 1),
(21, 1, 'byte', '1', 1),
(22, 1, 'byte', '1', 1),
(23, 1, 'byte', '1', 1),
(24, 1, 'byte', '1', 1),
(25, 1, 'byte', '1', 1),
(26, 1, 'byte', '1', 1),
(27, 1, 'byte', '1', 1),
(28, 1, 'byte', '1', 1),
(29, 1, 'byte', '1', 1),
(30, 1, 'byte', '1', 1),
(31, 1, 'byte', '1', 1),
(32, 1, 'byte', '1', 1),
(33, 1, 'byte', '1', 1),
(34, 1, 'byte', '1', 1),
(35, 1, 'byte', '1', 1),
(36, 1, 'byte', '1', 1),
(37, 1, 'byte', '1', 1),
(38, 1, 'byte', '1', 1),
(39, 1, 'byte', '1', 1),
(40, 1, 'byte', '1', 1),
(41, 1, 'byte', '1', 1),
(42, 1, 'byte', '1', 1),
(43, 1, 'byte', '1', 1),
(44, 1, 'byte', '1', 1),
(45, 1, 'byte', '1', 1),
(46, 1, 'byte', '1', 1),
(47, 1, 'byte', '1', 1),
(48, 1, 'byte', '1', 1),
(49, 1, 'byte', '1', 1),
(50, 1, 'byte', '1', 1),
(51, 1, 'byte', '1', 1),
(52, 1, 'byte', '1', 1),
(53, 1, 'byte', '1', 1),
(54, 1, 'byte', '1', 1),
(55, 1, 'byte', '1', 1),
(56, 1, 'byte', '1', 1),
(57, 1, 'byte', '1', 1),
(58, 1, 'byte', '1', 1),
(59, 1, 'byte', '1', 1),
(60, 1, 'byte', '1', 1),
(61, 1, 'byte', '1', 1),
(62, 1, 'byte', '1', 1),
(63, 1, 'byte', '1', 1),
(64, 1, 'byte', '1', 1),
(65, 1, 'byte', '1', 1),
(66, 1, 'byte', '1', 1),
(67, 1, 'byte', '1', 1),
(68, 1, 'byte', '1', 1),
(69, 1, 'byte', '1', 1),
(70, 1, 'byte', '1', 1),
(71, 1, 'byte', '1', 1),
(72, 1, 'byte', '1', 1),
(73, 1, 'byte', '1', 1),
(74, 1, 'byte', '1', 1),
(75, 1, 'byte', '1', 1),
(76, 1, 'byte', '1', 1),
(77, 1, 'byte', '1', 1),
(78, 1, 'byte', '1', 1),
(79, 1, 'byte', '1', 1),
(80, 1, 'byte', '1', 1),
(81, 1, 'byte', '1', 1);

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
(1, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 257, 14, 1),
(2, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 258, 14, 1),
(3, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 259, 14, 1),
(4, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 260, 14, 1),
(5, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 261, 14, 1),
(6, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 262, 14, 1),
(7, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 263, 14, 1),
(8, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 264, 14, 1),
(9, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 265, 14, 1),
(10, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 266, 14, 1),
(11, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 267, 14, 1),
(12, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 268, 14, 1),
(13, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 269, 14, 1),
(14, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 270, 14, 1),
(15, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 271, 14, 1),
(16, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 272, 14, 1),
(17, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 273, 14, 1),
(18, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 274, 14, 1),
(19, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 275, 14, 1),
(20, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 276, 14, 1),
(21, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 277, 14, 1),
(22, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 278, 14, 1),
(23, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 279, 14, 1),
(24, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 280, 14, 1),
(25, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 895, 21, 1),
(26, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 896, 21, 1),
(27, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 897, 21, 1),
(28, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 898, 21, 1),
(29, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 899, 21, 1),
(30, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 900, 21, 1),
(31, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 901, 21, 1),
(32, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 902, 21, 1),
(33, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 903, 21, 1),
(34, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 904, 21, 1),
(35, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 905, 21, 1),
(36, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 906, 21, 1),
(37, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 907, 21, 1),
(38, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 908, 21, 1),
(39, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 909, 21, 1),
(40, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 910, 21, 1),
(41, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 911, 21, 1),
(42, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 912, 21, 1),
(43, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 913, 21, 1),
(44, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 914, 21, 1),
(45, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 915, 21, 1),
(46, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 916, 21, 1),
(47, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 917, 21, 1),
(48, 'LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'LOW', 918, 21, 1),
(49, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 919, 21, 1),
(50, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 920, 22, 2),
(51, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 945, 23, 2),
(52, 'MEDIUM', 'VERY LOW', 'VERY LOW', 'LOW', 'MEDIUM', 'LOW', 970, 24, 2),
(53, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 995, 25, 1),
(54, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 996, 25, 1),
(55, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 997, 25, 1),
(56, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 998, 25, 1),
(57, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 999, 25, 1),
(58, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1000, 25, 1),
(59, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1001, 25, 1),
(60, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 1002, 25, 1),
(61, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1003, 25, 1),
(62, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1004, 25, 1),
(63, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1005, 25, 1),
(64, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1006, 25, 1),
(65, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1007, 25, 1),
(66, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1008, 25, 1),
(67, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 1009, 25, 1),
(68, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1010, 25, 1),
(69, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 1011, 25, 1),
(70, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1012, 25, 1),
(71, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1013, 25, 1),
(72, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1014, 25, 1),
(73, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1015, 25, 1),
(74, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1016, 25, 1),
(75, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1017, 25, 1),
(76, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1018, 25, 1),
(77, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1019, 26, 3),
(78, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1020, 26, 3),
(79, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1021, 26, 3),
(80, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1022, 26, 3),
(81, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1023, 26, 3),
(82, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1024, 26, 3),
(83, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1025, 26, 3),
(84, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 1026, 26, 3),
(85, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1027, 26, 3),
(86, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1028, 26, 3),
(87, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1029, 26, 3),
(88, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1030, 26, 3),
(89, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1031, 26, 3),
(90, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1032, 26, 3),
(91, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 1033, 26, 3),
(92, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1034, 26, 3),
(93, 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 1035, 26, 3),
(94, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1036, 26, 3),
(95, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1037, 26, 3),
(96, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1038, 26, 3),
(97, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1039, 26, 3),
(98, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1040, 26, 3),
(99, 'LOW', 'VERY LOW', 'VERY LOW', 'VERY LOW', 'LOW', 'VERY LOW', 1041, 26, 3),
(100, 'VERY LOW', 'LOW', 'VERY LOW', 'VERY LOW', 'MEDIUM', 'VERY LOW', 1042, 26, 3);

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
(4, 'E-Voting', 'processes/xml/Voting-Scenario1_bTlT15b.bpmn', 1),
(5, 'E-Voting', 'processes/xml/Voting-Scenario1_aZW4Iid.bpmn', 1),
(6, 'E-Voting', 'processes/xml/Voting-Scenario1_LASarCj.bpmn', 1),
(7, 'E-Voting', 'processes/xml/Voting-Scenario1_0c81Alt.bpmn', 1),
(8, 'E-Voting', 'processes/xml/Voting-Scenario1_YQ7MaZx.bpmn', 1),
(9, 'E-Voting', 'processes/xml/Voting-Scenario1_kDDqEKk.bpmn', 1),
(10, 'E-Voting', 'processes/xml/Voting-Scenario1_UrZcyTr.bpmn', 1),
(11, 'E-Voting', 'processes/xml/Voting-Scenario1_HXL8xLd.bpmn', 1),
(12, 'E-Voting', 'processes/xml/Voting-Scenario1_75974Wk.bpmn', 1),
(13, 'E-Voting', 'processes/xml/Voting-Scenario1_8ja3Idu.bpmn', 1),
(14, 'E-Voting', 'processes/xml/Voting-Scenario1_MK8QsUf.bpmn', 1),
(15, 'E-Voting', 'processes/xml/Voting-Scenario1_S7nrrRV.bpmn', 1),
(16, 'E-Voting', 'processes/xml/Voting-Scenario1_xmmp2Ld.bpmn', 1),
(17, 'E-Voting', 'processes/xml/Voting-Scenario1_X3JCeMn.bpmn', 1),
(18, 'E-Voting', 'processes/xml/Voting-Scenario1_5VxVuQE.bpmn', 1),
(19, 'E-Voting', 'processes/xml/Voting-Scenario1_9blRrBw.bpmn', 1),
(20, 'E-Voting', 'processes/xml/Voting-Scenario1_0ROanap.bpmn', 1),
(21, 'E-Voting', 'processes/xml/Voting-Scenario1_A4zeXfI.bpmn', 1),
(22, 'E-Voting', 'processes/xml/Voting-Scenario1_qpzgYHi.bpmn', 2),
(23, 'E-Voting', 'processes/xml/Voting-Scenario1_AHCDuQO.bpmn', 2),
(24, 'E-Voting', 'processes/xml/Voting-Scenario1_f58fqnl.bpmn', 2),
(25, 'E-Voting', 'processes/xml/Voting-Scenario1_4WrfbF6.bpmn', 1),
(26, 'E-Voting', 'processes/xml/Voting-Scenario1_brQeho7.bpmn', 3);

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
  `likelihood` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `severity` varchar(100) NOT NULL,
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
  `process_id` int(11) DEFAULT NULL,
  `system_id` int(11) DEFAULT NULL,
  `threat_stride_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_risk`
--

INSERT INTO `parsingbpmn_risk` (`id`, `likelihood`, `impact`, `severity`, `skill`, `motive`, `opportunity`, `size`, `ease_of_discovery`, `ease_of_exploit`, `intrusion_detection`, `awareness`, `loss_of_confidentiality`, `loss_of_integrity`, `loss_of_availability`, `loss_of_accountability`, `financial`, `reputation`, `non_compliance`, `privacy`, `asset_id`, `process_id`, `system_id`, `threat_stride_id`) VALUES
(1, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 257, 14, 1, 1),
(2, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 257, 14, 1, 2),
(3, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 23),
(4, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 257, 14, 1, 27),
(5, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 257, 14, 1, 37),
(6, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 51),
(7, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 52),
(8, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 53),
(9, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 56),
(10, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 60),
(11, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 65),
(12, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 257, 14, 1, 71),
(13, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 258, 14, 1, 1),
(14, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 258, 14, 1, 2),
(15, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 23),
(16, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 258, 14, 1, 27),
(17, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 258, 14, 1, 37),
(18, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 258, 14, 1, 50),
(19, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 51),
(20, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 52),
(21, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 53),
(22, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 56),
(23, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 60),
(24, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 65),
(25, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 258, 14, 1, 71),
(26, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 259, 14, 1, 1),
(27, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 259, 14, 1, 2),
(28, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 259, 14, 1, 23),
(29, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 259, 14, 1, 29),
(30, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 259, 14, 1, 37),
(31, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 259, 14, 1, 38),
(32, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 259, 14, 1, 40),
(33, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 259, 14, 1, 50),
(34, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 259, 14, 1, 56),
(35, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 259, 14, 1, 57),
(36, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 259, 14, 1, 60),
(37, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 259, 14, 1, 74),
(38, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 260, 14, 1, 32),
(39, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 260, 14, 1, 34),
(40, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 260, 14, 1, 37),
(41, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 260, 14, 1, 50),
(42, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 260, 14, 1, 53),
(43, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 260, 14, 1, 56),
(44, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 260, 14, 1, 60),
(45, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 260, 14, 1, 73),
(46, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 261, 14, 1, 1),
(47, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 261, 14, 1, 2),
(48, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 23),
(49, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 261, 14, 1, 27),
(50, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 261, 14, 1, 37),
(51, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 51),
(52, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 52),
(53, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 53),
(54, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 56),
(55, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 60),
(56, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 65),
(57, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 261, 14, 1, 71),
(58, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 262, 14, 1, 1),
(59, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 262, 14, 1, 2),
(60, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 8, 1, 3, 7, 9, 8, 3, 5, 5, 5, 5, 262, 14, 1, 13),
(61, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 263, 14, 1, 1),
(62, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 263, 14, 1, 2),
(63, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 23),
(64, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 263, 14, 1, 27),
(65, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 263, 14, 1, 37),
(66, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 263, 14, 1, 50),
(67, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 51),
(68, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 52),
(69, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 53),
(70, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 56),
(71, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 60),
(72, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 65),
(73, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 263, 14, 1, 71),
(74, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 265, 14, 1, 1),
(75, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 265, 14, 1, 2),
(76, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 23),
(77, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 265, 14, 1, 27),
(78, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 265, 14, 1, 37),
(79, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 51),
(80, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 52),
(81, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 53),
(82, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 56),
(83, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 60),
(84, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 65),
(85, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 265, 14, 1, 71),
(86, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 266, 14, 1, 32),
(87, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 266, 14, 1, 34),
(88, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 266, 14, 1, 37),
(89, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 266, 14, 1, 50),
(90, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 266, 14, 1, 53),
(91, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 266, 14, 1, 56),
(92, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 266, 14, 1, 60),
(93, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 266, 14, 1, 73),
(94, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 267, 14, 1, 32),
(95, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 267, 14, 1, 34),
(96, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 267, 14, 1, 37),
(97, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 267, 14, 1, 50),
(98, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 267, 14, 1, 53),
(99, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 267, 14, 1, 56),
(100, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 267, 14, 1, 60),
(101, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 267, 14, 1, 73),
(102, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 268, 14, 1, 32),
(103, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 268, 14, 1, 34),
(104, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 268, 14, 1, 37),
(105, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 268, 14, 1, 50),
(106, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 268, 14, 1, 53),
(107, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 268, 14, 1, 56),
(108, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 268, 14, 1, 60),
(109, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 268, 14, 1, 73),
(110, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 269, 14, 1, 32),
(111, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 269, 14, 1, 34),
(112, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 269, 14, 1, 37),
(113, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 269, 14, 1, 50),
(114, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 269, 14, 1, 53),
(115, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 269, 14, 1, 56),
(116, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 269, 14, 1, 60),
(117, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 269, 14, 1, 73),
(118, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 270, 14, 1, 32),
(119, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 270, 14, 1, 34),
(120, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 270, 14, 1, 37),
(121, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 270, 14, 1, 50),
(122, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 270, 14, 1, 53),
(123, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 270, 14, 1, 56),
(124, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 270, 14, 1, 60),
(125, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 270, 14, 1, 73),
(126, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 272, 14, 1, 1),
(127, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 272, 14, 1, 2),
(128, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 23),
(129, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 272, 14, 1, 27),
(130, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 272, 14, 1, 37),
(131, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 272, 14, 1, 50),
(132, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 51),
(133, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 52),
(134, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 53),
(135, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 56),
(136, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 60),
(137, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 65),
(138, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 272, 14, 1, 71),
(139, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 274, 14, 1, 1),
(140, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 274, 14, 1, 2),
(141, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 274, 14, 1, 23),
(142, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 274, 14, 1, 29),
(143, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 274, 14, 1, 37),
(144, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 274, 14, 1, 38),
(145, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 274, 14, 1, 40),
(146, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 274, 14, 1, 50),
(147, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 274, 14, 1, 56),
(148, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 274, 14, 1, 57),
(149, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 274, 14, 1, 60),
(150, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 274, 14, 1, 74),
(151, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 275, 14, 1, 1),
(152, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 275, 14, 1, 2),
(153, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 275, 14, 1, 23),
(154, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 275, 14, 1, 29),
(155, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 275, 14, 1, 37),
(156, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 275, 14, 1, 38),
(157, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 275, 14, 1, 40),
(158, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 275, 14, 1, 50),
(159, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 275, 14, 1, 56),
(160, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 275, 14, 1, 57),
(161, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 275, 14, 1, 60),
(162, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 275, 14, 1, 74),
(163, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 276, 14, 1, 1),
(164, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 276, 14, 1, 2),
(165, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 276, 14, 1, 23),
(166, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 276, 14, 1, 29),
(167, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 276, 14, 1, 37),
(168, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 276, 14, 1, 38),
(169, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 276, 14, 1, 40),
(170, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 276, 14, 1, 50),
(171, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 276, 14, 1, 56),
(172, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 276, 14, 1, 57),
(173, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 276, 14, 1, 60),
(174, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 276, 14, 1, 74),
(175, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 277, 14, 1, 1),
(176, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 277, 14, 1, 2),
(177, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 23),
(178, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 277, 14, 1, 27),
(179, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 277, 14, 1, 37),
(180, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 277, 14, 1, 50),
(181, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 51),
(182, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 52),
(183, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 53),
(184, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 56),
(185, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 60),
(186, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 65),
(187, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 277, 14, 1, 71),
(188, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 278, 14, 1, 1),
(189, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 278, 14, 1, 2),
(190, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 23),
(191, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 278, 14, 1, 27),
(192, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 278, 14, 1, 37),
(193, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 278, 14, 1, 50),
(194, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 51),
(195, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 52),
(196, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 53),
(197, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 56),
(198, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 60),
(199, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 65),
(200, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 278, 14, 1, 71),
(201, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 279, 14, 1, 1),
(202, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 279, 14, 1, 2),
(203, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 23),
(204, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 279, 14, 1, 27),
(205, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 279, 14, 1, 37),
(206, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 279, 14, 1, 50),
(207, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 51),
(208, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 52),
(209, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 53),
(210, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 56),
(211, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 60),
(212, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 65),
(213, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 279, 14, 1, 71),
(214, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 280, 14, 1, 1),
(215, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 280, 14, 1, 2),
(216, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 280, 14, 1, 23),
(217, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 280, 14, 1, 29),
(218, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 280, 14, 1, 37),
(219, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 280, 14, 1, 38),
(220, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 280, 14, 1, 40),
(221, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 280, 14, 1, 50),
(222, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 280, 14, 1, 56),
(223, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 280, 14, 1, 57),
(224, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 280, 14, 1, 60),
(225, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 280, 14, 1, 74),
(226, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 895, 21, 1, 1),
(227, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 895, 21, 1, 2),
(228, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 23),
(229, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 895, 21, 1, 27),
(230, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 895, 21, 1, 37),
(231, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 51),
(232, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 52),
(233, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 53),
(234, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 56),
(235, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 60),
(236, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 65),
(237, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 895, 21, 1, 71),
(238, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 896, 21, 1, 1),
(239, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 896, 21, 1, 2),
(240, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 23),
(241, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 896, 21, 1, 27),
(242, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 896, 21, 1, 37),
(243, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 896, 21, 1, 50),
(244, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 51),
(245, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 52),
(246, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 53),
(247, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 56),
(248, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 60),
(249, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 65),
(250, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 896, 21, 1, 71),
(251, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 897, 21, 1, 1),
(252, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 897, 21, 1, 2),
(253, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 897, 21, 1, 23),
(254, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 897, 21, 1, 29),
(255, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 897, 21, 1, 37),
(256, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 897, 21, 1, 38),
(257, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 897, 21, 1, 40),
(258, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 897, 21, 1, 50),
(259, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 897, 21, 1, 56),
(260, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 897, 21, 1, 57),
(261, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 897, 21, 1, 60),
(262, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 897, 21, 1, 74),
(263, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 898, 21, 1, 32),
(264, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 898, 21, 1, 34),
(265, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 898, 21, 1, 37),
(266, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 898, 21, 1, 50),
(267, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 898, 21, 1, 53),
(268, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 898, 21, 1, 56),
(269, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 898, 21, 1, 60),
(270, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 898, 21, 1, 73),
(271, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 899, 21, 1, 1),
(272, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 899, 21, 1, 2),
(273, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 23),
(274, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 899, 21, 1, 27),
(275, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 899, 21, 1, 37),
(276, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 51),
(277, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 52),
(278, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 53),
(279, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 56),
(280, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 60),
(281, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 65),
(282, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 899, 21, 1, 71),
(283, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 900, 21, 1, 1),
(284, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 900, 21, 1, 2),
(285, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 8, 1, 3, 7, 9, 8, 3, 5, 5, 5, 5, 900, 21, 1, 13),
(286, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 901, 21, 1, 1),
(287, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 901, 21, 1, 2),
(288, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 23),
(289, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 901, 21, 1, 27),
(290, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 901, 21, 1, 37),
(291, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 901, 21, 1, 50),
(292, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 51),
(293, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 52),
(294, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 53),
(295, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 56),
(296, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 60),
(297, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 65),
(298, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 901, 21, 1, 71),
(299, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 903, 21, 1, 1),
(300, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 903, 21, 1, 2),
(301, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 23),
(302, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 903, 21, 1, 27),
(303, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 903, 21, 1, 37),
(304, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 51),
(305, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 52),
(306, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 53),
(307, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 56),
(308, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 60),
(309, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 65),
(310, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 903, 21, 1, 71),
(311, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 904, 21, 1, 32),
(312, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 904, 21, 1, 34),
(313, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 904, 21, 1, 37),
(314, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 904, 21, 1, 50),
(315, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 904, 21, 1, 53),
(316, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 904, 21, 1, 56),
(317, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 904, 21, 1, 60),
(318, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 904, 21, 1, 73),
(319, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 905, 21, 1, 32),
(320, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 905, 21, 1, 34),
(321, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 905, 21, 1, 37),
(322, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 905, 21, 1, 50),
(323, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 905, 21, 1, 53),
(324, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 905, 21, 1, 56),
(325, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 905, 21, 1, 60),
(326, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 905, 21, 1, 73),
(327, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 906, 21, 1, 32),
(328, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 906, 21, 1, 34),
(329, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 906, 21, 1, 37),
(330, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 906, 21, 1, 50),
(331, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 906, 21, 1, 53),
(332, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 906, 21, 1, 56),
(333, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 906, 21, 1, 60),
(334, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 906, 21, 1, 73),
(335, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 907, 21, 1, 32),
(336, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 907, 21, 1, 34),
(337, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 907, 21, 1, 37),
(338, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 907, 21, 1, 50),
(339, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 907, 21, 1, 53),
(340, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 907, 21, 1, 56),
(341, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 907, 21, 1, 60),
(342, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 907, 21, 1, 73),
(343, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 908, 21, 1, 32),
(344, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 908, 21, 1, 34),
(345, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 908, 21, 1, 37),
(346, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 908, 21, 1, 50),
(347, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 908, 21, 1, 53),
(348, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 908, 21, 1, 56),
(349, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 908, 21, 1, 60),
(350, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 5, 5, 5, 5, 908, 21, 1, 73),
(351, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 910, 21, 1, 1),
(352, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 910, 21, 1, 2),
(353, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 23),
(354, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 910, 21, 1, 27),
(355, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 910, 21, 1, 37),
(356, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 910, 21, 1, 50),
(357, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 51),
(358, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 52),
(359, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 53),
(360, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 56),
(361, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 60),
(362, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 65),
(363, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 910, 21, 1, 71),
(364, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 912, 21, 1, 1),
(365, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 912, 21, 1, 2),
(366, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 912, 21, 1, 23),
(367, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 912, 21, 1, 29),
(368, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 912, 21, 1, 37),
(369, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 912, 21, 1, 38),
(370, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 912, 21, 1, 40),
(371, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 912, 21, 1, 50),
(372, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 912, 21, 1, 56),
(373, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 912, 21, 1, 57),
(374, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 912, 21, 1, 60),
(375, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 912, 21, 1, 74),
(376, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 913, 21, 1, 1),
(377, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 913, 21, 1, 2),
(378, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 913, 21, 1, 23),
(379, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 913, 21, 1, 29),
(380, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 913, 21, 1, 37),
(381, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 913, 21, 1, 38),
(382, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 913, 21, 1, 40),
(383, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 913, 21, 1, 50),
(384, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 913, 21, 1, 56),
(385, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 913, 21, 1, 57),
(386, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 913, 21, 1, 60),
(387, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 913, 21, 1, 74),
(388, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 914, 21, 1, 1),
(389, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 914, 21, 1, 2),
(390, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 914, 21, 1, 23),
(391, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 914, 21, 1, 29),
(392, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 914, 21, 1, 37),
(393, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 914, 21, 1, 38),
(394, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 914, 21, 1, 40),
(395, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 914, 21, 1, 50),
(396, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 914, 21, 1, 56),
(397, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 914, 21, 1, 57),
(398, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 914, 21, 1, 60),
(399, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 914, 21, 1, 74),
(400, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 915, 21, 1, 1),
(401, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 915, 21, 1, 2),
(402, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 23),
(403, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 915, 21, 1, 27),
(404, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 915, 21, 1, 37),
(405, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 915, 21, 1, 50),
(406, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 51),
(407, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 52),
(408, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 53),
(409, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 56),
(410, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 60),
(411, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 65),
(412, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 915, 21, 1, 71),
(413, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 916, 21, 1, 1),
(414, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 916, 21, 1, 2),
(415, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 23),
(416, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 916, 21, 1, 27),
(417, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 916, 21, 1, 37),
(418, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 916, 21, 1, 50),
(419, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 51),
(420, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 52),
(421, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 53),
(422, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 56),
(423, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 60),
(424, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 65),
(425, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 916, 21, 1, 71),
(426, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 917, 21, 1, 1),
(427, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 917, 21, 1, 2),
(428, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 23),
(429, 5, 4, 'MEDIUM', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 917, 21, 1, 27),
(430, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 917, 21, 1, 37),
(431, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 917, 21, 1, 50),
(432, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 51),
(433, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 52),
(434, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 53),
(435, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 56),
(436, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 60),
(437, 6, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 65),
(438, 7, 5, 'HIGH', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 917, 21, 1, 71),
(439, 4, 5, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 918, 21, 1, 1),
(440, 4, 4, 'MEDIUM', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 918, 21, 1, 2),
(441, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 918, 21, 1, 23),
(442, 5, 5, 'MEDIUM', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 5, 5, 5, 5, 918, 21, 1, 29),
(443, 5, 5, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 918, 21, 1, 37),
(444, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 5, 5, 5, 5, 918, 21, 1, 38),
(445, 4, 5, 'MEDIUM', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 918, 21, 1, 40),
(446, 6, 6, 'CRITICAL', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 5, 5, 5, 5, 918, 21, 1, 50),
(447, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 918, 21, 1, 56),
(448, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 918, 21, 1, 57),
(449, 7, 5, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 918, 21, 1, 60),
(450, 7, 6, 'CRITICAL', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 5, 5, 5, 5, 918, 21, 1, 74),
(451, 4, 5, 'MEDIUM', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 920, 22, 2, 1),
(452, 4, 4, 'MEDIUM', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 920, 22, 2, 2),
(453, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 23),
(454, 4, 4, 'MEDIUM', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 920, 22, 2, 27),
(455, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 920, 22, 2, 37),
(456, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 51),
(457, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 52),
(458, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 53),
(459, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 56),
(460, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 60),
(461, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 65),
(462, 6, 5, 'HIGH', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 920, 22, 2, 71),
(463, 4, 5, 'MEDIUM', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 945, 23, 2, 1),
(464, 4, 4, 'MEDIUM', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 945, 23, 2, 2),
(465, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 23),
(466, 4, 4, 'MEDIUM', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 945, 23, 2, 27),
(467, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 945, 23, 2, 37),
(468, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 51),
(469, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 52),
(470, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 53),
(471, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 56),
(472, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 60),
(473, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 65),
(474, 6, 5, 'HIGH', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 945, 23, 2, 71),
(475, 4, 5, 'MEDIUM', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 5, 5, 5, 5, 970, 24, 2, 1),
(476, 4, 4, 'MEDIUM', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 5, 5, 5, 5, 970, 24, 2, 2),
(477, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 23),
(478, 4, 4, 'MEDIUM', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 5, 5, 5, 5, 970, 24, 2, 27),
(479, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 5, 5, 5, 5, 970, 24, 2, 37),
(480, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 51),
(481, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 52),
(482, 5, 5, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 53),
(483, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 56),
(484, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 60),
(485, 6, 5, 'HIGH', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 65),
(486, 6, 5, 'HIGH', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 5, 5, 5, 5, 970, 24, 2, 71),
(487, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 995, 25, 1, 1),
(488, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 995, 25, 1, 2),
(489, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 23),
(490, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 995, 25, 1, 27),
(491, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 995, 25, 1, 37),
(492, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 51),
(493, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 52),
(494, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 53),
(495, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 56),
(496, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 60),
(497, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 65),
(498, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 995, 25, 1, 71),
(499, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 996, 25, 1, 1),
(500, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 996, 25, 1, 2),
(501, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 23),
(502, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 996, 25, 1, 27),
(503, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 996, 25, 1, 37),
(504, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 996, 25, 1, 50),
(505, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 51),
(506, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 52),
(507, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 53),
(508, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 56),
(509, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 60),
(510, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 65),
(511, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 996, 25, 1, 71),
(512, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 997, 25, 1, 1),
(513, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 997, 25, 1, 2),
(514, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 997, 25, 1, 23),
(515, 5, 2, 'LOW', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 997, 25, 1, 29),
(516, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 997, 25, 1, 37),
(517, 7, 3, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 997, 25, 1, 38),
(518, 4, 2, 'LOW', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 997, 25, 1, 40),
(519, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 997, 25, 1, 50),
(520, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 997, 25, 1, 56),
(521, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 997, 25, 1, 57),
(522, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 997, 25, 1, 60),
(523, 7, 4, 'HIGH', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 997, 25, 1, 74),
(524, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 998, 25, 1, 32),
(525, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 998, 25, 1, 34),
(526, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 998, 25, 1, 37),
(527, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 998, 25, 1, 50),
(528, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 998, 25, 1, 53),
(529, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 998, 25, 1, 56),
(530, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 998, 25, 1, 60),
(531, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 998, 25, 1, 73),
(532, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 999, 25, 1, 1),
(533, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 999, 25, 1, 2),
(534, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 23),
(535, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 999, 25, 1, 27),
(536, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 999, 25, 1, 37),
(537, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 51),
(538, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 52),
(539, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 53),
(540, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 56),
(541, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 60),
(542, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 65),
(543, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 999, 25, 1, 71),
(544, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1000, 25, 1, 1),
(545, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1000, 25, 1, 2),
(546, 5, 3, 'MEDIUM', 7, 7, 6, 6, 6, 8, 1, 3, 7, 9, 8, 3, 0, 0, 0, 0, 1000, 25, 1, 13),
(547, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1001, 25, 1, 1),
(548, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1001, 25, 1, 2),
(549, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 23),
(550, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1001, 25, 1, 27),
(551, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1001, 25, 1, 37),
(552, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1001, 25, 1, 50),
(553, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 51),
(554, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 52),
(555, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 53),
(556, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 56),
(557, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 60),
(558, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 65),
(559, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1001, 25, 1, 71),
(560, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1003, 25, 1, 1),
(561, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1003, 25, 1, 2),
(562, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 23),
(563, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1003, 25, 1, 27),
(564, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1003, 25, 1, 37),
(565, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 51),
(566, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 52),
(567, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 53),
(568, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 56),
(569, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 60),
(570, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 65),
(571, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1003, 25, 1, 71),
(572, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1004, 25, 1, 32),
(573, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1004, 25, 1, 34),
(574, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1004, 25, 1, 37),
(575, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1004, 25, 1, 50),
(576, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1004, 25, 1, 53),
(577, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1004, 25, 1, 56),
(578, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1004, 25, 1, 60),
(579, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1004, 25, 1, 73),
(580, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1005, 25, 1, 32),
(581, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1005, 25, 1, 34),
(582, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1005, 25, 1, 37),
(583, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1005, 25, 1, 50),
(584, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1005, 25, 1, 53),
(585, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1005, 25, 1, 56),
(586, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1005, 25, 1, 60),
(587, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1005, 25, 1, 73),
(588, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1006, 25, 1, 32),
(589, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1006, 25, 1, 34);
INSERT INTO `parsingbpmn_risk` (`id`, `likelihood`, `impact`, `severity`, `skill`, `motive`, `opportunity`, `size`, `ease_of_discovery`, `ease_of_exploit`, `intrusion_detection`, `awareness`, `loss_of_confidentiality`, `loss_of_integrity`, `loss_of_availability`, `loss_of_accountability`, `financial`, `reputation`, `non_compliance`, `privacy`, `asset_id`, `process_id`, `system_id`, `threat_stride_id`) VALUES
(590, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1006, 25, 1, 37),
(591, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1006, 25, 1, 50),
(592, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1006, 25, 1, 53),
(593, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1006, 25, 1, 56),
(594, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1006, 25, 1, 60),
(595, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1006, 25, 1, 73),
(596, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1007, 25, 1, 32),
(597, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1007, 25, 1, 34),
(598, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1007, 25, 1, 37),
(599, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1007, 25, 1, 50),
(600, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1007, 25, 1, 53),
(601, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1007, 25, 1, 56),
(602, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1007, 25, 1, 60),
(603, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1007, 25, 1, 73),
(604, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1008, 25, 1, 32),
(605, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1008, 25, 1, 34),
(606, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1008, 25, 1, 37),
(607, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1008, 25, 1, 50),
(608, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1008, 25, 1, 53),
(609, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1008, 25, 1, 56),
(610, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1008, 25, 1, 60),
(611, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1008, 25, 1, 73),
(612, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1010, 25, 1, 1),
(613, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1010, 25, 1, 2),
(614, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 23),
(615, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1010, 25, 1, 27),
(616, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1010, 25, 1, 37),
(617, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1010, 25, 1, 50),
(618, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 51),
(619, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 52),
(620, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 53),
(621, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 56),
(622, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 60),
(623, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 65),
(624, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1010, 25, 1, 71),
(625, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1012, 25, 1, 1),
(626, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1012, 25, 1, 2),
(627, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1012, 25, 1, 23),
(628, 5, 2, 'LOW', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1012, 25, 1, 29),
(629, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1012, 25, 1, 37),
(630, 7, 3, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1012, 25, 1, 38),
(631, 4, 2, 'LOW', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1012, 25, 1, 40),
(632, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1012, 25, 1, 50),
(633, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1012, 25, 1, 56),
(634, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1012, 25, 1, 57),
(635, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1012, 25, 1, 60),
(636, 7, 4, 'HIGH', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1012, 25, 1, 74),
(637, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1013, 25, 1, 1),
(638, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1013, 25, 1, 2),
(639, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1013, 25, 1, 23),
(640, 5, 2, 'LOW', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1013, 25, 1, 29),
(641, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1013, 25, 1, 37),
(642, 7, 3, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1013, 25, 1, 38),
(643, 4, 2, 'LOW', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1013, 25, 1, 40),
(644, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1013, 25, 1, 50),
(645, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1013, 25, 1, 56),
(646, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1013, 25, 1, 57),
(647, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1013, 25, 1, 60),
(648, 7, 4, 'HIGH', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1013, 25, 1, 74),
(649, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1014, 25, 1, 1),
(650, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1014, 25, 1, 2),
(651, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1014, 25, 1, 23),
(652, 5, 2, 'LOW', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1014, 25, 1, 29),
(653, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1014, 25, 1, 37),
(654, 7, 3, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1014, 25, 1, 38),
(655, 4, 2, 'LOW', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1014, 25, 1, 40),
(656, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1014, 25, 1, 50),
(657, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1014, 25, 1, 56),
(658, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1014, 25, 1, 57),
(659, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1014, 25, 1, 60),
(660, 7, 4, 'HIGH', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1014, 25, 1, 74),
(661, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1015, 25, 1, 1),
(662, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1015, 25, 1, 2),
(663, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 23),
(664, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1015, 25, 1, 27),
(665, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1015, 25, 1, 37),
(666, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1015, 25, 1, 50),
(667, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 51),
(668, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 52),
(669, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 53),
(670, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 56),
(671, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 60),
(672, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 65),
(673, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1015, 25, 1, 71),
(674, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1016, 25, 1, 1),
(675, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1016, 25, 1, 2),
(676, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 23),
(677, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1016, 25, 1, 27),
(678, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1016, 25, 1, 37),
(679, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1016, 25, 1, 50),
(680, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 51),
(681, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 52),
(682, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 53),
(683, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 56),
(684, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 60),
(685, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 65),
(686, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1016, 25, 1, 71),
(687, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1017, 25, 1, 1),
(688, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1017, 25, 1, 2),
(689, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 23),
(690, 5, 2, 'LOW', 7, 7, 6, 6, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1017, 25, 1, 27),
(691, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1017, 25, 1, 37),
(692, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1017, 25, 1, 50),
(693, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 51),
(694, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 52),
(695, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 53),
(696, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 56),
(697, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 60),
(698, 6, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 65),
(699, 7, 2, 'MEDIUM', 7, 7, 6, 6, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1017, 25, 1, 71),
(700, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1018, 25, 1, 1),
(701, 4, 2, 'LOW', 7, 7, 6, 6, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1018, 25, 1, 2),
(702, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1018, 25, 1, 23),
(703, 5, 2, 'LOW', 7, 7, 6, 6, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1018, 25, 1, 29),
(704, 5, 3, 'MEDIUM', 7, 7, 6, 6, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1018, 25, 1, 37),
(705, 7, 3, 'HIGH', 7, 7, 6, 6, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1018, 25, 1, 38),
(706, 4, 2, 'LOW', 7, 7, 6, 6, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1018, 25, 1, 40),
(707, 6, 3, 'HIGH', 7, 7, 6, 6, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1018, 25, 1, 50),
(708, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1018, 25, 1, 56),
(709, 5, 2, 'LOW', 7, 7, 6, 6, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1018, 25, 1, 57),
(710, 7, 2, 'MEDIUM', 7, 7, 6, 6, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1018, 25, 1, 60),
(711, 7, 4, 'HIGH', 7, 7, 6, 6, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1018, 25, 1, 74),
(712, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1019, 26, 3, 1),
(713, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1019, 26, 3, 2),
(714, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 23),
(715, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1019, 26, 3, 27),
(716, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1019, 26, 3, 37),
(717, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 51),
(718, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 52),
(719, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 53),
(720, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 56),
(721, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 60),
(722, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 65),
(723, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1019, 26, 3, 71),
(724, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1020, 26, 3, 1),
(725, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1020, 26, 3, 2),
(726, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 23),
(727, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1020, 26, 3, 27),
(728, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1020, 26, 3, 37),
(729, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1020, 26, 3, 50),
(730, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 51),
(731, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 52),
(732, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 53),
(733, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 56),
(734, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 60),
(735, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 65),
(736, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1020, 26, 3, 71),
(737, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1021, 26, 3, 1),
(738, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1021, 26, 3, 2),
(739, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1021, 26, 3, 23),
(740, 5, 2, 'LOW', 6, 7, 5, 5, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1021, 26, 3, 29),
(741, 6, 3, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1021, 26, 3, 38),
(742, 4, 2, 'LOW', 6, 7, 5, 5, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1021, 26, 3, 40),
(743, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1021, 26, 3, 50),
(744, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1021, 26, 3, 56),
(745, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1021, 26, 3, 57),
(746, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1021, 26, 3, 61),
(747, 6, 4, 'HIGH', 6, 7, 5, 5, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1021, 26, 3, 74),
(748, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1022, 26, 3, 32),
(749, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1022, 26, 3, 34),
(750, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1022, 26, 3, 50),
(751, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1022, 26, 3, 53),
(752, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1022, 26, 3, 56),
(753, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1022, 26, 3, 60),
(754, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1022, 26, 3, 73),
(755, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1023, 26, 3, 1),
(756, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1023, 26, 3, 2),
(757, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 23),
(758, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1023, 26, 3, 27),
(759, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1023, 26, 3, 37),
(760, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 51),
(761, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 52),
(762, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 53),
(763, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 56),
(764, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 60),
(765, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 65),
(766, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1023, 26, 3, 71),
(767, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1024, 26, 3, 1),
(768, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1024, 26, 3, 2),
(769, 5, 3, 'MEDIUM', 6, 7, 5, 5, 6, 8, 1, 3, 7, 9, 8, 3, 0, 0, 0, 0, 1024, 26, 3, 13),
(770, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1025, 26, 3, 1),
(771, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1025, 26, 3, 2),
(772, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 23),
(773, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1025, 26, 3, 27),
(774, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1025, 26, 3, 37),
(775, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1025, 26, 3, 50),
(776, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 51),
(777, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 52),
(778, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 53),
(779, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 56),
(780, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 60),
(781, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 65),
(782, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1025, 26, 3, 71),
(783, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1027, 26, 3, 1),
(784, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1027, 26, 3, 2),
(785, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 23),
(786, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1027, 26, 3, 27),
(787, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1027, 26, 3, 37),
(788, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 51),
(789, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 52),
(790, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 53),
(791, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 56),
(792, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 60),
(793, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 65),
(794, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1027, 26, 3, 71),
(795, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1028, 26, 3, 32),
(796, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1028, 26, 3, 34),
(797, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1028, 26, 3, 37),
(798, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1028, 26, 3, 50),
(799, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1028, 26, 3, 53),
(800, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1028, 26, 3, 56),
(801, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1028, 26, 3, 60),
(802, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1028, 26, 3, 73),
(803, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1029, 26, 3, 32),
(804, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1029, 26, 3, 34),
(805, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1029, 26, 3, 37),
(806, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1029, 26, 3, 50),
(807, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1029, 26, 3, 53),
(808, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1029, 26, 3, 56),
(809, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1029, 26, 3, 60),
(810, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1029, 26, 3, 73),
(811, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1030, 26, 3, 32),
(812, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1030, 26, 3, 34),
(813, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1030, 26, 3, 37),
(814, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1030, 26, 3, 50),
(815, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1030, 26, 3, 53),
(816, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1030, 26, 3, 56),
(817, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1030, 26, 3, 60),
(818, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1030, 26, 3, 73),
(819, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1031, 26, 3, 32),
(820, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1031, 26, 3, 34),
(821, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1031, 26, 3, 37),
(822, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1031, 26, 3, 50),
(823, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1031, 26, 3, 53),
(824, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1031, 26, 3, 56),
(825, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1031, 26, 3, 60),
(826, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1031, 26, 3, 73),
(827, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1032, 26, 3, 32),
(828, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1032, 26, 3, 34),
(829, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1032, 26, 3, 37),
(830, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1032, 26, 3, 50),
(831, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1032, 26, 3, 53),
(832, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1032, 26, 3, 56),
(833, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1032, 26, 3, 60),
(834, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 9, 8, 0, 0, 0, 0, 1032, 26, 3, 73),
(835, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1034, 26, 3, 1),
(836, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1034, 26, 3, 2),
(837, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 23),
(838, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1034, 26, 3, 27),
(839, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1034, 26, 3, 37),
(840, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1034, 26, 3, 50),
(841, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 51),
(842, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 52),
(843, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 53),
(844, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 56),
(845, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 60),
(846, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 65),
(847, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1034, 26, 3, 71),
(848, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1036, 26, 3, 1),
(849, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1036, 26, 3, 2),
(850, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1036, 26, 3, 23),
(851, 5, 2, 'LOW', 6, 7, 5, 5, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1036, 26, 3, 29),
(852, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1036, 26, 3, 37),
(853, 6, 3, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1036, 26, 3, 38),
(854, 4, 2, 'LOW', 6, 7, 5, 5, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1036, 26, 3, 40),
(855, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1036, 26, 3, 50),
(856, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1036, 26, 3, 56),
(857, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1036, 26, 3, 57),
(858, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1036, 26, 3, 60),
(859, 6, 4, 'HIGH', 6, 7, 5, 5, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1036, 26, 3, 74),
(860, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1037, 26, 3, 1),
(861, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1037, 26, 3, 2),
(862, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1037, 26, 3, 23),
(863, 5, 2, 'LOW', 6, 7, 5, 5, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1037, 26, 3, 29),
(864, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1037, 26, 3, 37),
(865, 6, 3, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1037, 26, 3, 38),
(866, 4, 2, 'LOW', 6, 7, 5, 5, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1037, 26, 3, 40),
(867, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1037, 26, 3, 50),
(868, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1037, 26, 3, 56),
(869, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1037, 26, 3, 57),
(870, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1037, 26, 3, 60),
(871, 6, 4, 'HIGH', 6, 7, 5, 5, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1037, 26, 3, 74),
(872, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1038, 26, 3, 1),
(873, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1038, 26, 3, 2),
(874, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1038, 26, 3, 23),
(875, 5, 2, 'LOW', 6, 7, 5, 5, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1038, 26, 3, 29),
(876, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1038, 26, 3, 37),
(877, 6, 3, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1038, 26, 3, 38),
(878, 4, 2, 'LOW', 6, 7, 5, 5, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1038, 26, 3, 40),
(879, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1038, 26, 3, 50),
(880, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1038, 26, 3, 56),
(881, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1038, 26, 3, 57),
(882, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1038, 26, 3, 60),
(883, 6, 4, 'HIGH', 6, 7, 5, 5, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1038, 26, 3, 74),
(884, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1039, 26, 3, 1),
(885, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1039, 26, 3, 2),
(886, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 23),
(887, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1039, 26, 3, 27),
(888, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1039, 26, 3, 37),
(889, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1039, 26, 3, 50),
(890, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 51),
(891, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 52),
(892, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 53),
(893, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 56),
(894, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 60),
(895, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 65),
(896, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1039, 26, 3, 71),
(897, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1040, 26, 3, 1),
(898, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1040, 26, 3, 2),
(899, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 23),
(900, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1040, 26, 3, 27),
(901, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1040, 26, 3, 37),
(902, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1040, 26, 3, 50),
(903, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 51),
(904, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 52),
(905, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 53),
(906, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 56),
(907, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 60),
(908, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 65),
(909, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1040, 26, 3, 71),
(910, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1041, 26, 3, 1),
(911, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1041, 26, 3, 2),
(912, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 23),
(913, 4, 2, 'LOW', 6, 7, 5, 5, 4, 8, 2, 1, 5, 5, 5, 4, 0, 0, 0, 0, 1041, 26, 3, 27),
(914, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1041, 26, 3, 37),
(915, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1041, 26, 3, 50),
(916, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 51),
(917, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 52),
(918, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 53),
(919, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 56),
(920, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 60),
(921, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 5, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 65),
(922, 6, 2, 'MEDIUM', 6, 7, 5, 5, 9, 8, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1041, 26, 3, 71),
(923, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 8, 8, 1, 5, 0, 0, 0, 0, 1042, 26, 3, 1),
(924, 4, 2, 'LOW', 6, 7, 5, 5, 1, 3, 3, 5, 5, 5, 1, 5, 0, 0, 0, 0, 1042, 26, 3, 2),
(925, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1042, 26, 3, 23),
(926, 5, 2, 'LOW', 6, 7, 5, 5, 6, 4, 4, 6, 5, 5, 5, 7, 0, 0, 0, 0, 1042, 26, 3, 29),
(927, 5, 3, 'MEDIUM', 6, 7, 5, 5, 5, 5, 5, 3, 5, 5, 9, 5, 0, 0, 0, 0, 1042, 26, 3, 37),
(928, 6, 3, 'HIGH', 6, 7, 5, 5, 8, 7, 7, 8, 5, 9, 5, 5, 0, 0, 0, 0, 1042, 26, 3, 38),
(929, 4, 2, 'LOW', 6, 7, 5, 5, 2, 2, 3, 2, 5, 5, 5, 5, 0, 0, 0, 0, 1042, 26, 3, 40),
(930, 5, 3, 'MEDIUM', 6, 7, 5, 5, 7, 5, 5, 7, 7, 7, 8, 7, 0, 0, 0, 0, 1042, 26, 3, 50),
(931, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1042, 26, 3, 56),
(932, 5, 2, 'LOW', 6, 7, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 1042, 26, 3, 57),
(933, 6, 2, 'MEDIUM', 6, 7, 5, 5, 8, 7, 7, 8, 5, 5, 5, 5, 0, 0, 0, 0, 1042, 26, 3, 60),
(934, 6, 4, 'HIGH', 6, 7, 5, 5, 7, 7, 8, 8, 8, 7, 8, 9, 0, 0, 0, 0, 1042, 26, 3, 74);

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
  `process_id` int(11) DEFAULT NULL,
  `stride_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_strideimpactrecord`
--

INSERT INTO `parsingbpmn_strideimpactrecord` (`id`, `financialdamage`, `reputationdamage`, `noncompliance`, `privacyviolation`, `created_at`, `updated_at`, `process_id`, `stride_id`) VALUES
(1, 5, 5, 5, 5, '2022-07-04 19:54:50.577103', '2022-07-04 19:54:50.577147', 14, 1),
(2, 5, 5, 5, 5, '2022-07-04 19:54:50.585010', '2022-07-04 19:54:50.585047', 14, 2),
(3, 5, 5, 5, 5, '2022-07-04 19:54:50.593332', '2022-07-04 19:54:50.593374', 14, 4),
(4, 5, 5, 5, 5, '2022-07-04 19:54:50.598277', '2022-07-04 19:54:50.598320', 14, 5),
(5, 5, 5, 5, 5, '2022-07-04 19:54:50.603016', '2022-07-04 19:54:50.603052', 14, 6),
(6, 5, 5, 5, 5, '2022-07-05 10:42:46.498030', '2022-07-05 10:42:46.498086', 21, 1),
(7, 5, 5, 5, 5, '2022-07-05 10:42:46.506936', '2022-07-05 10:42:46.506994', 21, 2),
(8, 5, 5, 5, 5, '2022-07-05 10:42:46.516346', '2022-07-05 10:42:46.516386', 21, 4),
(9, 5, 5, 5, 5, '2022-07-05 10:42:46.520352', '2022-07-05 10:42:46.520377', 21, 5),
(10, 5, 5, 5, 5, '2022-07-05 10:42:46.524035', '2022-07-05 10:42:46.524056', 21, 6),
(11, 5, 5, 5, 5, '2022-07-05 12:43:54.851509', '2022-07-05 12:43:54.851560', 22, 1),
(12, 5, 5, 5, 5, '2022-07-05 12:43:54.860223', '2022-07-05 12:43:54.860273', 22, 2),
(13, 5, 5, 5, 5, '2022-07-05 12:43:54.869234', '2022-07-05 12:43:54.869274', 22, 4),
(14, 5, 5, 5, 5, '2022-07-05 12:43:54.874483', '2022-07-05 12:43:54.874523', 22, 5),
(15, 5, 5, 5, 5, '2022-07-05 12:43:54.879157', '2022-07-05 12:43:54.879189', 22, 6),
(16, 5, 5, 5, 5, '2022-07-05 17:41:17.157251', '2022-07-05 17:41:17.157344', 23, 1),
(17, 5, 5, 5, 5, '2022-07-05 17:41:17.167070', '2022-07-05 17:41:17.167110', 23, 2),
(18, 5, 5, 5, 5, '2022-07-05 17:41:17.175192', '2022-07-05 17:41:17.175228', 23, 4),
(19, 5, 5, 5, 5, '2022-07-05 17:41:17.180609', '2022-07-05 17:41:17.180647', 23, 5),
(20, 5, 5, 5, 5, '2022-07-05 17:41:17.184679', '2022-07-05 17:41:17.184752', 23, 6),
(21, 5, 5, 5, 5, '2022-07-05 18:53:58.727476', '2022-07-05 18:53:58.727530', 24, 1),
(22, 5, 5, 5, 5, '2022-07-05 18:53:58.736346', '2022-07-05 18:53:58.736396', 24, 2),
(23, 5, 5, 5, 5, '2022-07-05 18:53:58.746065', '2022-07-05 18:53:58.746116', 24, 4),
(24, 5, 5, 5, 5, '2022-07-05 18:53:58.752258', '2022-07-05 18:53:58.752302', 24, 5),
(25, 5, 5, 5, 5, '2022-07-05 18:53:58.758250', '2022-07-05 18:53:58.758292', 24, 6);

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
(1, 'Example'),
(2, 'E-Voting'),
(3, 'E-Voting2');

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
(1, 4, 1),
(2, 10, 1),
(3, 13, 1),
(4, 16, 1),
(5, 18, 1),
(6, 20, 1),
(7, 13, 2),
(8, 15, 2),
(9, 16, 2),
(10, 19, 2),
(11, 20, 2),
(12, 13, 3),
(13, 15, 3),
(14, 16, 3),
(15, 19, 3),
(16, 20, 3);

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
-- Struttura della tabella `parsingbpmn_task_manages_data`
--

CREATE TABLE `parsingbpmn_task_manages_data` (
  `id` int(11) NOT NULL,
  `data_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_task_manages_data`
--

INSERT INTO `parsingbpmn_task_manages_data` (`id`, `data_id`, `task_id`) VALUES
(1, 14, 2),
(2, 14, 6),
(3, 21, 6),
(4, 23, 20),
(5, 14, 2),
(6, 14, 6),
(7, 21, 6),
(8, 23, 20),
(9, 14, 2),
(10, 14, 6),
(11, 21, 6),
(12, 23, 20),
(13, 14, 2),
(14, 14, 6),
(15, 21, 6),
(16, 23, 20),
(17, 14, 2),
(18, 14, 6),
(19, 21, 6),
(20, 23, 20),
(21, 14, 2),
(22, 14, 6),
(23, 21, 6),
(24, 23, 20),
(25, 14, 2),
(26, 14, 6),
(27, 21, 6),
(28, 23, 20),
(29, 14, 2),
(30, 14, 6),
(31, 21, 6),
(32, 23, 20),
(33, 14, 2),
(34, 14, 15),
(35, 21, 3),
(36, 21, 15),
(37, 23, 15),
(38, 23, 19),
(39, 919, 15),
(40, 919, 22),
(41, 919, 25),
(42, 14, 16),
(43, 21, 3),
(44, 23, 22),
(45, 944, 28),
(46, 14, 2),
(47, 21, 4),
(48, 23, 18),
(49, 944, 22),
(50, 14, 2),
(51, 21, 5),
(52, 23, 19),
(53, 969, 25),
(54, 14, 2),
(55, 14, 5),
(56, 21, 3),
(57, 23, 22),
(58, 994, 17),
(59, 14, 2),
(60, 21, 5),
(61, 23, 19),
(62, 14, 18),
(63, 21, 6),
(64, 23, 19);

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat`
--

CREATE TABLE `parsingbpmn_threat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `owasp_ease_of_discovery` int(11) DEFAULT NULL,
  `owasp_ease_of_exploit` int(11) DEFAULT NULL,
  `owasp_intrusion_detection` int(11) DEFAULT NULL,
  `owasp_awareness` int(11) DEFAULT NULL,
  `loss_of_confidentiality` int(11) DEFAULT NULL,
  `loss_of_integrity` int(11) DEFAULT NULL,
  `loss_of_availability` int(11) DEFAULT NULL,
  `loss_of_accountability` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `parsingbpmn_threat`
--

INSERT INTO `parsingbpmn_threat` (`id`, `name`, `description`, `owasp_ease_of_discovery`, `owasp_ease_of_exploit`, `owasp_intrusion_detection`, `owasp_awareness`, `loss_of_confidentiality`, `loss_of_integrity`, `loss_of_availability`, `loss_of_accountability`) VALUES
(1, 'Fraud', 'Fraud made by human', 1, 3, 3, 5, 8, 8, 1, 5),
(2, 'Sabotage', 'Intentional actions (non-fulfillment or defective fulfillment of personal duties) aimed to cause disruption or damage of IT Assets', 1, 3, 3, 5, 5, 5, 1, 5),
(3, 'Vandalism', 'Act of physically damage of IT Assets', 6, 8, 1, 3, 7, 9, 8, 3),
(4, 'Theft (devices, storage media and documents)\r\n', 'Stealing of information or IT Assets. [Theft of mobile devices (smartphones/ tablets) - Theft of fi9ed hardware - Theft of documents - Theft of backups]', 5, 3, 4, 6, 8, 7, 9, 2),
(5, 'Information leakage/sharing\r\n', 'Sharing information with unauthorised entities. Loss of information confidentiality due to intentional human actions.', 2, 7, 2, 3, 9, 7, 4, 6),
(6, 'Unauthorized physical access / Unauthorised entry to premises\r\n', 'Unapproved access to facility.\r\n', 3, 8, 7, 2, 8, 9, 2, 6),
(7, 'Coercion, extortion or corruption\r\n', 'Actions caused by coercion, extortion or corruption\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(8, 'Damage from the warfare\r\n', 'Threats of direct impact of warfare activities\r\n', 5, 5, 5, 5, 7, 8, 8, 8),
(9, 'Terrorists attack\r\n', 'Threats of bombing or other actions that counts as \"terrorists attacks\"\r\n', 5, 5, 5, 5, 7, 8, 8, 8),
(10, 'Information leakage/sharing due to human error\r\n', 'Unintentional distribution of private or sensitive data to an unauthorized entity by staff member.\r\n', 4, 8, 2, 1, 5, 5, 5, 4),
(11, 'Erroneous use or administration of devices and systems\r\n', 'Information leakage / sharing / damage caused by users IT Assets misuse (lack of awareness of application features) or wrong / improperly IT Assets configuration or management\r\n', 6, 4, 4, 6, 5, 5, 5, 7),
(12, 'Using information from an unreliable source\r\n', 'Bad decision based on unreliable sources of information or unchecked information.\r\n', 7, 7, 8, 8, 5, 5, 5, 5),
(13, 'Unintentional change of data in an information system\r\n', 'Loss of information integrity due to human error (information system user mistake)\r\n', 5, 5, 5, 5, 8, 9, 2, 5),
(14, 'Inadequate design and planning or improperly adaptation\r\n', 'Threats caused by improperly IT Assets or business processes design (inadequate specifications of IT products, inadequate usability, insecure interfaces, policy/procedure flows, design errors)\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(15, 'Damage caused by a third party \r\n', 'Threats of damage of IT Assets caused by third party \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(16, 'Damages resulting from penetration testing\r\n', 'Threats to information systems caused by improperly / inprepare conducting of IT penetration testing\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(17, 'Loss of information in the cloud\r\n', 'Threats of loosing information or data stored in the cloud\r\n', 5, 5, 5, 3, 5, 5, 9, 5),
(18, 'Loss of (integrity of) sensitive information\r\n', 'Threats of loosing information or data (or changing) information classified as sensitive\r\n', 8, 7, 7, 8, 5, 9, 5, 5),
(19, 'Loss of devices, storage media and documents\r\n', 'Threats of the lack of availability (loosing) of IT Assets and documents\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(20, 'Destruction of records\r\n', 'Threats of the lack of availability (destruction) of data and records (information) stored in devices and storage media\r\n', 2, 2, 3, 2, 5, 5, 5, 5),
(21, 'Disaster (natural earthquakes,floods,landslides, tsunamis,heavy rains,heavy snowfalls,heavy winds)', 'Large scale and large effects natural disasters', 1, 1, 1, 1, 5, 5, 5, 5),
(22, 'Fire', 'Threat of fire ', 1, 1, 1, 1, 5, 5, 5, 5),
(23, 'Pollution, dust, corrosion\r\n', 'Threat of disruption of work of IT systems (hardware) dur to pollution, dust or corrosion (arising from the air)\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(24, 'Thunder stroke\r\n', 'Threat of damage of IT hardware caused by the thunder strike (the electrical overvoltage)\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(25, 'Water\r\n', 'Threat of damage of IT hardware caused by the water\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(26, 'Explosion\r\n', 'empty\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(27, 'Dangerous radiation leak\r\n', 'empty\r\n', 1, 1, 1, 1, 5, 5, 5, 5),
(28, 'Unfavorable climatic conditions\r\n', 'Threat of disruption of work of IT systems due to climatic conditions that have the negative effect on hardware\r\n', 2, 2, 2, 1, 5, 5, 5, 5),
(29, 'Major events in the environment\r\n', 'empty\r\n', 2, 2, 2, 2, 5, 5, 5, 5),
(30, 'Threats from space / Electromagnetic storm\r\n', 'Threats of the negative impact of solar radiation (harmful rays) to a satellites and radio wave communication systems - Electromagnetic storm\r\n', 1, 1, 2, 1, 5, 5, 5, 5),
(31, 'Wildlife\r\n', 'empty\r\n', 2, 2, 2, 2, 5, 5, 5, 5),
(32, 'Failure of devices or systems\r\n', 'Threat of failure of IT hardware and/or software assets or its parts\r\n', 7, 5, 5, 7, 7, 7, 8, 7),
(33, 'Failure or disruption of communication links (communication networks)\r\n', 'Threat of failure or malfunction of communications links \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(34, 'Failure or disruption of main supply\r\n', 'Threat of failure or disruption of supply required for information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(35, 'Failure or disruption of service providers (supply chain)\r\n', 'Threat of failure or disruption of thire party services required for proper operation of information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(36, 'Malfunction of equipment (devices or systems)\r\n', 'Threat of malfunction of IT hardware and/or software assets or its parts\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(37, 'Loss of resources\r\n', 'Unavailability of resources (supply) required for proper operation of information system\r\n', 8, 7, 7, 8, 5, 5, 5, 5),
(38, 'Absence of personnel\r\n', 'Unavailability of key personnel and their competences\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(39, 'Strike\r\n', 'Unavailability of staff due strike (large scale absence of personnel)\r\n', 2, 2, 2, 1, 5, 5, 5, 5),
(40, 'Loss of support services\r\n', 'Unavailability of support services required for proper operation of information system\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(41, 'Internet outage\r\n', 'Unavailability of the Internet connection\r\n', 8, 7, 7, 8, 5, 5, 5, 5),
(42, 'Network outage\r\n', 'Unavailability of communication links\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(43, 'War driving\r\n', 'Threat of locating and possible exploite connection to the wireless network\r\n', 6, 7, 7, 5, 5, 5, 5, 5),
(44, 'Intercepting compromising emissions\r\n', 'Threat of disclosure transmitted information using interception and analysis of compromising emission\r\n', 6, 7, 7, 5, 5, 5, 5, 5),
(45, 'Interception of information\r\n', 'Threat of interception of information improperly secured in transmission or improperly actions of staff\r\n', 8, 7, 5, 8, 5, 5, 5, 5),
(46, 'Interfering radiation\r\n', 'Threat of failure of IT hardware or transmission connection due to electromagnetic induction or electromagnetic radiation emitted from an another source\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(47, 'Replay of messages\r\n', 'Threat in which valid data transmission is maliciously or fraudulently repeated or delayed\r\n', 7, 6, 7, 8, 5, 5, 5, 5),
(48, 'Network Reconnaissance, Network traffic manipulation and Information gathering\r\n', 'Threat of identifying information about network to find security weaknesses\r\n', 6, 7, 5, 6, 5, 5, 5, 5),
(49, 'Man in the middle/ Session hijacking \r\n', 'Threats that relay on alters of communication between two parties\r\n', 7, 6, 5, 5, 5, 5, 5, 5),
(50, 'Identity theft (Identity Fraud/ Account) \r\n', 'Threat of identity theft action\r\n', 9, 8, 7, 8, 5, 5, 5, 5),
(51, 'Receive of unsolicited E-mail \r\n', 'Threat of receive of unsolicited E-mail that affect for information security and efficienty of work (SPAM)\r\n', 9, 8, 8, 9, 3, 2, 2, 1),
(52, 'Denial of service\r\n', 'Threat of Deny of service type attacks at information systems/services\r\n', 5, 5, 5, 5, 5, 5, 9, 8),
(53, 'Malicious code/ software/ activity\r\n', 'Threat of malicious code or software execution\r\n', 7, 7, 8, 8, 8, 7, 8, 9),
(54, 'Social Engineering\r\n', 'Phishing attacks, Spear phishing attacks\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(55, 'Abuse of Information Leakage\r\n', '? What is difference between others Physical attack (deliberate/ intentional)?\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(56, 'Generation and use of rogue certificates\r\n', 'Threat of use of rogue certificates\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(57, 'Manipulation of hardware and software\r\n', 'Threat of unauthorized manipulation of hardware and software\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(58, 'Manipulation of information\r\n', 'Threat of intentional data manipulation to mislead information systems or somebody or to cover other nefarious activities (loss of integrity of information) \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(59, 'Misuse of audit tools\r\n', 'Threat of nefarious actions with use of audit tools (discovery security weaknesses in information systems)\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(60, 'Misuse of information/ information systems (including mobile apps)\r\n', 'Threat of nefarious action due to misuse of information / information systems\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(61, 'Unauthorized activities\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(62, 'Unauthorized installation of software\r\n', 'Threat of unauthorized installation of software\r\n', 6, 5, 5, 5, 5, 5, 5, 7),
(63, 'Compromising confidential information (data breaches)\r\n', 'Threat of data breach \r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(64, 'Hoax\r\n', 'Threat of disruption of work due to False rumor and/or a fake warning\r\n', 2, 3, 3, 4, 5, 5, 5, 5),
(65, 'Remote activity (execution)\r\n', 'Threat of remote activity over controled IT Assets\r\n', 7, 7, 8, 8, 5, 5, 5, 5),
(66, 'Targeted attacks (APTs etc.)\r\n', 'Threat of sophisticated targetes attack with combination of many attack techniques\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(67, 'Failed of bussines process\r\n', 'empty\r\n', 5, 5, 5, 5, 5, 5, 5, 5),
(68, 'Brute force\r\n', 'empty\r\n', 7, 9, 8, 8, 5, 5, 5, 5),
(69, 'Abuse of authorizations\r\n', 'empty\r\n', 8, 7, 6, 8, 5, 5, 5, 5),
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
(1, 7, 6, 7, 6, '2022-07-04 19:54:48.305413', '2022-07-04 19:54:48.305452', 1),
(2, 6, 5, 7, 5, '2022-07-05 12:43:52.542189', '2022-07-05 12:43:52.542222', 2),
(3, 6, 5, 7, 5, '2022-07-05 21:41:26.714097', '2022-07-05 21:41:26.714138', 3);

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
  ADD KEY `parsingbpmn_actor_process_id_d24aa330_fk_parsingbpmn_process_id` (`process_id`);

--
-- Indici per le tabelle `parsingbpmn_actor_manage_data`
--
ALTER TABLE `parsingbpmn_actor_manage_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_actor_ma_actor_id_4d0fc597_fk_parsingbp` (`actor_id`),
  ADD KEY `parsingbpmn_actor_ma_data_id_a33149ef_fk_parsingbp` (`data_id`),
  ADD KEY `parsingbpmn_actor_ma_process_id_082c6378_fk_parsingbp` (`process_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_asset_ha_asset_id_0f778ccd_fk_parsingbp` (`asset_id`),
  ADD KEY `parsingbpmn_asset_ha_asset_type_id_cf303288_fk_parsingbp` (`asset_type_id`),
  ADD KEY `parsingbpmn_asset_ha_data_object_attribut_d65716c0_fk_parsingbp` (`data_object_attribute_id`);

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
  ADD KEY `parsingbpmn_strideim_process_id_a5e6c918_fk_parsingbp` (`process_id`),
  ADD KEY `parsingbpmn_strideim_stride_id_ffcd0aa5_fk_parsingbp` (`stride_id`);

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
-- Indici per le tabelle `parsingbpmn_task_manages_data`
--
ALTER TABLE `parsingbpmn_task_manages_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_task_man_data_id_6308dff3_fk_parsingbp` (`data_id`),
  ADD KEY `parsingbpmn_task_man_task_id_c272d0e9_fk_parsingbp` (`task_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT per la tabella `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_actor_manage_data`
--
ALTER TABLE `parsingbpmn_actor_manage_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1043;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_reply`
--
ALTER TABLE `parsingbpmn_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=935;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_stride`
--
ALTER TABLE `parsingbpmn_stride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
-- AUTO_INCREMENT per la tabella `parsingbpmn_task_manages_data`
--
ALTER TABLE `parsingbpmn_task_manages_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  ADD CONSTRAINT `parsingbpmn_actor_process_id_d24aa330_fk_parsingbpmn_process_id` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

--
-- Limiti per la tabella `parsingbpmn_actor_manage_data`
--
ALTER TABLE `parsingbpmn_actor_manage_data`
  ADD CONSTRAINT `parsingbpmn_actor_ma_actor_id_4d0fc597_fk_parsingbp` FOREIGN KEY (`actor_id`) REFERENCES `parsingbpmn_actor` (`id`),
  ADD CONSTRAINT `parsingbpmn_actor_ma_data_id_a33149ef_fk_parsingbp` FOREIGN KEY (`data_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_actor_ma_process_id_082c6378_fk_parsingbp` FOREIGN KEY (`process_id`) REFERENCES `parsingbpmn_process` (`id`);

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
-- Limiti per la tabella `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_id_0f778ccd_fk_parsingbp` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_type_id_cf303288_fk_parsingbp` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_data_object_attribut_d65716c0_fk_parsingbp` FOREIGN KEY (`data_object_attribute_id`) REFERENCES `parsingbpmn_dataobjectattribute` (`id`);

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
  ADD CONSTRAINT `parsingbpmn_strideim_stride_id_ffcd0aa5_fk_parsingbp` FOREIGN KEY (`stride_id`) REFERENCES `parsingbpmn_stride` (`id`);

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
-- Limiti per la tabella `parsingbpmn_task_manages_data`
--
ALTER TABLE `parsingbpmn_task_manages_data`
  ADD CONSTRAINT `parsingbpmn_task_man_data_id_6308dff3_fk_parsingbp` FOREIGN KEY (`data_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_task_man_task_id_c272d0e9_fk_parsingbp` FOREIGN KEY (`task_id`) REFERENCES `parsingbpmn_asset` (`id`);

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
