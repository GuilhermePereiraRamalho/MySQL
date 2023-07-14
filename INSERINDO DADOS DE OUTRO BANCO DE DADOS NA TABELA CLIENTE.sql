use vendas_sucos;

select * from sucos_vendas.tabela_de_clientes;

INSERT INTO CLIENTES
select CPF, NOME, ENDERECO_1 AS ENDERECO, BAIRRO,
CIDADE, ESTADO, CEP, DATA_DE_NASCIMENTO AS DATA_NASCIMENTO, IDADE, SEXO,
LIMITE_DE_CREDITO AS LIMITE_CREDITO, VOLUME_DE_COMPRA AS VOLUME_COMPRA,
PRIMEIRA_COMPRA FROM
sucos_vendas.tabela_de_clientes
where CPF not in (select CPF from clientes);