-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Apr 20, 2022 alle 12:58
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

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_tareplie_question_id_1a607f61_fk_parsingbp` (`question_id`),
  ADD KEY `parsingbpmn_tareplie_reply_id_0e154aae_fk_parsingbp` (`reply_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `parsingbpmn_tareplies_question`
--
ALTER TABLE `parsingbpmn_tareplies_question`
  ADD CONSTRAINT `parsingbpmn_tareplie_question_id_1a607f61_fk_parsingbp` FOREIGN KEY (`question_id`) REFERENCES `parsingbpmn_threatagentquestion` (`id`),
  ADD CONSTRAINT `parsingbpmn_tareplie_reply_id_0e154aae_fk_parsingbp` FOREIGN KEY (`reply_id`) REFERENCES `parsingbpmn_reply` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
