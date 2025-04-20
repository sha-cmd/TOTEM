/*
 Créer une requête DDL pour une base de données avec une table de vendeur comportant un
 nom en STRING, un id en INTEGER, un numéro de magasin en INTEGER et le salaire en FLOAT.
 Une seconde table produit contient les champs id en INTEGER, nom en STRING, description,
 numéro de magasin en INTEGER, le poids en FLOAT. Tous les champs acceptent les Null sauf le
 champ id qui sont Uniques.
 */

 -- Création de la table vendeur
CREATE TABLE vendeur (
    id INTEGER PRIMARY KEY NOT NULL,
    nom STRING,
    numero_magasin INTEGER,
    salaire FLOAT
);

-- Ajouter une contrainte d'unicité (par précaution, bien que PRIMARY KEY l'implique déjà)
ALTER TABLE vendeur ADD CONSTRAINT vendeur_id_unique UNIQUE (id);

-- Création de la table produit
CREATE TABLE produit (
    id INTEGER PRIMARY KEY NOT NULL,
    nom STRING,
    description STRING,
    numero_magasin INTEGER,
    poids FLOAT
);

-- Ajouter une contrainte d'unicité (par précaution, bien que PRIMARY KEY l'implique déjà)
ALTER TABLE produit ADD CONSTRAINT produit_id_unique UNIQUE (id);