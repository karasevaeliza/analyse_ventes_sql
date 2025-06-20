# Projet SQL - Analyse des ventes mensuelles

Ce projet a été réalisé dans le cadre de ma préparation à une alternance en Data Analyst / Data Engineer.  
L’objectif était de simuler une base de données de ventes (clients, produits, transactions) puis de réaliser des analyses SQL pertinentes.

J’ai choisi ce cas d’usage car il reflète des situations réelles en entreprise (suivi de performance, segmentation clients, chiffre d’affaires mensuel).  
Ce projet m’a permis de renforcer mes compétences en :

- Modélisation de données relationnelles
- Requêtes SQL complexes (jointures, agrégations, CTE)
- Analyse des données de vente par période, catégorie, client

Le code est compatible avec PostgreSQL et SQLite pour une exécution simple.

# Objectifs principaux

- Créer des tables clients, produits et ventes avec des données fictives
- Analyser le chiffre d’affaires mensuel par catégorie
- Identifier les clients actifs sur certaines périodes
- Pratiquer l’écriture de requêtes propres et lisibles

# Contenu

- `schema.sql` : création des tables et insertion de données exemples.
- `analyses.sql` : requêtes complexes avec CTE et jointures pour analyser les ventes.

# Technologies

- PostgreSQL / SQLite

# Usage

1. Importer le fichier `schema.sql` dans votre base de données.
2. Exécuter les requêtes dans `analyses.sql` pour voir les résultats.