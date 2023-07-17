CREATE DEFINER=`root`@`localhost` FUNCTION `f_numero_aleatorio`(min int, max int) RETURNS int
BEGIN
	declare vRetorno int;
    select floor(rand()*(max-min+1)+min) into vRetorno;
RETURN vRetorno;
END