--1
SELECT
	Nome, 
	Ano
From Filmes
--2
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano ASC
--3 
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome ='De Volta para o futuro'
--4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'
--5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > '2000'
--6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao BETWEEN 101 AND 150
ORDER BY Duracao ASC;
--7
SELECT
    Ano,
    COUNT(*) AS QuantidadeDeFilmes
FROM
    Filmes
GROUP BY
    Ano
ORDER BY
    QuantidadeDeFilmes DESC
--8

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'
--9
SELECT 
	PrimeiroNome, 
	UltimoNome
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;
--10
SELECT
    Filmes.Nome,
    Generos.Genero
FROM
    Filmes
INNER JOIN
    Generos ON Filmes.Id = Generos.Id;
--11
SELECT
    Filmes.Nome,
    Generos.Genero
FROM
    Filmes
INNER JOIN
    Generos ON Filmes.Id = Generos.Id
WHERE
    Generos.Genero = 'Mistério';
--12
SELECT
    Filmes.Nome,
    Atores.PrimeiroNome,
    Atores.UltimoNome,
    ElencoFilme.Papel
FROM
    Filmes
INNER JOIN
    ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN
    Atores ON ElencoFilme.IdAtor = Atores.Id;

	
	
;