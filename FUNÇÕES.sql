use sucos_vendas;

select ltrim('    ola') as resultado;

select rtrim('Olá     ') as resultado;

select trim('   ola   ') as resultado;

select concat('Ola',' ','tudo bem', '?');

select upper('ola, tudo bem?');

select substring('Olá, tudo bem?',6,4) as resultado;

select concat(nome, ' (', cpf, ') ') as resultado from tabela_de_clientes;