use sucos;
create table tabela_de_vendedores(
MATRICULA varchar(5),
NOME VARCHAR(100),
PERCENTUAL_COMISSAO FLOAT,
DATA_ADMISSAO DATE,
DE_FERIAS VARCHAR(3)
);
alter table tabela_de_vendedores add primary key(MATRICULA);

insert into tabela_de_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS
) VALUES('00235', 'Márcio Almeida Silva', 0.08, '2014-08-15','Não');

insert into tabela_de_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS
) VALUES('00236', 'Cláudia Morais', 0.08, '2013-09-17','Sim');

insert into tabela_de_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS
) VALUES('00237', 'Roberta Martins', 0.11, '2017-03-18','Sim');

insert into tabela_de_vendedores(
MATRICULA, NOME, PERCENTUAL_COMISSAO, DATA_ADMISSAO, DE_FERIAS
) VALUES('00238', 'Péricles Alves', 0.11, '2016-08-21','Não');

select * from tabela_de_vendedores;

