-- phpMyAdmin SQL Dump
-- version 5.2.3-1.fc43
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Mar 08, 2026 alle 17:54
-- Versione del server: 10.11.16-MariaDB
-- Versione PHP: 8.4.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pcto_fermi`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `esperienze_pcto`
--

CREATE TABLE `esperienze_pcto` (
  `id` int(11) NOT NULL,
  `id_studente` int(11) DEFAULT NULL,
  `ente_ospitante` varchar(200) DEFAULT NULL,
  `tutor_aziendale` varchar(100) DEFAULT NULL,
  `tutor_scolastico` varchar(100) DEFAULT NULL,
  `mansione` text DEFAULT NULL,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `ore_totali` int(11) DEFAULT NULL,
  `descrizione` text DEFAULT NULL,
  `id_utente_inserimento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `esperienze_pcto`
--

INSERT INTO `esperienze_pcto` (`id`, `id_studente`, `ente_ospitante`, `tutor_aziendale`, `tutor_scolastico`, `mansione`, `data_inizio`, `data_fine`, `ore_totali`, `descrizione`, `id_utente_inserimento`) VALUES
(1, 1, 'Tech Solutions SRL', 'Ing. Paolo De Santis', 'Prof. Bianchi', 'Supporto sviluppo web', '2025-02-01', '2025-02-20', 60, 'Sviluppo di piccole funzionalità frontend', 2),
(2, 2, 'Digital Lab SPA', 'Dott. Carlo Ferretti', 'Prof. Verdi', 'Testing software', '2025-02-01', '2025-02-18', 50, 'Testing di applicazioni aziendali', 3),
(3, 3, 'InnovaTech', 'Ing. Silvia Conti', 'Prof. Neri', 'Sviluppo database', '2025-01-20', '2025-02-10', 70, 'Progettazione schema database', 4),
(4, 4, 'WebFactory', 'Dott. Luca Serra', 'Prof. Conti', 'Sviluppo frontend', '2025-02-05', '2025-02-25', 60, 'Realizzazione pagine HTML e CSS', 5),
(5, 5, 'DataVision', 'Ing. Andrea Ricci', 'Prof. Galli', 'Analisi dati', '2025-01-15', '2025-02-05', 65, 'Analisi dataset aziendali', 6),
(6, 6, 'CloudNet', 'Ing. Marco Testa', 'Prof. Romano', 'Gestione server', '2025-02-10', '2025-02-28', 55, 'Configurazione server Linux', 7),
(7, 7, 'CyberSec Italia', 'Dott. Fabio Costa', 'Prof. Greco', 'Security testing', '2025-01-25', '2025-02-15', 60, 'Analisi vulnerabilità', 8),
(8, 8, 'SoftDesign', 'Ing. Matteo Monti', 'Prof. Moretti', 'Programmazione Java', '2025-02-01', '2025-02-22', 60, 'Sviluppo moduli software', 9),
(9, 9, 'NextGen Software', 'Dott. Stefano Riva', 'Prof. Ferrari', 'Debug applicazioni', '2025-02-03', '2025-02-20', 55, 'Correzione bug', 10),
(10, 10, 'AI Systems', 'Ing. Carlo Bianchi', 'Prof. Ricci', 'Machine learning base', '2025-01-20', '2025-02-10', 70, 'Addestramento modelli ML', 11),
(11, 11, 'Net Solutions', 'Dott. Luigi Greco', 'Prof. Marini', 'Gestione reti', '2025-02-01', '2025-02-19', 50, 'Configurazione switch e router', 12),
(12, 12, 'SmartData', 'Ing. Andrea Serra', 'Prof. Lombardi', 'Analisi database', '2025-01-22', '2025-02-10', 60, 'Query SQL avanzate', 13),
(13, 13, 'FutureTech', 'Dott.ssa Laura Riva', 'Prof. De Luca', 'Supporto sviluppo app', '2025-02-02', '2025-02-21', 60, 'Sviluppo applicazioni mobile', 14),
(14, 14, 'IT Consulting', 'Ing. Marco Testa', 'Prof. Serra', 'Supporto IT', '2025-02-01', '2025-02-18', 50, 'Assistenza tecnica utenti', 15),
(15, 15, 'CodeFactory', 'Dott. Paolo Monti', 'Prof. Riva', 'Programmazione Python', '2025-01-25', '2025-02-15', 60, 'Script di automazione', 16),
(16, 16, 'Web Solutions', 'Ing. Fabio Conti', 'Prof. Testa', 'Gestione CMS', '2025-02-05', '2025-02-25', 55, 'Aggiornamento contenuti web', 17),
(17, 17, 'CyberLab', 'Dott. Luca Ferrari', 'Prof. Monti', 'Security monitoring', '2025-02-01', '2025-02-20', 60, 'Monitoraggio sicurezza', 18),
(18, 18, 'DataTech', 'Ing. Paolo Greco', 'Prof. Costa', 'Business intelligence', '2025-01-28', '2025-02-18', 60, 'Creazione dashboard', 19),
(19, 19, 'SmartSoft', 'Dott. Andrea Verdi', 'Prof. Fontana', 'Sviluppo API', '2025-02-03', '2025-02-22', 60, 'Implementazione servizi REST', 20),
(20, 20, 'InnovaLab', 'Ing. Matteo Bianchi', 'Prof. Bianchi', 'Testing applicazioni', '2025-02-01', '2025-02-18', 50, 'Test funzionali software', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `studenti`
--

CREATE TABLE `studenti` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `studenti`
--

INSERT INTO `studenti` (`id`, `nome`, `cognome`) VALUES
(1, 'Alessandro', 'Rossi'),
(2, 'Marco', 'Bianchi'),
(3, 'Lorenzo', 'Verdi'),
(4, 'Gabriele', 'Neri'),
(5, 'Matteo', 'Conti'),
(6, 'Davide', 'Galli'),
(7, 'Andrea', 'Romano'),
(8, 'Simone', 'Greco'),
(9, 'Francesco', 'Moretti'),
(10, 'Riccardo', 'Ferrari'),
(11, 'Luca', 'Ricci'),
(12, 'Tommaso', 'Marini'),
(13, 'Nicola', 'Lombardi'),
(14, 'Edoardo', 'De Luca'),
(15, 'Samuele', 'Serra'),
(16, 'Daniele', 'Riva'),
(17, 'Filippo', 'Testa'),
(18, 'Christian', 'Monti'),
(19, 'Giorgio', 'Costa'),
(20, 'Federico', 'Fontana');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `cognome` varchar(50) DEFAULT NULL,
  `ruolo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`id`, `username`, `password_hash`, `nome`, `cognome`, `ruolo`) VALUES
(1, 'admin', 'hash1', 'Mario', 'Rossi', 'admin'),
(2, 'doc1', 'hash2', 'Luca', 'Bianchi', 'docente'),
(3, 'doc2', 'hash3', 'Giulia', 'Verdi', 'docente'),
(4, 'doc3', 'hash4', 'Anna', 'Neri', 'docente'),
(5, 'doc4', 'hash5', 'Paolo', 'Conti', 'docente'),
(6, 'doc5', 'hash6', 'Elena', 'Galli', 'docente'),
(7, 'doc6', 'hash7', 'Marco', 'Romano', 'docente'),
(8, 'doc7', 'hash8', 'Sara', 'Greco', 'docente'),
(9, 'doc8', 'hash9', 'Davide', 'Moretti', 'docente'),
(10, 'doc9', 'hash10', 'Chiara', 'Ferrari', 'docente'),
(11, 'doc10', 'hash11', 'Francesco', 'Ricci', 'docente'),
(12, 'doc11', 'hash12', 'Valentina', 'Marini', 'docente'),
(13, 'doc12', 'hash13', 'Andrea', 'Lombardi', 'docente'),
(14, 'doc13', 'hash14', 'Stefano', 'De Luca', 'docente'),
(15, 'doc14', 'hash15', 'Laura', 'Serra', 'docente'),
(16, 'doc15', 'hash16', 'Simone', 'Riva', 'docente'),
(17, 'doc16', 'hash17', 'Alessia', 'Testa', 'docente'),
(18, 'doc17', 'hash18', 'Fabio', 'Monti', 'docente'),
(19, 'doc18', 'hash19', 'Irene', 'Costa', 'docente'),
(20, 'doc19', 'hash20', 'Matteo', 'Fontana', 'docente');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `esperienze_pcto`
--
ALTER TABLE `esperienze_pcto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_studente` (`id_studente`),
  ADD KEY `id_utente_inserimento` (`id_utente_inserimento`);

--
-- Indici per le tabelle `studenti`
--
ALTER TABLE `studenti`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `esperienze_pcto`
--
ALTER TABLE `esperienze_pcto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `studenti`
--
ALTER TABLE `studenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `esperienze_pcto`
--
ALTER TABLE `esperienze_pcto`
  ADD CONSTRAINT `esperienze_pcto_ibfk_1` FOREIGN KEY (`id_studente`) REFERENCES `studenti` (`id`),
  ADD CONSTRAINT `esperienze_pcto_ibfk_2` FOREIGN KEY (`id_utente_inserimento`) REFERENCES `utenti` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
