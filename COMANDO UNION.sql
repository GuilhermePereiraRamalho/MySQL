use sucos_vendas;

select distinct bairro from tabela_de_clientes;
select distinct bairro from tabela_de_vendedores;

select distinct bairro from tabela_de_clientes
union
select distinct bairro from tabela_de_vendedores;

select distinct bairro from tabela_de_clientes
union all
select distinct bairro from tabela_de_vendedores;

select distinct bairro, nome, 'CLIENTE' AS TIPO from tabela_de_clientes
union
select distinct bairro, NOME, 'VENDEDOR' AS TIPO from tabela_de_vendedores;

select distinct bairro, nome, 'CLIENTE' AS TIPO_CLIENTE from tabela_de_clientes
union
select distinct bairro, NOME, 'VENDEDOR' AS TIPO_VENDEDOR from tabela_de_vendedores;

select distinct bairro, nome, 'CLIENTE' AS TIPO_CLIENTE, CPF  from tabela_de_clientes
union
select distinct bairro, NOME, 'VENDEDOR' AS TIPO_VENDEDOR , MATRICULA from tabela_de_vendedores;

select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME,
DE_FERIAS from tabela_de_vendedores left join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO
union
select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME,
DE_FERIAS from tabela_de_vendedores right join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;
