CREATE DATABASE CARRO;
USE CARRO;
DROP DATABASE CARRO;


CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_produto VARCHAR(255) NOT NULL,
    quantidade_em_estoque INT NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO produtos (nome_do_produto, quantidade_em_estoque, preco)
VALUES ('CELULAR', 10, 150.00),
       ('MONITOR', 5, 120.50),
       ('MOUSE', 3, 200.75),
       ('TECLADO', 8, 90.25),
       ('FONE', 2, 180.00);
       
       

CREATE VIEW vw_produtos_caros AS
SELECT * FROM produtos
WHERE preco > 100;


SELECT * FROM vw_produtos_caros;

