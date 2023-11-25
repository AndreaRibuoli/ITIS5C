USE 5cribuoli_test;
DELETE FROM Dettaglio_Ordini;
DELETE FROM Ordini;
DELETE FROM Prodotti;
DELETE FROM Fornitori;
DELETE FROM Clienti;
DELETE FROM Categorie;
INSERT INTO Categorie VALUES(1, 'giocattoli');
INSERT INTO Categorie VALUES(2, 'libri');
INSERT INTO Categorie VALUES(3, 'cartoleria');
INSERT INTO Fornitori (id_fornitore, ragione_sociale) VALUES(1, 'Pluto srl');
INSERT INTO Prodotti (id_prodotto, nome_prodotto, id_categoria, id_fornitore) VALUES(1, 'Informatica 3', 2, 1);
INSERT INTO Clienti (id_cliente, ragione_sociale) VALUES(1, 'ITIS Mattei');
INSERT INTO Ordini (id_ordine, data_ricezione, id_cliente) VALUES( 1, '2023-11-25', 1);

