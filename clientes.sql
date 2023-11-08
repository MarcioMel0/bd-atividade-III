CREATE DATABASE CLIENTES;
USE CLIENTES;
DROP DATABASE CLIENTES;

CREATE TABLE vendedores (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(45)
);

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    telefone VARCHAR(45),
    vendedor_id INT,
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);

INSERT INTO vendedores (id, nome, email,telefone) VALUES
(1, 'MATHEUS', 'matheus@example.com','7198654714'),
(2, 'MARIA', 'maria@example.com','7198754863');

INSERT INTO clientes (id, nome, email, vendedor_id,telefone) VALUES
(1, 'LIMA', 'lima@example.com', 1,'7198562357'),
(2, 'VITOR', 'vitor@example.com', 2,'719865475');

CREATE VIEW vw_relacionamento_cliente_vendedor AS
SELECT
    c.nome AS nome_cliente,
    c.email AS email_cliente,
    v.nome AS nome_vendedor,
    v.email AS email_vendedor
FROM
    clientes c
JOIN
    vendedores v ON c.vendedor_id = v.id;
    
    SELECT * FROM vw_relacionamento_cliente_vendedor;


