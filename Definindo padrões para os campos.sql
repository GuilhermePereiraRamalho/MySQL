create table tab_padrao
(id int auto_increment,
DESCRITOR VARCHAR(20),
ENDERECO varchar(100) NULL,
CIDADE varchar(50) default 'Rio de Janeiro',
DATA_CRIACAO timestamp default current_timestamp(),
primary KEY (ID));

INSERT INTO tab_padrao(DESCRITOR, ENDERECO, CIDADE, DATA_CRIACAO)
VALUES('CLIENTE X', 'RUA PROJETADA A', 'SÃO PAULO', '2019-01-01');

INSERT INTO TAB_PADRAO (DESCRITOR) VALUES('CLIENTE Y');
 SELECT * FROM tab_padrao;