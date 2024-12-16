-- Création de la base de données
CREATE DATABASE bibliotheque;

-- Utilisation de la base de données
USE bibliotheque;

CREATE TABLE auteurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    prenom VARCHAR(100) NOT NULL,
    bio TEXT
);
CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL
);
CREATE TABLE livres (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    auteur_id INT,
    annee_publication INT,
    genre VARCHAR(100),
    description TEXT,
    FOREIGN KEY (auteur_id) REFERENCES auteurs(id)
);
CREATE TABLE utilisateurs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    mot_de_passe VARCHAR(255) NOT NULL
);
CREATE TABLE emprunts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    livre_id INT,
    utilisateur_id INT,
    date_emprunt DATE,
    date_retour DATE,
    FOREIGN KEY (livre_id) REFERENCES livres(id),
    FOREIGN KEY (utilisateur_id) REFERENCES utilisateurs(id)
);
INSERT INTO auteurs (nom, prenom, bio) 
VALUES 
('Tolkien', 'J.R.R.', 'Auteur de la trilogie du Seigneur des Anneaux'),
('Rowling', 'J.K.', 'Auteur de la saga Harry Potter'),
('Hugo', 'Victor', 'Auteur des Misérables');

INSERT INTO categories (nom) 
VALUES 
('Fantasy'),
('Science Fiction'),
('Roman Historique');

INSERT INTO livres (titre, auteur_id, annee_publication, genre, description) 
VALUES 
('Le Seigneur des Anneaux', 1, 1954, 'Fantasy', 'Une épopée de fantasy mythologique'),
("Harry Potter à l'école des sorciers", 2, 1997, 'Fantasy', 'Le premier livre de la saga Harry Potter'),
('Les Misérables', 3, 1862, 'Roman Historique', 'Un roman sur la justice sociale et les inégalités');

INSERT INTO utilisateurs (nom, email, mot_de_passe) 
VALUES 
('John Doe', 'johndoe@example.com', 'password123'),
('Jane Smith', 'janesmith@example.com', 'password456');

INSERT INTO emprunts (livre_id, utilisateur_id, date_emprunt, date_retour) 
VALUES 
(1, 1, '2024-12-01', '2024-12-15'),
(2, 2, '2024-12-05', '2024-12-20');

-- Vérification des tableaux
SELECT * FROM auteurs;

SELECT * FROM categories;

SELECT * FROM livres;

SELECT * FROM utilisateurs;

SELECT * FROM emprunts;