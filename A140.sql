CREATE TABLE "Categorie" (
  "id_categoria" INTEGER PRIMARY KEY,
  "descrizione" VARCHAR(50)
);

CREATE TABLE "Prodotti" (
  "id_prodotto" INTEGER PRIMARY KEY,
  "nome_prodotto" VARCHAR(15),
  "id_categoria" INTEGER,
  "prezzo_acquisto" DECIMAL(9,2),
  "prezzo_vendita" DECIMAL(9,2),
  "giacenza" INTEGER,
  "id_fornitore" INTEGER
);

CREATE TABLE "Fornitori" (
  "id_fornitore" INTEGER PRIMARY KEY,
  "ragione sociale" VARCHAR(50),
  "indirizzo" VARCHAR(30),
  "citta" VARCHAR(20),
  "cap" VARCHAR(5),
  "provincia" VARCHAR(2),
  "n_telefono" VARCHAR(15)
);

CREATE TABLE "Ordini" (
  "id_ordine" INTEGER PRIMARY KEY,
  "data_ricezione" DATE,
  "data_evasione" DATE,
  "id_cliente" INTEGER,
  "spese_trasporto" DECIMAL(9,2)
);

CREATE TABLE "Clienti" (
  "id_cliente" INTEGER PRIMARY KEY,
  "ragione sociale" VARCHAR(50),
  "indirizzo" VARCHAR(30),
  "citta" VARCHAR(20),
  "cap" VARCHAR(5),
  "provincia" VARCHAR(2),
  "n_telefono" VARCHAR(15)
);

CREATE TABLE "Dettaglio_Ordini" (
  "id_ordine" INTEGER,
  "id_prodotto" INTEGER,
  "quantita" INTEGER,
  PRIMARY KEY ("id_ordine", "id_prodotto")
);

ALTER TABLE "Prodotti" ADD FOREIGN KEY ("id_categoria") REFERENCES "Categorie" ("id_categoria");

ALTER TABLE "Prodotti" ADD FOREIGN KEY ("id_fornitore") REFERENCES "Fornitori" ("id_fornitore");

ALTER TABLE "Ordini" ADD FOREIGN KEY ("id_cliente") REFERENCES "Clienti" ("id_cliente");

ALTER TABLE "Dettaglio_Ordini" ADD FOREIGN KEY ("id_ordine") REFERENCES "Ordini" ("id_ordine");

ALTER TABLE "Dettaglio_Ordini" ADD FOREIGN KEY ("id_prodotto") REFERENCES "Prodotti" ("id_prodotto");

