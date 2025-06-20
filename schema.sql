-- Création des tables

CREATE TABLE clients (
    client_id INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    ville TEXT
);

CREATE TABLE produits (
    produit_id INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    catégorie TEXT
);

CREATE TABLE ventes (
    vente_id INTEGER PRIMARY KEY,
    client_id INTEGER,
    produit_id INTEGER,
    date_vente DATE,
    quantite INTEGER,
    prix_unitaire NUMERIC(10,2),
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (produit_id) REFERENCES produits(produit_id)
);

-- Insertion de données exemples

INSERT INTO clients (client_id, nom, ville) VALUES
(1, 'Dupont', 'Paris'),
(2, 'Martin', 'Lyon'),
(3, 'Durand', 'Marseille');

INSERT INTO produits (produit_id, nom, catégorie) VALUES
(1, 'Ordinateur Portable', 'Informatique'),
(2, 'Souris', 'Informatique'),
(3, 'Chaise de Bureau', 'Mobilier');

INSERT INTO ventes (vente_id, client_id, produit_id, date_vente, quantite, prix_unitaire) VALUES
(1, 1, 1, '2025-01-15', 2, 1200.00),
(2, 1, 2, '2025-01-20', 5, 25.00),
(3, 2, 3, '2025-02-05', 1, 150.00),
(4, 3, 1, '2025-02-10', 1, 1150.00),
(5, 2, 2, '2025-02-15', 3, 27.00),
(6, 1, 3, '2025-03-01', 2, 145.00);