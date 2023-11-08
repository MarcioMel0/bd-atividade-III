CREATE DATABASE PRODUTOS;
USE PRODUTOS;
DROP DATABASE PRODUTOS;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_do_produto VARCHAR(255) NOT NULL,
    data_validade DATE NOT NULL,
    preco DECIMAL(10, 2) NOT NULL
);


INSERT INTO produtos (nome_do_produto, data_validade, preco)
VALUES ('MONITOR', '2023-12-31', 50.99),
       ('MICROFONE', '2023-11-15', 75.50),
       ('FONE', '2023-10-05', 120.00);
       

DELIMITER //

CREATE TRIGGER valida_data_validade
BEFORE INSERT ON produtos
FOR EACH ROW
BEGIN
    IF NEW.data_validade < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro: Produto com data de validade vencida não pode ser inserido';
    END IF;
END;
//

DELIMITER ;


SELECT * FROM produtos;

