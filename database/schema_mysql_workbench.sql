-- Script para ser executado no MySQL Workbench (não faz parte dos scripts
-- de inicialização do Spring Boot: o app usa ddl-auto=validate, então as
-- tabelas precisam existir previamente no banco).
--
-- Conexão sugerida no Workbench:
--   Host: 127.0.0.1  Port: 3306  User: root  Password: root

CREATE DATABASE IF NOT EXISTS senaiflix;
USE senaiflix;

CREATE TABLE IF NOT EXISTS filmes (
   id INT PRIMARY KEY AUTO_INCREMENT,
   titulo VARCHAR(200) NOT NULL,
   diretor VARCHAR(150) NOT NULL,
   genero VARCHAR(50) NOT NULL,
   pais_origem VARCHAR(50),
   ano_lancamento INT NOT NULL,
   duracao_minutos INT NOT NULL,
   nota_avaliacao DECIMAL(3,1)
);

CREATE TABLE IF NOT EXISTS series (
   id INT PRIMARY KEY AUTO_INCREMENT,
   titulo VARCHAR(150) NOT NULL,
   criador VARCHAR(100) NOT NULL,
   ano_lancamento INT NOT NULL,
   genero VARCHAR(50) NOT NULL,
   temporadas INT NOT NULL,
   episodios INT NOT NULL,
   nota_avaliacao DECIMAL(3,1),
   plataforma VARCHAR(50) NOT NULL
);
