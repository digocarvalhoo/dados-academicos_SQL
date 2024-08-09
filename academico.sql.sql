CREATE TABLE aluno (
	id_aluno		INTEGER PRIMARY KEY,
	nome_aluno 	       	VARCHAR (30),
	sobrenome_aluno		VARCHAR (30),
	ra_aluno		VARCHAR (20),
	email_aluno		VARCHAR	(60)
	);

CREATE TABLE professor (
	id_professor		INTEGER PRIMARY KEY,
	nome_professor		VARCHAR (30),
	sobrenome_professor	VARCHAR (30),
	titulação				VARCHAR	(20)
	);

CREATE TABLE curso (
	id_curso		INTEGER PRIMARY KEY,
	nome_curso		VARCHAR (30), 
	ano_curso		INTEGER
	);

CREATE TABLE matricula(
	id_matricula 		INTEGER PRIMARY KEY,
	curso_fk 		INTEGER,
	aluno_fk		INTEGER,
	FOREIGN KEY(curso_fk) REFERENCES curso(id_curso), 
	FOREIGN KEY(aluno_fk) REFERENCES aluno(id_aluno)
);

CREATE TABLE disciplina(
	id_disciplina		INTEGER PRIMARY KEY,
	nome_disciplina		VARCHAR (30),
	curso_fk 			INTEGER,
	aluno_fk			INTEGER,
	FOREIGN KEY(curso_fk) REFERENCES curso(id_curso), 
	FOREIGN KEY(aluno_fk) REFERENCES aluno(id_aluno)
);

INSERT INTO aluno (id_aluno, nome_aluno, sobrenome_aluno, ra_aluno, email_aluno)
VALUES 
 (1,'Diogo', 'Carvalho', 123, 'diogocarva01@gmail.com'),
 (2,'Raiane', 'Carvalho', 124, 'raianelopes02@gmail.com'),
 (3,'Rodrigo', 'Lopes', 125, 'rocrigocarva01@gmail.com');

UPDATE aluno
SET email_aluno = 'rodrigocarva01@gmail.com'
WHERE nome_aluno ='Rodrigo';

SELECT *
from  ALUNO

INSERT INTO aluno (id_aluno, nome_aluno, sobrenome_aluno, ra_aluno, email_aluno)
VALUES (12, 'Bianca', 'Regina', 8734, 'biancarsortega@gmail.com');

INSERT INTO professor (id_professor, nome_professor, sobrenome_professor, titulação)
VALUES (908, 'Fábio', 'Andrade', 'SQL');

SELECT *
from  professor

INSERT INTO curso (ano_curso, nome_curso, id_curso)
values (2014, 'ADS', 7783209);
INSERT INTO curso (ano_curso, nome_curso, id_curso)
values (2014, 'Banco de Dados', 6437277);

UPDATE professor 
SET nome_professor = 'Edson'
WHERE id_professor = 908;

DELETE FROM aluno
WHERE id_aluno = 3;
