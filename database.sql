
CREATE DATABASE pcto_fermi;
USE pcto_fermi;

CREATE TABLE utenti(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50) UNIQUE,
password_hash VARCHAR(255),
nome VARCHAR(50),
cognome VARCHAR(50),
ruolo VARCHAR(20)
);

CREATE TABLE studenti(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
cognome VARCHAR(50)
);

CREATE TABLE esperienze_pcto(
id INT AUTO_INCREMENT PRIMARY KEY,
id_studente INT,
ente_ospitante VARCHAR(200),
tutor_aziendale VARCHAR(100),
tutor_scolastico VARCHAR(100),
mansione TEXT,
data_inizio DATE,
data_fine DATE,
ore_totali INT,
descrizione TEXT,
id_utente_inserimento INT,
FOREIGN KEY(id_studente) REFERENCES studenti(id),
FOREIGN KEY(id_utente_inserimento) REFERENCES utenti(id)
);
