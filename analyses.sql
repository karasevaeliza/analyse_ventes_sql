-- Analyse 1 : Le chiffre d’affaires mensuel par catégorie

WITH ventes_mensuelles AS (
    SELECT strftime('%Y-%m', date_vente) AS mois, p.catégorie, SUM(v.quantite * v.prix_unitaire) AS chiffre_affaires
    FROM ventes v
    JOIN produits p ON v.produit_id = p.produit_id
    GROUP BY mois, p.catégorie
)

SELECT mois, catégorie, chiffre_affaires
FROM ventes_mensuelles
ORDER BY mois, catégorie;


-- Analyse 2 : Clients ayant acheté plus de 2 produits différents en mai 2025

WITH achats_mai AS (
    SELECT client_id, COUNT(DISTINCT produit_id) AS nb_produits, SUM(quantite * prix_unitaire) AS total_depense
    FROM ventes
    WHERE date_vente BETWEEN '2025-05-01' AND '2025-05-31'
    GROUP BY client_id
)

SELECT c.nom, c.ville, a.nb_produits, a.total_depense
FROM achats_mai a
JOIN clients c ON a.client_id = c.client_id
WHERE a.nb_produits > 2
ORDER BY a.total_depense DESC;
