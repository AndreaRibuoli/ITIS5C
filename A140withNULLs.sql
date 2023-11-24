/*
   rimpiazzare ribuoli con il vostro cognome
   nelle tre righe a seguire poi sottomettere come
   spiegato in laboratorio (redirezione standard input)
*/

DROP DATABASE 5cribuoli_test;
CREATE DATABASE 5cribuoli_test;
USE 5cribuoli_test;

CREATE TABLE Categorie (
  id_categoria INTEGER PRIMARY KEY NOT NULL,
  descrizione VARCHAR(50) NOT NULL
);

CREATE TABLE Prodotti (
  id_prodotto INTEGER PRIMARY KEY NOT NULL,
  nome_prodotto VARCHAR(15) NOT NULL,
  id_categoria INTEGER  NOT NULL,
  prezzo_acquisto DECIMAL(9,2),
  prezzo_vendita DECIMAL(9,2),
  giacenza INTEGER,
  id_fornitore INTEGER NOT NULL
);

CREATE TABLE Fornitori (
  id_fornitore INTEGER PRIMARY KEY NOT NULL,
  ragione_sociale VARCHAR(50) NOT NULL,
  indirizzo VARCHAR(30),
  citta VARCHAR(20),
  cap VARCHAR(5),
  provincia VARCHAR(2),
  n_telefono VARCHAR(15)
);

CREATE TABLE Ordini (
  id_ordine INTEGER PRIMARY KEY NOT NULL,
  data_ricezione DATE NOT NULL,
  data_evasione DATE,
  id_cliente INTEGER NOT NULL,
  spese_trasporto DECIMAL(9,2)
);

CREATE TABLE Clienti (
  id_cliente INTEGER PRIMARY KEY NOT NULL,
  ragione_sociale VARCHAR(50) NOT NULL,
  indirizzo VARCHAR(30),
  citta VARCHAR(20),
  cap VARCHAR(5),
  provincia VARCHAR(2),
  n_telefono VARCHAR(15)
);

CREATE TABLE Dettaglio_Ordini (
  id_ordine INTEGER NOT NULL,
  id_prodotto INTEGER NOT NULL,
  quantita INTEGER NOT NULL,
  PRIMARY KEY (id_ordine, id_prodotto)
);

ALTER TABLE Prodotti ADD FOREIGN KEY (id_categoria) REFERENCES Categorie (id_categoria);

ALTER TABLE Prodotti ADD FOREIGN KEY (id_fornitore) REFERENCES Fornitori (id_fornitore);

ALTER TABLE Ordini ADD FOREIGN KEY (id_cliente) REFERENCES Clienti (id_cliente);

ALTER TABLE Dettaglio_Ordini ADD FOREIGN KEY (id_ordine) REFERENCES Ordini (id_ordine);

ALTER TABLE Dettaglio_Ordini ADD FOREIGN KEY (id_prodotto) REFERENCES Prodotti (id_prodotto);

quit

