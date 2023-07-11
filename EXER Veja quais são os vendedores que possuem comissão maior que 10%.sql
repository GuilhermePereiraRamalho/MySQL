#Veja quais são os vendedores que possuem comissão maior que 10%
USE sucos;

select * from tabela_de_vendedores where PERCENTUAL_COMISSAO > 0.1;