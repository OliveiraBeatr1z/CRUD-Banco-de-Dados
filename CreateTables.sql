Create database Escola;

Use Escola;

CREATE TABLE Aluno(
  matricula int auto-increment primary key,
  nome varchar(40) not null,
  sexo char(1) default "F",
  datanasc date
);

CREATE TABLE aluno-turma(
  FOREIGN KEY matricula REFERENCES Aluno(matricula),
  FOREIGN KEY codTurma REFERENCES Turma(codTurma),
  ausencia numeric(2),
  nota1 numeric(10,2),
  nota2 numeric(10,2)
);

CREATE TABLE Turma(
  codTurma int auto-increment primary key,
  duracaoAula time,
  dtInicio date,
  dtFim,
  tipoAtividade,
  FOREIGN KEY (codProfessor) REFERENCES Professor(codProfessor)
);

CREATE TABLE Professores(
  codProfessor int auto-increment primary key,
  nome varchar(40),
  dtNasc date,
  telefone numeric (11)
);
  



