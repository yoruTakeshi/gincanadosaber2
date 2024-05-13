use avaliacao_22b;

-- 1 --

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ("As Crônicas de Nárnia", "C.S Lewis", 1950, TRUE, "Fantasia", "978-0064471190", "HarperCollins", 768, "Inglês");

select * from Livros
where titulo = "As Crônicas de Nárnia";

-- 2 --

update Livros
set disponivel = false
where ano_publicacao < 2000;

select * from Livros
where ano_publicacao < 2000;

-- 3 --

update Livros
set editora = "Plume Books"
where titulo = "1984";

select * from Livros
where titulo = "1984";

-- 4 --

delete from Livros
where idioma = "Francês" and ano_publicacao < 1970;

-- 5 --

select * from Livros
where quantidade_paginas > 500;

-- 6 --

select count(categoria) from Livros
group by categoria;

-- 7 --

select * from Livros
limit 0,5;

-- 8 --

select avg(ano_publicacao) from Livros;

-- 9 --

select * from Livros
order by ano_publicacao desc;

-- 10 --

select * from Livros
where titulo like 'a%' and ano_publicacao between 1980 and 2000;