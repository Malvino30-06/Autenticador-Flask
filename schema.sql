-- Cria o banco de dados se ele não existir
CREATE DATABASE IF NOT EXISTS dbdoll;
USE dbdoll;

-- Cria a tabela users se ela não existir
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- (Opcional) Insere um usuário exemplo, mas só se ainda não existir com esse e-mail
INSERT IGNORE INTO users (name, email, password)
VALUES ('Juão', 'juao@email.com', 'senha123');