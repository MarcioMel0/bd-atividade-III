CREATE DATABASE PEDIDOS;
USE PEDIDOS;
DROP DATABASE PEDIDOS;


CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_nome VARCHAR(255) NOT NULL,
    status VARCHAR(50) NOT NULL,
    data_entrega DATE
);


INSERT INTO pedidos (cliente_nome, status, data_entrega)
VALUES ('MARIA', 'Pendente', NULL),
       ('DIOGO', 'Entregue', '2023-10-25'),
       ('DIEGO', 'Pendente', NULL),
       ('GUNDES', 'Cancelado', NULL),
       ('JUSTIN', 'Pendente', NULL);
       


CREATE VIEW vw_pedidos_pendentes AS
SELECT * FROM pedidos
WHERE status = 'Pendente' AND data_entrega IS NULL;


SELECT * FROM vw_pedidos_pendentes;


