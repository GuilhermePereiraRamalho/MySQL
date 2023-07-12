#Veja o ano de nascimento dos clientes e classifique-os como: Nascidos antes de 1990 são velhos, nascidos entre 1990 e 1995 são jovens e nascidos depois de 1995 são crianças. Liste o nome do cliente e esta classificação.

select nome, data_de_nascimento,
case 
	when year(data_de_nascimento) < 1990 then 'VELHO'
    when year(data_de_nascimento) >= 1990 and year(data_de_nascimento) <= 1995 then 'JOVEM'
    else 'CRIANÇA'
end as STATUS_IDADE
from tabela_de_clientes;