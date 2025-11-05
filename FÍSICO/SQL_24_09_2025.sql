CREATE DATABASE IF NOT EXISTS BD_ALUGUEL_PRODUTOS;
USE BD_ALUGUEL_PRODUTOS;

CREATE TABLE IF NOT EXISTS CLIENTE(
	CLIENTE_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    EMAIL VARCHAR(255) NOT NULL,
    CPF VARCHAR(14) NOT NULL,
    NOME VARCHAR(255) NOT NULL,
    TELEFONE VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUTO(
	PRODUTO_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(255) NOT NULL,
    DESCRICAO VARCHAR(500) NOT NULL,
    PRECO DECIMAL NOT NULL,
    QTD_DISPONIVEL INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS ALUGUEL(
	ALUGUEL_ID INTEGER AUTO_INCREMENT PRIMARY KEY,
    DATA_ALUGUEL DATE NOT NULL,
    DATA_DEVOLUCAO DATE NOT NULL,
    VALOR_TOTAL DECIMAL NOT NULL,
    FK_CLIENTE_ID INTEGER NOT NULL,
    FK_PRODUTO_ID INTEGER NOT NULL,
    FOREIGN KEY (FK_CLIENTE_ID) REFERENCES CLIENTE(CLIENTE_ID) ON DELETE CASCADE,
    FOREIGN KEY (FK_PRODUTO_ID) REFERENCES PRODUTO(PRODUTO_ID) ON DELETE CASCADE
);

-- DML - LINGUAGEM DE MANIPULAÇÃO
-- INSERT - INSERIR
INSERT INTO CLIENTE (EMAIL, TELEFONE, CPF, NOME)
VALUES ("email@email.com", "19999999999", "12345678912", "Léo");

INSERT INTO CLIENTE (EMAIL, TELEFONE, CPF, NOME)
VALUES ("yasmin.francischelli@aluno.senai.br", "19991552501", "43796038816", "Yasmin Francischelli");

INSERT INTO CLIENTE (NOME, EMAIL, TELEFONE, CPF)
VALUES("Gabriel", "gabriel@email.com", "19994418210", "35866955865");

-- SELECT - SELECIONAR
SELECT * FROM CLIENTE;

-- INSERIR PRODUTOS

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("MacBook M4", "Notebook Apple", 4789.90, 5);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("AirPods Pro", "Fone de Ouvido Bluetooth", 298.00, 10);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Samsung Galaxy Watch6", "Celular Samsung", 911.57, 12);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Canon EOS Rebel T7", "Câmera fotográfica", 4798.75, 5);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Amazon Echo Dot (5ª)", "Assistente Virtual", 528.98, 18);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Samsung Neo QLED 4K TV", "Televisão", 3956.89, 4);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Dell XPS 13", "Notebook", 2798.45, 19);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("iPhone 15", "Celular Apple", 2987.99, 27);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("Galaxy Watch 6", "Smartwatch", 578.99, 32);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("EcoTank L3250", "Impressora", 6952.29, 7);

INSERT INTO PRODUTO (NOME, DESCRICAO, PRECO, QTD_DISPONIVEL)
VALUES ("PlayStation 5" , "Console de videogame", 7982.39, 12); 

SELECT * FROM PRODUTO;

-- INSERIR ALUGUEIS
SELECT * FROM CLIENTES;
SELECT * FROM PRODUTO;

INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-09-24",
						"2025-10-01",
                        7890,
                        3,
                        2);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-07-22",
						"2025-11-16",
                        2890,
                        2,
                        1);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-05-14",
						"2025-08-05",
                        3658,
                        1,
                        6);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-01-14",
						"2025-03-17",
                        7890,
                        3,
                        11);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-02-27",
						"2025-05-29",
                        258,
                        1,
                        9);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-12-14",
						"2026-02-07",
                        6900,
                        4,
                        2);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-11-02",
						"2026-01-05",
                        12369,
                        3,
                        9);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-09-04",
						"2025-11-30",
                        356,
                        2,
                        8);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-06-22",
						"2025-10-25",
                        569,
                        1,
                        6);
					
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-04-10",
						"2025-08-13",
                        7890,
                        2,
                        8);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-05-06",
						"2025-08-10",
                        125875,
                        1,
                        5);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-05-14",
						"2025-09-15",
                        7697,
                        2,
                        10);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-01-04",
						"2025-03-07",
                        2562,
                        3,
                        9);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-11-17",
						"2026-02-19",
                        5893,
                        4,
                        8);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-07-30",
						"2025-10-28",
                        2028,
                        1,
                        7);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-07-12",
						"2025-08-16",
                        2594,
                        2,
                        5);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-09-01",
						"2025-12-13",
                        3068,
                        3,
                        4);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-01-04",
						"2025-03-07",
                        369,
                        4,
                        3);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-10-14",
						"2026-01-17",
                        3678,
                        1,
                        2);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-06-15",
						"2025-10-18",
                        6589,
                        2,
                        1);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-03-25",
						"2025-06-29",
                        7369,
                        3,
                        11);
                        
INSERT INTO ALUGUEL (	DATA_ALUGUEL,
						DATA_DEVOLUCAO,
                        VALOR_TOTAL,
                        FK_CLIENTE_ID,
                        FK_PRODUTO_ID)
VALUES 				(	"2025-07-15",
						"2025-10-18",
                        361,
                        4,
                        10);
SELECT * FROM ALUGUEL;
SELECT * FROM CLIENTE;
SELECT * FROM PRODUTO;

-- ATUALIZAR UM REGISTRO (UPDATE)
UPDATE PRODUTO
SET	PRECO = 3500
WHERE PRODUTO_ID = 1;

UPDATE PRODUTO
SET PRECO = 3654
WHERE PRODUTO_ID = 2;

UPDATE PRODUTO
SET PRECO = 2358
WHERE PRODUTO_ID = 3;

UPDATE PRODUTO
SET PRECO = 1258
WHERE PRODUTO_ID = 4;

UPDATE PRODUTO
SET QTD_DISPONIVEL = 10
WHERE PRODUTO_ID = 5;

UPDATE PRODUTO
SET QTD_DISPONIVEL = 14
WHERE PRODUTO_ID = 6;

UPDATE PRODUTO
SET QTD_DISPONIVEL = 2
WHERE PRODUTO_ID = 7;

UPDATE PRODUTO
SET QTD_DISPONIVEL = 5
WHERE PRODUTO_ID = 8;

UPDATE PRODUTO
SET QTD_DISPONIVEL = 9
WHERE PRODUTO_ID = 9;

UPDATE CLIENTE
SET EMAIL = "OI@EMAIL.COM"
WHERE CLIENTE_ID = 1;

UPDATE CLIENTE
SET EMAIL = "TCHAU@EMAIL.COM"
WHERE CLIENTE_ID = 2;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO  = "2025-02-10"
WHERE ALUGUEL_ID = 1;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO = "2025-11-03"
WHERE ALUGUEL_ID = 2;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO = "2026-02-01"
WHERE ALUGUEL_ID = 3;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO  = "2026-02-05"
WHERE ALUGUEL_ID = 3;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO = "2026-03-01"
WHERE ALUGUEL_ID = 4;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO = "2026-03-03"
WHERE ALUGUEL_ID = 5;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO = "2026-04-02"
WHERE ALUGUEL_ID = 6;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO = "2025-12-03"
WHERE ALUGUEL_ID = 7;

UPDATE ALUGUEL
SET DATA_DEVOLUCAO = "2025-11-02"
WHERE ALUGUEL_ID = 8;

 -- APAGAR UM REGISTRO (DELETE)
DELETE FROM CLIENTE
WHERE CLIENTE_ID = 1;

DELETE FROM PRODUTO
WHERE PRODUTO_ID = 4;

DELETE FROM ALUGUEL
WHERE ALUGUEL_ID = 3;

SELECT * FROM CLIENTE
WHERE CLIENTE_ID = 2;

SELECT NOME, PRECO
FROM PRODUTO
WHERE PRODUTO_ID = 3;