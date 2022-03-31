-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 31, 2022 alle 17:59
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
-- Struttura della tabella `parsingbpmn_asset_has_dataobject_attribute`
--

CREATE TABLE `parsingbpmn_asset_has_dataobject_attribute` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `asset_type_id` int(11) NOT NULL,
  `data_object_attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parsingbpmn_asset_ha_asset_id_0f778ccd_fk_parsingbp` (`asset_id`),
  ADD KEY `parsingbpmn_asset_ha_asset_type_id_cf303288_fk_parsingbp` (`asset_type_id`),
  ADD KEY `parsingbpmn_asset_ha_data_object_attribut_d65716c0_fk_parsingbp` (`data_object_attribute_id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `parsingbpmn_asset_has_dataobject_attribute`
--
ALTER TABLE `parsingbpmn_asset_has_dataobject_attribute`
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_id_0f778ccd_fk_parsingbp` FOREIGN KEY (`asset_id`) REFERENCES `parsingbpmn_asset` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_asset_type_id_cf303288_fk_parsingbp` FOREIGN KEY (`asset_type_id`) REFERENCES `parsingbpmn_asset_type` (`id`),
  ADD CONSTRAINT `parsingbpmn_asset_ha_data_object_attribut_d65716c0_fk_parsingbp` FOREIGN KEY (`data_object_attribute_id`) REFERENCES `parsingbpmn_dataobjectattribute` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
