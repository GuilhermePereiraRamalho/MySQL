use sucos_vendas;

select * from itens_notas_fiscais;

select * from notas_fiscais;

select * from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero;


select NF.CPF, NF.DATA_VENDA, INF.QUANTIDADE from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero;

select NF.CPF, date_format(NF.DATA_VENDA, '%Y - %m'),
 INF.QUANTIDADE from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero;

/* CONSULTA COM VENDAS DE CLIENTRS POR MES*/
select NF.CPF, date_format(NF.DATA_VENDA, '%Y - %m'),
sum(INF.QUANTIDADE) as QUANTIDADE_VENDAS from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
group by nf.cpf, date_format(NF.DATA_VENDA, '%Y - %m');

/* LIMITE DE COMPRA POR CLIENTE*/
select * from tabela_de_clientes TC;


select TC.CPF, TC.NOME, TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE
FROM tabela_de_clientes TC;

select NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m') as mes_ano,
sum(INF.QUANTIDADE) as QUANTIDADE_VENDAS, TC.VOLUME_DE_COMPRA AS QUANTIDADE_LIMITE
from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
inner join tabela_de_clientes TC
on TC.cpf = NF.CPF
group by nf.cpf, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m');

select NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m') as mes_ano,
SUM(INF.QUANTIDADE) as QUANTIDADE_VENDAS, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE
from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
inner join tabela_de_clientes TC
on TC.cpf = NF.CPF
group by nf.cpf, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m');


select x.cpf, x.nome, x.mes_ano, x.quantidade_vendas, x.QUANTIDADE_limite,
(x.QUANTIDADE_limite -  x.quantidade_vendas) as DIFERENCA
from(
select NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m') as mes_ano,
SUM(INF.QUANTIDADE) as QUANTIDADE_VENDAS, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE
from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
inner join tabela_de_clientes TC
on TC.cpf = NF.CPF
group by nf.cpf, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m')) X;


select x.cpf, x.nome, x.mes_ano, x.quantidade_vendas, x.QUANTIDADE_limite,
CASE WHEN(x.QUANTIDADE_limite -  x.quantidade_vendas) < 0 THEN 'INVALIDA'
ELSE 'VALIDA'
END AS STATUS_VENDA
from(
select NF.CPF, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m') as mes_ano,
SUM(INF.QUANTIDADE) as QUANTIDADE_VENDAS, MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE
from notas_fiscais NF
inner join itens_notas_fiscais INF
on NF.numero = INF.numero
inner join tabela_de_clientes TC
on TC.cpf = NF.CPF
group by nf.cpf, TC.NOME, date_format(NF.DATA_VENDA, '%Y - %m')) X;