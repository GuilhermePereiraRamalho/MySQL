CREATE DEFINER=`root`@`localhost` PROCEDURE `exer01`()
BEGIN
declare cliente varchar(10);
declare idade int;
declare datanascimento date;
declare custo float;
set cliente = 'João';
set idade = 10;
set datanascimento = '2007-01-10';
set custo = 10.23;
select cliente;
select idade;
select datanascimento;
select custo;
END