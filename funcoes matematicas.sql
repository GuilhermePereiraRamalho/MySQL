use sucos_vendas;

select (23+((25-2)/2)*45) as resultado;

select ceiling(12.333333333333333333) as resultado;

select round(12.333333333333333333) as resultado;

select floor(12.77777777777) as resultado;

select rand() as resultado;

select numero, quantidade, preco, quantidade * preco as faturamento
 from itens_notas_fiscais;
 
 select numero, quantidade, preco, round(quantidade * preco) as faturamento
 from itens_notas_fiscais;