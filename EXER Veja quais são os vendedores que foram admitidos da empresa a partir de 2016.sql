#Veja quais são os vendedores que foram admitidos da empresa a partir de 2016.
use sucos;

select * from tabela_de_vendedores where year(DATA_ADMISSAO) >= 2016;