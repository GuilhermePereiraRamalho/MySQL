CREATE DEFINER=`root`@`localhost` PROCEDURE `looping_cursor_multiplas_colunas`()
BEGIN
	declare fim_do_cursor int default 0;
    declare  vCidade, vEstado, vCep varchar(50);
    declare vNome, vEndereco varchar(150);
    declare c cursor for
    select nome, endereco_1, cidade, estado, cep from tabela_de_clientes;
    declare continue handler for not found set fim_do_cursor = 1;
    open c;
    while fim_do_cursor = 0
	do
		fetch c into vNome, vEndereco, vCidade, vEstado, vCep;
        if fim_do_cursor = 0 then
			select concat(vNome, 'Endereço', vEndereco,'. ', vCidade,
            ' - ', vEstado, 'CEP: ' , vCep);
        end if;
    end while;
    close c;
END