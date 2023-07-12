use sucos_vendas;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes
group by estado;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes
where soma_limite > 900000
group by estado;

select estado, sum(limite_de_credito) as soma_limite from tabela_de_clientes
group by estado having sum(LIMITE_DE_CREDITO) > 900000;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos
group by embalagem;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos
group by embalagem having sum(PRECO_DE_LISTA) <= 80 ;

select embalagem, max(preco_de_lista) as maior_preco, min(preco_de_lista) as menor_preco from tabela_de_produtos
group by embalagem having sum(PRECO_DE_LISTA) <= 80 and max(PRECO_DE_LISTA) >= 5;