// INSERT  =======================================================================
INSERT INTO <nome-tabela> (<lista-colunas>) VALUES (<lista-valores>);
INSERT INTO <nome-tabela> SET <nome-coluna1> = <valor1>, <nome-coluna2> = <vlor2;

INSERT INTO Alunos (matricula, nome) VALUES (14, "Maria Rios");
INSERT INTO Alunos (matricula, nome, nota1) VALUES (16, "Francisco Lima", 7.5);

INSERT INTO Alunos SET matricula = 20, nome = "Marta Medonça, sexo = "F", datanasc = "2010-12-25";

// UPDATE  =======================================================================
UPDATE <nome-tabela> SET <coluna> = <novo-valor>,  [coluna2 = valor2] WHERE <condição>;

UPDATE Alunos SET nota2 = 7.0 WHERE matricula > 14;
UPDATE Alunos SET sexo = "F", datanasc = "1969-12-31" WHERE matricula = 14;
UPDATE Alunos SET nota2 = nota2 + 0.5 WHERE nota1 < 8.0;

// DELETE  =======================================================================
DELETE FROM Alunos WHERE matricula = 20;
DELETE FROM Alunos WHERE datanasc < "1970-01-01";

// SELECT  =======================================================================
SELECT nome FROM Alunos WHERE matricula > 4 AND curso = "ADS" AND sexo = "F";
SELECT nome, nota1, nota2, curso FROM Alunos WHERE nota1 > 6 AND matricula < 8 AND sexo = "M";
SELECT nome, not1, nota2, curso FROM  Alunos WHERE ((nota1 + nota2)/2) >= 8;
