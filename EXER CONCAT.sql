#Faça uma consulta listando o nome do cliente e o endereço completo (Com rua, bairro, cidade e estado).

USE SUCOS_VENDAS;

SELECT NOME, CONCAT(ENDERECO_1, ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM tabela_de_clientes