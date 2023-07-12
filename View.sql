use sucos_vendas;

select embalagem, max(preco_de_lista) as maior_preco from tabela_de_produtos
group by EMBALAGEM;

select x.embalagem, x.maior_preco from
VW_MAIORES_EMBALAGENS x where x.maior_preco >= 10;

SELECT A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.MAIOR_PRECO
FROM tabela_de_produtos A INNER JOIN VW_MAIORES_EMBALAGENS x
ON A.EMBALAGEM = X.EMBALAGEM;

SELECT A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.MAIOR_PRECO,
((A.preco_de_lista / X.maior_preco)-1) * 100 as percentual
FROM tabela_de_produtos A INNER JOIN VW_MAIORES_EMBALAGENS x
ON A.EMBALAGEM = X.EMBALAGEM;