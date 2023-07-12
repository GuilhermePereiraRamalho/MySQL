use sucos_vendas;

select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores A
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA;

select A.MATRICULA, A.NOME, count(*) from tabela_de_vendedores A
inner join notas_fiscais B
on A.MATRICULA = B.MATRICULA
group by A.MATRICULA, A.NOME;

select A.MATRICULA, A.NOME, count(*) from tabela_de_vendedores A, notas_fiscais B
where A.MATRICULA = B.MATRICULA
group by A.MATRICULA, A.NOME;