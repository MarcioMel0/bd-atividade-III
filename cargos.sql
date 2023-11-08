CREATE DATABASE CARGO;
USE CARGO;
DROP DATABASE CARGO;


CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    cargo VARCHAR(255),
    departamento VARCHAR(255)
);


INSERT INTO funcionarios (id, nome, cargo, departamento) VALUES
(1, 'MATHEUS', 'Cargo 1', 'Administrativo'),
(2, 'MARCIO', 'Cargo 2', 'Vendas'),
(3, 'VITOR', 'Cargo 3', 'Administrativo'),
(4, 'LIMA', 'Cargo 4', 'RH'),
(5, 'PONTES', 'Cargo 5', 'Administrativo');



CREATE TABLE departamentos (
    id INT PRIMARY KEY,
    nome_departamento VARCHAR(255)
);


INSERT INTO departamentos (id, nome_departamento) VALUES
(1, 'Administrativo'),
(2, 'Vendas'),
(3, 'RH');

CREATE VIEW vw_funcionarios_departamento AS
SELECT
    nome,
    cargo
FROM
    funcionarios
WHERE
    departamento = 'Administrativo';
    
    SELECT * FROM vw_funcionarios_departamento;

