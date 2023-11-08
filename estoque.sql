CREATE DATABASE ESTOQUE;
USE ESTOQUE;
DROP DATABASE ESTOQUE;


CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_produto VARCHAR(255) NOT NULL,
    quantidade_em_estoque INT NOT NULL
);


INSERT INTO produtos (nome_do_produto, quantidade_em_estoque)
VALUES ('CELULAR', 3),
       ('FONE', 7),
       ('TECLADO', 2),
       ('MONITOR', 8),
       ('CADEIRA GAME',1);



CREATE VIEW vw_estoque_insuficiente
AS
SELECT * FROM produtos
WHERE quantidade_em_estoque < 5;


SELECT * FROM vw_estoque_insuficiente;

