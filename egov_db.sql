-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 01, 2022 alle 19:36
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
(25, 'Can add Asset', 7, 'add_asset'),
(26, 'Can change Asset', 7, 'change_asset'),
(27, 'Can delete Asset', 7, 'delete_asset'),
(28, 'Can view Asset', 7, 'view_asset'),
(29, 'Can add Asset_type', 8, 'add_asset_type'),
(30, 'Can change Asset_type', 8, 'change_asset_type'),
(31, 'Can delete Asset_type', 8, 'delete_asset_type'),
(32, 'Can view Asset_type', 8, 'view_asset_type'),
(33, 'Can add Attribute', 9, 'add_attribute'),
(34, 'Can change Attribute', 9, 'change_attribute'),
(35, 'Can delete Attribute', 9, 'delete_attribute'),
(36, 'Can view Attribute', 9, 'view_attribute'),
(37, 'Can add Attribute_value', 10, 'add_attribute_value'),
(38, 'Can change Attribute_value', 10, 'change_attribute_value'),
(39, 'Can delete Attribute_value', 10, 'delete_attribute_value'),
(40, 'Can view Attribute_value', 10, 'view_attribute_value'),
(41, 'Can add Control', 11, 'add_control'),
(42, 'Can change Control', 11, 'change_control'),
(43, 'Can delete Control', 11, 'delete_control'),
(44, 'Can view Control', 11, 'view_control'),
(45, 'Can add data object attribute', 12, 'add_dataobjectattribute'),
(46, 'Can change data object attribute', 12, 'change_dataobjectattribute'),
(47, 'Can delete data object attribute', 12, 'delete_dataobjectattribute'),
(48, 'Can view data object attribute', 12, 'view_dataobjectattribute'),
(49, 'Can add Process', 13, 'add_process'),
(50, 'Can change Process', 13, 'change_process'),
(51, 'Can delete Process', 13, 'delete_process'),
(52, 'Can view Process', 13, 'view_process'),
(53, 'Can add reply', 14, 'add_reply'),
(54, 'Can change reply', 14, 'change_reply'),
(55, 'Can delete reply', 14, 'delete_reply'),
(56, 'Can view reply', 14, 'view_reply'),
(57, 'Can add stride', 15, 'add_stride'),
(58, 'Can change stride', 15, 'change_stride'),
(59, 'Can delete stride', 15, 'delete_stride'),
(60, 'Can view stride', 15, 'view_stride'),
(61, 'Can add System', 16, 'add_system'),
(62, 'Can change System', 16, 'change_system'),
(63, 'Can delete System', 16, 'delete_system'),
(64, 'Can view System', 16, 'view_system'),
(65, 'Can add Threat', 17, 'add_threat'),
(66, 'Can change Threat', 17, 'change_threat'),
(67, 'Can delete Threat', 17, 'delete_threat'),
(68, 'Can view Threat', 17, 'view_threat'),
(69, 'Can add threat agent attribute', 18, 'add_threatagentattribute'),
(70, 'Can change threat agent attribute', 18, 'change_threatagentattribute'),
(71, 'Can delete threat agent attribute', 18, 'delete_threatagentattribute'),
(72, 'Can view threat agent attribute', 18, 'view_threatagentattribute'),
(73, 'Can add threat agent category', 19, 'add_threatagentcategory'),
(74, 'Can change threat agent category', 19, 'change_threatagentcategory'),
(75, 'Can delete threat agent category', 19, 'delete_threatagentcategory'),
(76, 'Can view threat agent category', 19, 'view_threatagentcategory'),
(77, 'Can add threat agent question', 20, 'add_threatagentquestion'),
(78, 'Can change threat agent question', 20, 'change_threatagentquestion'),
(79, 'Can delete threat agent question', 20, 'delete_threatagentquestion'),
(80, 'Can view threat agent question', 20, 'view_threatagentquestion'),
(81, 'Can add threat agent risk scores', 21, 'add_threatagentriskscores'),
(82, 'Can change threat agent risk scores', 21, 'change_threatagentriskscores'),
(83, 'Can delete threat agent risk scores', 21, 'delete_threatagentriskscores'),
(84, 'Can view threat agent risk scores', 21, 'view_threatagentriskscores'),
(85, 'Can add threat_ stride', 22, 'add_threat_stride'),
(86, 'Can change threat_ stride', 22, 'change_threat_stride'),
(87, 'Can delete threat_ stride', 22, 'delete_threat_stride'),
(88, 'Can view threat_ stride', 22, 'view_threat_stride'),
(89, 'Can add threat_has_control', 23, 'add_threat_has_control'),
(90, 'Can change threat_has_control', 23, 'change_threat_has_control'),
(91, 'Can delete threat_has_control', 23, 'delete_threat_has_control'),
(92, 'Can view threat_has_control', 23, 'view_threat_has_control'),
(93, 'Can add threat_has_attribute', 24, 'add_threat_has_attribute'),
(94, 'Can change threat_has_attribute', 24, 'change_threat_has_attribute'),
(95, 'Can delete threat_has_attribute', 24, 'delete_threat_has_attribute'),
(96, 'Can view threat_has_attribute', 24, 'view_threat_has_attribute'),
(97, 'Can add ta reply category', 25, 'add_tareplycategory'),
(98, 'Can change ta reply category', 25, 'change_tareplycategory'),
(99, 'Can delete ta reply category', 25, 'delete_tareplycategory'),
(100, 'Can view ta reply category', 25, 'view_tareplycategory'),
(101, 'Can add ta replies_ question', 26, 'add_tareplies_question'),
(102, 'Can change ta replies_ question', 26, 'change_tareplies_question'),
(103, 'Can delete ta replies_ question', 26, 'delete_tareplies_question'),
(104, 'Can view ta replies_ question', 26, 'view_tareplies_question'),
(105, 'Can add ta category attribute', 27, 'add_tacategoryattribute'),
(106, 'Can change ta category attribute', 27, 'change_tacategoryattribute'),
(107, 'Can delete ta category attribute', 27, 'delete_tacategoryattribute'),
(108, 'Can view ta category attribute', 27, 'view_tacategoryattribute'),
(109, 'Can add system_ threat agent', 28, 'add_system_threatagent'),
(110, 'Can change system_ threat agent', 28, 'change_system_threatagent'),
(111, 'Can delete system_ threat agent', 28, 'delete_system_threatagent'),
(112, 'Can view system_ threat agent', 28, 'view_system_threatagent'),
(113, 'Can add stride impact record', 29, 'add_strideimpactrecord'),
(114, 'Can change stride impact record', 29, 'change_strideimpactrecord'),
(115, 'Can delete stride impact record', 29, 'delete_strideimpactrecord'),
(116, 'Can view stride impact record', 29, 'view_strideimpactrecord'),
(117, 'Can add risk', 30, 'add_risk'),
(118, 'Can change risk', 30, 'change_risk'),
(119, 'Can delete risk', 30, 'delete_risk'),
(120, 'Can view risk', 30, 'view_risk'),
(121, 'Can add overall risk', 31, 'add_overallrisk'),
(122, 'Can change overall risk', 31, 'change_overallrisk'),
(123, 'Can delete overall risk', 31, 'delete_overallrisk'),
(124, 'Can view overall risk', 31, 'view_overallrisk'),
(125, 'Can add asset_has_ data object_attribute', 32, 'add_asset_has_dataobject_attribute'),
(126, 'Can change asset_has_ data object_attribute', 32, 'change_asset_has_dataobject_attribute'),
(127, 'Can delete asset_has_ data object_attribute', 32, 'delete_asset_has_dataobject_attribute'),
(128, 'Can view asset_has_ data object_attribute', 32, 'view_asset_has_dataobject_attribute'),
(129, 'Can add asset_has_attribute', 33, 'add_asset_has_attribute'),
(130, 'Can change asset_has_attribute', 33, 'change_asset_has_attribute'),
(131, 'Can delete asset_has_attribute', 33, 'delete_asset_has_attribute'),
(132, 'Can view asset_has_attribute', 33, 'view_asset_has_attribute'),
(133, 'Can add actor', 34, 'add_actor'),
(134, 'Can change actor', 34, 'change_actor'),
(135, 'Can delete actor', 34, 'delete_actor'),
(136, 'Can view actor', 34, 'view_actor');

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
(34, 'parsingbpmn', 'actor'),
(7, 'parsingbpmn', 'asset'),
(33, 'parsingbpmn', 'asset_has_attribute'),
(32, 'parsingbpmn', 'asset_has_dataobject_attribute'),
(8, 'parsingbpmn', 'asset_type'),
(9, 'parsingbpmn', 'attribute'),
(10, 'parsingbpmn', 'attribute_value'),
(11, 'parsingbpmn', 'control'),
(12, 'parsingbpmn', 'dataobjectattribute'),
(31, 'parsingbpmn', 'overallrisk'),
(13, 'parsingbpmn', 'process'),
(14, 'parsingbpmn', 'reply'),
(30, 'parsingbpmn', 'risk'),
(15, 'parsingbpmn', 'stride'),
(29, 'parsingbpmn', 'strideimpactrecord'),
(16, 'parsingbpmn', 'system'),
(28, 'parsingbpmn', 'system_threatagent'),
(27, 'parsingbpmn', 'tacategoryattribute'),
(26, 'parsingbpmn', 'tareplies_question'),
(25, 'parsingbpmn', 'tareplycategory'),
(17, 'parsingbpmn', 'threat'),
(18, 'parsingbpmn', 'threatagentattribute'),
(19, 'parsingbpmn', 'threatagentcategory'),
(20, 'parsingbpmn', 'threatagentquestion'),
(21, 'parsingbpmn', 'threatagentriskscores'),
(24, 'parsingbpmn', 'threat_has_attribute'),
(23, 'parsingbpmn', 'threat_has_control'),
(22, 'parsingbpmn', 'threat_stride'),
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
(1, 'contenttypes', '0001_initial', '2022-03-31 15:58:27.758602'),
(2, 'auth', '0001_initial', '2022-03-31 15:58:28.008603'),
(3, 'admin', '0001_initial', '2022-03-31 15:58:28.541601'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-03-31 15:58:28.676601'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-03-31 15:58:28.693603'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-03-31 15:58:28.799603'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-03-31 15:58:28.859601'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-03-31 15:58:28.891602'),
(9, 'auth', '0004_alter_user_username_opts', '2022-03-31 15:58:28.910602'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-03-31 15:58:28.974601'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-03-31 15:58:28.979602'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-03-31 15:58:28.992602'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-03-31 15:58:29.024606'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-03-31 15:58:29.057602'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-03-31 15:58:29.092602'),
(16, 'auth', '0011_update_proxy_permissions', '2022-03-31 15:58:29.109603'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-03-31 15:58:29.138603'),
(18, 'parsingbpmn', '0001_initial', '2022-03-31 15:58:30.981603'),
(19, 'sessions', '0001_initial', '2022-03-31 15:58:32.758600');

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
  `position` varchar(99) DEFAULT NULL,
  `process_bpmn_id` varchar(99) DEFAULT NULL,
  `asset_type_id` int(11) DEFAULT NULL,
  `process_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_has_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_asset_type`
--

CREATE TABLE `parsingbpmn_asset_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_attribute_value`
--

CREATE TABLE `parsingbpmn_attribute_value` (
  `id` int(11) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_control`
--

CREATE TABLE `parsingbpmn_control` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_reply`
--

CREATE TABLE `parsingbpmn_reply` (
  `id` int(11) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `multiple` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_stride`
--

CREATE TABLE `parsingbpmn_stride` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_system`
--

CREATE TABLE `parsingbpmn_system` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_system_threatagent`
--

CREATE TABLE `parsingbpmn_system_threatagent` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `system_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_tacategoryattribute`
--

CREATE TABLE `parsingbpmn_tacategoryattribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_tareplies_question`
--

CREATE TABLE `parsingbpmn_tareplies_question` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_tareplycategory`
--

CREATE TABLE `parsingbpmn_tareplycategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `reply_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threatagentquestion`
--

CREATE TABLE `parsingbpmn_threatagentquestion` (
  `id` int(11) NOT NULL,
  `Qid` varchar(500) DEFAULT NULL,
  `question` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_has_attribute`
--

CREATE TABLE `parsingbpmn_threat_has_attribute` (
  `id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struttura della tabella `parsingbpmn_threat_has_control`
--

CREATE TABLE `parsingbpmn_threat_has_control` (
  `id` int(11) NOT NULL,
  `control_id` int(11) NOT NULL,
  `threat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT per la tabella `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_actor`
--
ALTER TABLE `parsingbpmn_actor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset`
--
ALTER TABLE `parsingbpmn_asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_type`
--
ALTER TABLE `parsingbpmn_asset_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute`
--
ALTER TABLE `parsingbpmn_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_attribute_value`
--
ALTER TABLE `parsingbpmn_attribute_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_control`
--
ALTER TABLE `parsingbpmn_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_dataobjectattribute`
--
ALTER TABLE `parsingbpmn_dataobjectattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_overallrisk`
--
ALTER TABLE `parsingbpmn_overallrisk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_process`
--
ALTER TABLE `parsingbpmn_process`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_reply`
--
ALTER TABLE `parsingbpmn_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_risk`
--
ALTER TABLE `parsingbpmn_risk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_stride`
--
ALTER TABLE `parsingbpmn_stride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_strideimpactrecord`
--
ALTER TABLE `parsingbpmn_strideimpactrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system`
--
ALTER TABLE `parsingbpmn_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_system_threatagent`
--
ALTER TABLE `parsingbpmn_system_threatagent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tacategoryattribute`
--
ALTER TABLE `parsingbpmn_tacategoryattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat`
--
ALTER TABLE `parsingbpmn_threat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentattribute`
--
ALTER TABLE `parsingbpmn_threatagentattribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentcategory`
--
ALTER TABLE `parsingbpmn_threatagentcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentquestion`
--
ALTER TABLE `parsingbpmn_threatagentquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threatagentriskscores`
--
ALTER TABLE `parsingbpmn_threatagentriskscores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_has_attribute`
--
ALTER TABLE `parsingbpmn_threat_has_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_has_control`
--
ALTER TABLE `parsingbpmn_threat_has_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_threat_stride`
--
ALTER TABLE `parsingbpmn_threat_stride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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