USE MASTER IF EXISTS(SELECT * FROM SYS.databases WHERE NAME = 'dbPet_Shop_3I')
DROP DATABASE dbPet_Shop_3I
GO

CREATE DATABASE dbPet_Shop_3I
GO

USE dbPet_Shop_3I
GO


CREATE TABLE Cargo
( 
   id INT IDENTITY,
   nomeCargo VARCHAR(100) NOT NULL,

   PRIMARY KEY (id)
)

INSERT INTO Cargo VALUES ('Tosador')
INSERT INTO Cargo VALUES ('Caixa')
INSERT INTO Cargo VALUES ('Diretor')

CREATE TABLE Funcionario
( 
   id       INT IDENTITY,
   nome     VARCHAR(100) NOT NULL,
   cpf      CHAR(11)     NULL,
   rg       VARCHAR(12)  NULL,
   sexo     CHAR(1)      NOT NULL,
   dataNasc DATE         NOT NULL,
   foto     VARBINARY(MAX) NULL,
   telfone  VARCHAR(25)  NOT NULL,
   email    VARCHAR(100) NULL, 
   logradouro 	VARCHAR(100) NOT NULL, -- nome da rua, avenida e etc
   numero_resid VARCHAR(10)  NOT NULL,
   complemento  VARCHAR(100) NULL,
   cep 	        CHAR(8)  NULL,
   bairro  	VARCHAR(100) NULL,
   cidade 	VARCHAR(100)  NULL,
   uf 		CHAR(2)  NULL,
   cargo_id INT NOT NULL,

   PRIMARY KEY (id),
   FOREIGN KEY (cargo_id) REFERENCES Cargo (id)
)

CREATE TABLE Login(
   id       INT IDENTITY,
   login VARCHAR(50),
   senha VARCHAR(50),
   funcionario_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (funcionario_id) REFERENCES Funcionario (id)
)
