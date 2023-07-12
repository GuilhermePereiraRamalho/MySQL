use sucos_vendas;

select curdate();

select current_time();

select current_timestamp();

select year(current_timestamp());

select day(current_timestamp());

select month(current_timestamp());

select monthname(current_timestamp());

select datediff(current_timestamp(), '2023-01-01');

select datediff(current_timestamp(), '1993-03-23');

select current_timestamp() as dia_hoje, date_sub(current_timestamp(), interval 5 day) as resultado;

select data_venda ,
dayname(data_venda) as dia, monthname(data_venda) as mes, 
year(data_venda) as ano from notas_fiscais;