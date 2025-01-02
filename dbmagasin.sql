DROP TABLE Fournisseurs;
DROP TABLE Produits;
DROP TABLE Clients;
DROP TABLE Commandes;

CREATE TABLE Fournisseurs (
    id_fournisseur INTEGER PRIMARY KEY,
    nom_fournisseur TEXT NOT NULL,
    contact TEXT NOT NULL
);

CREATE TABLE Produits (
    id_produit INTEGER PRIMARY KEY,
    nom_produit TEXT NOT NULL,
    prix_unitaire REAL NOT NULL,
    stock INTEGER NOT NULL,
    id_fournisseur INTEGER,
    FOREIGN KEY (id_fournisseur) REFERENCES Fournisseurs(id_fournisseur) ON DELETE SET NULL
);

CREATE TABLE Clients (
    id_client INTEGER PRIMARY KEY,
    nom_client TEXT NOT NULL,
    contact TEXT NOT NULL
);

CREATE TABLE Commandes (
    id_commande INTEGER PRIMARY KEY,
    date_commande TEXT NOT NULL,
    id_client INTEGER,
	total_commande REAL NOT NULL,
    FOREIGN KEY (id_client) REFERENCES Clients(id_client) ON DELETE SET NULL
);

INSERT INTO Fournisseurs VALUES
(1 ,'Ahmad', '0706709039'),
(2 , 'Rachid', '0706789001'),
(3 ,'Abd Arrahmane' , '0790456788');

INSERT INTO Clients VALUES
(1, 'Ali', '0623456789'),
(2, 'Ahmad', '0623456790'),
(3, 'Fatima', '0623456791'),
(4, 'Omar',  '0623456792'),
(5, 'Safa', '0623456793'),
(6, 'Rim', '0623456794'),
(7, 'Ibrahim', '0623456795'),
(8, 'Sarah',  '0623456796'),
(9, 'Abd Allah','0623456797'),
(10, 'Noor', '0623456798');

INSERT INTO Produits VALUES
(1, 'Stylo Bille', 1.20, 100, 1),
(2, 'Cahier 100 pages', 2.50, 50,2),
(3, 'Classeur A4', 3.80, 30,2),
(4, 'Surligneur', 1.00, 75,1),
(6, 'Pochette plastique', 0.15, 200,2),
(7, 'Règle 30cm', 1.50, 80,1),
(8, 'Feutre permanent', 2.30, 40,1),
(9, 'Carnet de notes', 3.00, 25,2),
(10, 'Calculatrice scientifique', 15.00, 5,3),
(11, 'Crayon graphite', 0.50, 150,1),
(12, 'Bloc-notes A5', 1.80, 100,2),
(13, 'Paire de ciseaux', 3.50, 50,1),
(14, 'Perforateur 2 trous', 4.00, 30,3),
(15, 'Gomme blanche', 0.80, 0,1),
(16, 'Boîte de marqueurs', 6.00, 25,1),
(18, 'Papier imprimante A4 (500 feuilles)', 5.00, 40,2),
(19, 'Ruban adhésif transparent', 2.50, 60,1),
(21, 'Marqueur tableau blanc', 1.50, 90,1),
(22, 'Agrafeuse de bureau', 7.00, 0,3),
(24, 'Feuilles de brouillon', 0.30, 300,2),
(25, 'Tableau magnétique', 20.00, 5,3),
(26, 'Pochettes d archivage', 0.10, 400,2),
(27, 'Sachet de punaises', 1.50, 0,3),
(28, 'Chemises cartonnées', 0.75, 150,2),
(29, 'Pack de stylos colorés', 5.00, 0,1),
(30, 'Organiseur de bureau', 8.50, 10,3);

INSERT INTO Commandes VALUES
(1, '2025-01-01', 1,10.5),
(2, '2025-01-01', 2,100.0),
(3, '2025-01-01', 1,120.0),
(4, '2025-01-01', 3,50.5),
(5, '2025-01-01', 5,23.0),
(6, '2025-01-03', 2,200.0),
(7, '2025-01-03', 7,500.0),
(8, '2025-01-03', 10,5.5),
(9, '2025-01-03', 9,35.0),
(10, '2025-01-03', 10,33.5),
(11, '2025-01-03', 1,2.5),
(12, '2025-01-03', 2,77.0),
(13, '2025-01-03', 3,9.0),
(14, '2025-01-03', 10, 50.0),
(15, '2025-01-04', 2, 44.75),
(16, '2025-01-04', 3, 10.25),
(17, '2025-01-04', 7, 11.5),
(18, '2025-01-04', 1, 7.75),
(19, '2025-01-04', 9, 14.0),
(20, '2025-01-04', 10, 80.00),
(21, '2025-01-04', 1, 150.0),
(22, '2025-01-04', 2, 22.5),
(23, '2025-01-04', 3, 100.00),
(24, '2025-01-05', 2, 101.00),
(25, '2025-01-06', 5, 250.0),
(26, '2025-01-06', 3, 75.5),
(27, '2025-01-08', 7, 6.0),
(28, '2025-01-08', 7,200.0),
(29, '2025-01-08', 9,25.5),
(30, '2025-01-10', 2, 33.0);
