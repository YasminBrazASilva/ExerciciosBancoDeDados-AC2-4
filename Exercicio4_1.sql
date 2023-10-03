-- Cria a tabela cidades
CREATE TABLE Cidades (
	id INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    populacao INT
);

-- Cria a tabela alunos
CREATE TABLE Alunos (
	id INT PRIMARY KEY,
    nome VARCHAR(60) NOT NULL,
    data_nasc DATE,
    cidade_id int,
    FOREIGN KEY(cidade_id) REFERENCES Cidades(id)
);

-- Insere valores na tabela cidades
INSERT INTO Cidades
	VALUES (1, 'Arraial dos Tucanos', 42632),
		   (2, 'Springfield', 13820),
		   (3, 'Hill Valley', 27383),
		   (4, 'Coruscant', 19138),
           (5, 'Minas Tirith', 31394);

-- Insere valores na tabela alunos
INSERT INTO Alunos
	VALUES (1, 'Immanuel Kant', DATE('1724-04-22'), 4),
		   (2, 'Alan Turing', DATE('1912-06-23'), 3),
           (3, 'George Boole', DATE('2002-01-01'), 1),
           (4, 'Lynn Margulis', DATE('1991-08-12'), 3),
           (5, 'Nicola Tesla', DATE('2090-01-08'), NULL),
           (6, 'Ada Lovelace', DATE('1978-05-28'), 4),
           (7, 'Claude Shannon', DATE('1982-10-15'), 3),
           (8, 'Charles Darwin', DATE('2010-02-06'), NULL),
           (9, 'Marie Curie', DATE('2007-07-12'), 3),
           (10, 'Carl Sagan', DATE('2000-11-20'), 1),
           (11, 'Tim Berners-Lee', DATE('1973-12-05'), 4),
           (12, 'Richard Feynman', DATE('1982-09-12'), 1)