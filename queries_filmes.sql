
-- Buscar Nome e Ano dos Filmes
select Nome, Ano from Filmes;

-- Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano from Filmes order by Ano;

-- Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes
where Nome = 'De Volta para o Futuro';

-- Buscar os filmes lançados em 1997
select Nome, Ano, Duracao from Filmes
where Ano = '1997';

-- Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, Duracao from Filmes
where Ano >= '2000';

-- Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from Filmes
where Duracao > 100 
and Duracao < 150
order by Duracao;

-- Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select Ano, count(Ano) as Quantidade 
from Filmes
group by Ano
order by Quantidade desc;

-- Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select Id, PrimeiroNome, UltimoNome, Genero from Atores;

-- Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select Id, PrimeiroNome, UltimoNome, Genero from Atores
where Genero = 'F'
order by PrimeiroNome;

-- Buscar o nome do filme e o gênero
select f.Nome, g.Genero from Filmes f 
join FilmesGenero fg
on fg.IdFilme = f.Id
join Generos g 
on g.Id = fg.IdGenero

-- Buscar o nome do filme e o gênero do tipo "Mistério"
select f.Nome, g.Genero from Filmes f 
join FilmesGenero fg
on fg.IdFilme = f.Id
join Generos g 
on g.Id = fg.IdGenero
where g.Genero = 'Mistério'

-- Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select f.Nome, a.PrimeiroNome,a.UltimoNome, ef.Papel 
from Filmes f
join ElencoFilme ef
on ef.IdFilme = f.Id
join Atores a
on a.Id = ef.IdAtor