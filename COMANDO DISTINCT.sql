use sucos_vendas;

select embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos;

select distinct embalagem, tamanho from tabela_de_produtos where sabor = 'Laranja';

select distinct embalagem, tamanho, sabor from tabela_de_produtos;