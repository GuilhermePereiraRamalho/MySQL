use sucos_vendas;

select * from tabela_de_vendedores;

select count(*) from tabela_de_clientes;

select * from tabela_de_vendedores inner join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME,
DE_FERIAS from tabela_de_vendedores inner join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME,
DE_FERIAS from tabela_de_vendedores left join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME,
DE_FERIAS from tabela_de_vendedores right join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME,
DE_FERIAS from tabela_de_vendedores full join tabela_de_clientes
on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;


select tabela_de_vendedores.BAIRRO,
tabela_de_vendedores.NOME,
tabela_de_clientes.BAIRRO,
tabela_de_clientes.NOME,
DE_FERIAS from tabela_de_vendedores, tabela_de_clientes;

