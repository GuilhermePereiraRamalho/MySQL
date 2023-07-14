use vendas_sucos;

insert into produtos (
CODIGO, DESCRITO, SABOR, TAMANHO, EMBALAGEM, PRECO_LISTA)
VALUES  ('1040107', 'Light - 350 ml - Melancia', 'Melancia', '350 ml', 'Lata', 4.56);

insert into produtos
VALUES  ('1040109', 'Light - 350 ml - Açai', 'Açai', '350 ml', 'Lata', 5.60);

insert into produtos
VALUES  ('1040110', 'Light - 350 ml - Jaca', 'Jaca', '350 ml', 'Lata', 6.00),
('1040111', 'Light - 350 ml - Manga', 'Manga', '350 ml', 'Lata', 3.50);

select * from produtos;