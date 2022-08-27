--criação do banco de dados
CREATE DATABASE TesteSeguranca;

--colocar o banco de dados em uso
USE TesteSeguranca;

--criação de uma tabela para armazenar usuários
CREATE TABLE Usuarios
(
	Id INT PRIMARY KEY IDENTITY, --identity torna o campo auto incremental
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
);

--consulta a todos os dados da tabela criada
SELECT * FROM Usuarios;

--cadastrar usuários no banco de dados
INSERT INTO Usuarios VALUES ('email@email.com',1234);
INSERT INTO Usuarios VALUES ('luiz.lozano@sp.senai.br','vip12345');
INSERT INTO Usuarios VALUES ('brener@email.br','brener1234');

SELECT Id, Email, HASHBYTES('SHA2_512',Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 1;