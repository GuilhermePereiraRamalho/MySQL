use sucos_vendas;

select * from tabela_de_produtos;

select NOME_DO_PRODUTO, PRECO_DE_LISTA,
case
	when PRECO_DE_LISTA >= 12 then 'PRODUTO CARO'
	WHEN preco_de_lista >= 7 and preco_de_lista < 12 then 'PRODUTO EM CONTA'
	else 'PRODUTO BARATO'
end as STATUS_PRECO
from tabela_de_produtos;

select embalagem,
case
	when PRECO_DE_LISTA >= 12 then 'PRODUTO CARO'
	WHEN preco_de_lista >= 7 and preco_de_lista < 12 then 'PRODUTO EM CONTA'
	else 'PRODUTO BARATO'
end as STATUS_PRECO, avg(PRECO_DE_LISTA) as PRECO_MEDIO
from tabela_de_produtos
where SABOR = 'manga'
group by embalagem,
case
	when PRECO_DE_LISTA >= 12 then 'PRODUTO CARO'
	WHEN preco_de_lista >= 7 and preco_de_lista < 12 then 'PRODUTO EM CONTA'
	else 'PRODUTO BARATO'
end
order by embalagem;
