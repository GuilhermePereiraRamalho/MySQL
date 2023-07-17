USE VENDAS_SUCOS;

select * from notas;
select * from itens_notas;

select * from tab_faturamento;

update itens_notas set quantidade = 200
where numero = '0104' and codigo = '1002334';

delete from itens_notas
where numero = '0104' and codigo = '1002334';

DELIMITER //
CREATE trigger TG_CALCULA_FATURAMENTO_UPDATE AFTER update ON itens_notas
FOR EACH ROW BEGIN
	DELETE FROM tab_faturamento;
	insert INTO tab_faturamento
	SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) FROM
	NOTAS A inner JOIN itens_notas B
	ON A.NUMERO = B.NUMERO
	GROUP BY A.DATA_VENDA;
END//

DELIMITER //
CREATE trigger TG_CALCULA_FATURAMENTO_DELETE AFTER DELETE ON itens_notas
FOR EACH ROW BEGIN
	DELETE FROM tab_faturamento;
	insert INTO tab_faturamento
	SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) FROM
	NOTAS A inner JOIN itens_notas B
	ON A.NUMERO = B.NUMERO
	GROUP BY A.DATA_VENDA;
END//

INSERT INTO NOTAS(NUMERO, DATA_VENDA, CPF, MATRICULA, IMPOSTO)
VALUES('0106', '2019-05-08', '1471156710', '235',0.10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0106', '1000889', 100, 10);
INSERT INTO ITENS_NOTAS (NUMERO, CODIGO, QUANTIDADE, PRECO)
VALUES ('0106', '1002334', 100, 10);

delete from itens_notas where numero = '01006'and codigo = '1002334';

select * from itens_notas;
update itens_notas set quantidade = 400
where numero = '0100' and codigo = '1002334';