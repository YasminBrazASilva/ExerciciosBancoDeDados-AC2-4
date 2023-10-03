-- Seleciona todos os alunos e as informações das suas respectivas cidades
	SELECT *
	  FROM Alunos AS a
		   JOIN Cidades AS c
             ON c.id = a.cidade_id