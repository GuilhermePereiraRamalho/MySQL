CREATE DEFINER=`root`@`localhost` FUNCTION `f_acha_tipo_sabor`(vSabor varchar(50)) RETURNS varchar(20) CHARSET utf8mb4
BEGIN
	declare vRetorno varchar(20) default '';
     case vSabor
		when 'Lima/Limão' then set vRetorno = 'Citrico';
		when 'Laranja' then set vRetorno = 'Citrico';
		when 'Morango/Limão' then set vRetorno = 'Citrico';
		when 'Uva' then set vRetorno = 'Neutro';
		when 'Morango' then set vRetorno =  'Neutro';
    else set vRetorno = 'Ácidos' ;
    end case;
RETURN vRetorno;
END