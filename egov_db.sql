-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 20, 2022 alle 15:21
-- Versione del server: 10.4.24-MariaDB
-- Versione PHP: 7.4.28

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

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tareplyc_category_id_398b7fa7_fk_parsingbp` (`category_id`),
  ADD KEY `parsingbpmn_tareplyc_reply_id_5a0188c3_fk_parsingbp` (`reply_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `parsingbpmn_tareplycategory`
--
ALTER TABLE `parsingbpmn_tareplycategory`
  ADD CONSTRAINT `parsingbpmn_tareplyc_category_id_398b7fa7_fk_parsingbp` FOREIGN KEY (`category_id`) REFERENCES `parsingbpmn_threatagentcategory` (`id`),
  ADD CONSTRAINT `parsingbpmn_tareplyc_reply_id_5a0188c3_fk_parsingbp` FOREIGN KEY (`reply_id`) REFERENCES `parsingbpmn_reply` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
