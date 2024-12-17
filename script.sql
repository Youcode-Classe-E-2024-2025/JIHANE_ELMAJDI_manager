-- Création de la base de données
CREATE DATABASE IF NOT EXISTS Bibliothéque;
USE Bibliothéque;

-- Création des tables
CREATE TABLE actors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  status ENUM('active', 'archived') DEFAULT 'active',  
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE roles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name TEXT UNIQUE NOT NULL
);

CREATE TABLE actor_roles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  actor_id INT NOT NULL,
  role_id INT NOT NULL,
  FOREIGN KEY (actor_id) REFERENCES actors (id) ON DELETE CASCADE,
  FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE CASCADE
);

CREATE TABLE books (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title TEXT NOT NULL,
  description TEXT,
  isbn TEXT UNIQUE NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE book_authors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT NOT NULL,
  author_id INT NOT NULL,
  FOREIGN KEY (book_id) REFERENCES books (id) ON DELETE CASCADE,
  FOREIGN KEY (author_id) REFERENCES actors (id) ON DELETE CASCADE
);
-- l'insertion des tableaux

INSERT INTO actors (name, email, password, status) VALUES
('Alice', 'alice@example.com', 'hashed_password1', 'active'),
('Bob', 'bob@example.com', 'hashed_password2', 'active'),
('Charlie', 'charlie@example.com', 'hashed_password3', 'archived'),
('Diana', 'diana@example.com', 'hashed_password4', 'active');

INSERT INTO roles (name) VALUES
('Admin'),
('User'),
('Author').

INSERT INTO actor_roles (actor_id, role_id) VALUES
(1, 1), -- Alice est Admin
(1, 2), -- Alice est aussi User
(2, 2), -- Bob est User
(3, 3), -- Charlie est Author

INSERT INTO books (title, description, isbn) VALUES
('Les Misérables', 'Roman de Victor Hugo', '978-2-0707-0174-0'),
('Le Petit Prince', 'Roman de Saint-Exupéry', '978-2-0704-0501-0'),
('1984', 'Roman de George Orwell', '978-0-4522-8416-0'),
('L’Étranger', 'Roman d’Albert Camus', '978-0-1411-8813-2');

INSERT INTO book_authors (book_id, author_id) VALUES
(1, 3), -- Charlie est l'auteur de "Les Misérables"
(2, 4), -- Diana est l'auteur de "Le Petit Prince"
(3, 3), -- Charlie est aussi l'auteur de "1984"
(4, 2); -- Bob est l'auteur de "L’Étranger"
