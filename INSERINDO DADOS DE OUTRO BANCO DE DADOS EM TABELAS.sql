use vendas_sucos;

select * from sucos_vendas.tabela_de_produtos;

select codigo_do_produto as CODIGO, NOME_DO_PRODUTO AS DESCRITO,
EMBALAGEM, TAMANHO, SABOR, PRECO_DE_LISTA AS PRECO_LISTA FROM
sucos_vendas.tabela_de_produtos
where CODIGO_DO_PRODUTO not in (select CODIGO from produtos);

insert into produtos 
select codigo_do_produto as CODIGO, NOME_DO_PRODUTO AS DESCRITO,
SABOR, TAMANHO, EMBALAGEM, PRECO_DE_LISTA AS PRECO_LISTA FROM
sucos_vendas.tabela_de_produtos
where CODIGO_DO_PRODUTO not in (select CODIGO from produtos);

select * from produtos;