# Projet SQL - Analyse des ventes mensuelles

Ce projet a été réalisé dans le cadre de ma préparation à une alternance en Data Analyst / Data Engineer
L’objectif était de simuler une base de données de ventes (clients, produits, ventes) puis de réaliser des analyses SQL pertinentes

J’ai choisi ce cas d’usage car il reflète des situations réelles en entreprise (suivi de performance, segmentation clients, chiffre d’affaires mensuel) 
Ce projet m’a permis de renforcer mes compétences en :

- Modélisation de données relationnelles
- Requêtes SQL complexes (jointures, agrégations, CTE)
- Analyse des données de vente par période, catégorie, client

Le code est compatible avec PostgreSQL et SQLite pour une exécution simple

# Objectifs principaux

- Créer des tables clients, produits et ventes avec des données fictives
- Analyser le chiffre d’affaires mensuel par catégorie
- Identifier les clients actifs sur certaines périodes
- Pratiquer l’écriture de requêtes propres et lisibles

# Contenu

- `schema.sql` : création des tables et insertion de données
- `analyses.sql` : requêtes complexes avec CTE et jointures pour analyser les ventes

# Technologies

- PostgreSQL / SQLite

# Usage

1. Importer le fichier `schema.sql` dans votre base de données
2. Exécuter les requêtes dans `analyses.sql` pour voir les résultats



# Analyse 1 : Chiffre d'affaires mensuel par catégorie
Ce rapport montre l'évolution du chiffre d'affaires par mois et par catégorie de produit
Cela permet d'identifier les périodes de forte activité et les catégories les plus performantes

Exemple :
- En mai 2025, la catégorie "Informatique" est dominante en termes de chiffre d'affaires

# Analyse 2 : Clients ayant acheté plus de 2 produits différents en mai 2025
Cette requête identifie les clients les plus actifs sur le mois de mai.  
Cela peut aider à cibler des profils fidèles ou importants pour des actions marketing.

Exemple :
- Le client 'Dupont' (Toulouse) a acheté 3 produits différents pour un total de plus de 2 000 € en mai 2025.