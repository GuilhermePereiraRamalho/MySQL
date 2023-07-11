use sucos;

alter table tbcliente add primary key(CPF);

alter table tbcliente add column (DATA_NASCIMENTO date);

INSERT INTO tbcliente(
CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP,
IDADE, SEXO, LIMITE_CREDITO, VOLUME_COMPRA, PRIMEIRA_COMPRA, DATA_NASCIMENTO) 
VALUES ('00388934505', 'João da Silva', 'Rua projetada A numero 10', '', 'Vila Roman', 
'Caratinga', 'Amazonas', '2222222', '30', 'M', 10000.00, 2000, 0, '1993-10-05');

select * from tbcliente;