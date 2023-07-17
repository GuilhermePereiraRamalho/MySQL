CREATE TABLE TAB_FATURAMENTO
(DATA_VENDA DATE NULL, TOTAL_VENDA FLOAT
);

select * FROM tab_faturamento;
DELETE FROM tab_faturamento;

DELETE FROM itens_notas;
DELETE FROM NOTAS;

SELECT * FROM NOTAS;
select * FROM itens_notas;
SELECT * FROM CLIENTES;
SELECT * FROM VENDEDORES;
SELECT * FROM produtos;

INSERT INTO NOTAS(NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('0100', '2019-05-08', '1471156710', '235',0.10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0100', '1000889', 100, 10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0100', '1002334', 100, 10);

INSERT INTO NOTAS(NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('0101', '2019-05-08', '1471156710', '235',0.10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0101', '1000889', 100, 10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0101', '1002334', 100, 10);

INSERT INTO NOTAS(NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('0103', '2019-05-08', '1471156710', '235',0.10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0103', '1000889', 100, 10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0103', '1002334', 100, 10);


insert INTO tab_faturamento
SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) FROM
NOTAS A inner JOIN itens_notas B
ON A.NUMERO = B.NUMERO
GROUP BY A.DATA_VENDA;

SELECT * FROM tab_faturamento;

INSERT INTO NOTAS(NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('0104', '2019-05-08', '1471156710', '235',0.10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0104', '1000889', 100, 10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0104', '1002334', 100, 10);

INSERT INTO NOTAS(NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('0105', '2019-05-08', '1471156710', '235',0.10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0105', '1000889', 100, 10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0105', '1002334', 100, 10);
DELETE FROM tab_faturamento;
insert INTO tab_faturamento
SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) FROM
NOTAS A inner JOIN itens_notas B
ON A.NUMERO = B.NUMERO
GROUP BY A.DATA_VENDA;

DELIMITER //
CREATE trigger TG_CALCULA_FATURAMENTO_INSERT AFTER INSERT ON itens_notas
FOR EACH ROW BEGIN
	DELETE FROM tab_faturamento;
	insert INTO tab_faturamento
	SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) FROM
	NOTAS A inner JOIN itens_notas B
	ON A.NUMERO = B.NUMERO
	GROUP BY A.DATA_VENDA;
END//