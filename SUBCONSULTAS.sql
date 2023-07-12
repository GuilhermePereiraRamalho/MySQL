use sucos_vendas;

select distinct bairro from tabela_de_vendedores;

select * from tabela_de_clientes where BAIRRO 
in ('Tijuca', 'Jardins', 'Copacabana', 'Santo Amaro');

select * from tabela_de_clientes where BAIRRO 
in (select distinct bairro from tabela_de_vendedores);

select x.embalagem, x.preco_maximo from
(select embalagem, max(preco_de_lista) as preco_maximo from tabela_de_produtos
group by EMBALAGEM) X where x.preco_maximo >= 10;
