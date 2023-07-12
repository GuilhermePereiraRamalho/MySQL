use sucos_vendas;

select * from tabela_de_clientes;

select estado, LIMITE_DE_CREDITO from tabela_de_clientes;

select estado, sum(LIMITE_DE_CREDITO) as LIMITE_TOTAL from tabela_de_clientes group by estado;

select embalagem, preco_de_lista from tabela_de_produtos;

select embalagem, max(preco_de_lista) as MAIOR_PRECO from tabela_de_produtos group by embalagem;

select embalagem, count(*) as CONTADOR from tabela_de_produtos group by EMBALAGEM;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes WHERE CIDADE = 'Rio de Janeiro' GROUP BY BAIRRO ;

select estado, bairro, sum(limite_de_credito) as limite from tabela_de_clientes WHERE CIDADE = 'Rio de Janeiro' group by bairro, estado;