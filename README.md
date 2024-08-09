# Gerenciamento de Dados Acadêmicos
Este repositório contém scripts SQL para criar e manipular um banco de dados de exemplo para o gerenciamento de dados acadêmicos. O banco de dados inclui tabelas para alunos, professores, cursos, matrículas e disciplinas.

## Estrutura do Banco de Dados
O banco de dados é composto pelas seguintes tabelas:

O banco de dados é composto pelas seguintes tabelas:

### Tabela aluno
Armazena informações sobre os alunos.
```
CREATE TABLE aluno (
    id_aluno         INTEGER PRIMARY KEY,
    nome_aluno       VARCHAR (30),
    sobrenome_aluno  VARCHAR (30),
    ra_aluno         DECIMAL (8),
    email_aluno      VARCHAR (60)
);
```
### Tabela professor
Armazena informações sobre os professores.
```
CREATE TABLE professor (
    id_professor      INTEGER PRIMARY KEY,
    nome_professor    VARCHAR (30),
    sobrenome_professor VARCHAR (30),
    titulação         VARCHAR (20)
);
```
### Tabela curso
Armazena informações sobre os cursos.
```
CREATE TABLE curso (
    id_curso   INTEGER PRIMARY KEY,
    nome_curso VARCHAR (30), 
    ano_curso  INTEGER
);
```
### Tabela matricula
Armazena informações sobre as matrículas dos alunos em cursos.
```
CREATE TABLE matricula (
    id_matricula INTEGER PRIMARY KEY,
    curso_fk     INTEGER NOT NULL,
    aluno_fk    INTEGER NOT NULL,
    FOREIGN KEY(curso_fk) REFERENCES curso(id_curso), 
    FOREIGN KEY(aluno_fk) REFERENCES aluno(id_aluno)
);
```
### Tabela disciplina
Armazena informações sobre as disciplinas, incluindo a relação com cursos e professores.
```
CREATE TABLE disciplina (
    id_disciplina  INTEGER PRIMARY KEY,
    nome_disciplina VARCHAR (30),
    curso_fk       INTEGER NOT NULL,
    professor_fk   INTEGER NOT NULL,
    FOREIGN KEY(curso_fk) REFERENCES curso(id_curso), 
    FOREIGN KEY(professor_fk) REFERENCES professor(id_professor)
);
```
## Comandos SQL
Os seguintes comandos SQL são usados para manipular os dados nas tabelas:

### Inserir Dados na Tabela aluno
```
INSERT INTO aluno (id_aluno, nome_aluno, sobrenome_aluno, ra_aluno, email_aluno)
VALUES 
    (1, 'Diogo', 'Carvalho', 123, 'diogocarva01@gmail.com'),
    (2, 'Raiane', 'Carvalho', 124, 'raianelopes02@gmail.com'),
    (3, 'Rodrigo', 'Lopes', 125, 'rocrigocarva01@gmail.com');
```
### Atualizar Dados na Tabela aluno
```
UPDATE aluno
SET email_aluno = 'rodrigocarva01@gmail.com'
WHERE nome_aluno = 'Rodrigo';
```
## Selecionar Dados da Tabela aluno
```
SELECT *
FROM aluno;
```
## Inserir Dados na Tabela professor
```
INSERT INTO professor (id_professor, nome_professor, sobrenome_professor, titulação)
VALUES (908, 'Fábio', 'Andrade', 'SQL');
```
## Selecionar Dados da Tabela professor
```
SELECT *
FROM professor;
```
## Inserir Dados na Tabela curso
```
INSERT INTO curso (id_curso, nome_curso, ano_curso)
VALUES (2014, 'ADS', 7783209),
       (2014, 'Banco de Dados', 6437277);
```
## Atualizar Dados na Tabela professor
```
UPDATE professor 
SET nome_professor = 'Edson'
WHERE id_professor = 908;
```
## Deletar Dados da Tabela aluno
```
DELETE FROM aluno
WHERE id_aluno = 3;
```
## Uso
1.Execute os comandos de criação das tabelas para configurar o banco de dados.
2.Use os comandos de inserção para adicionar dados ao banco de dados.
3.Realize operações de atualização e deleção conforme necessário.
4.Utilize os comandos de seleção para consultar os dados armazenados.




















