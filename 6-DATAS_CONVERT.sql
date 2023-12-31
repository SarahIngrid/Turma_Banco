--DROPA BANCO
USE MASTER IF EXISTS
(SELECT * FROM SYS.databases 
WHERE NAME = 'DBDATAS_3IM')
DROP DATABASE DBDATAS_3IM
GO
--CRIA BANCO ALUNOS CREATE DATABASE ALUNOS
CREATE DATABASE DBDATAS_3IM
GO
USE DBDATAS_3IM
GO
SP_HELPDB DBDATAS_3IM
--ARQUIVOS EXTENS�O DO BANCO DE DADOS .MDF
--ARQUIVOS EXTENS�O LOG DO BANCO DE DADOS .LDF

--CRIA TABELA TB_ALUNOS
CREATE TABLE TB_ALUNOS(
	CODALUNO INT IDENTITY(1,1) PRIMARY KEY, 
	NOME VARCHAR(40) NOT NULL,
	CURSO VARCHAR(20) NOT NULL,
	TURMA VARCHAR(40) NOT NULL,
	MENSALIDADE DECIMAL(10,2) NOT NULL,
	DATANASC DATETIME NOT NULL
)
GO

--CONVERSAO DATA
SELECT * FROM TB_ALUNOS;

SELECT CONVERT(varchar(10), getdate(), 106)

SELECT CONVERT(varchar(10), DATANASC, 106) AS DATA_NASC
FROM TB_ALUNOS

--SET DATEFORMAT DMY;
--SET DATEFORMAT MDY;


-- FUN��ES DE CONVERS�O
---DECLARE @FormatoData DATETIME
---SET @FormatoData=GETDATE()
-- PRINT @FormatoData

--DECLARE @FormatoData DATETIME
--SET @FormatoData=GETDATE()
--SELECT CONVERT(varchar,@FormatoData,103) as [DD/MM/YYYY]



--INSERE REGISTROS NA TABELA TB_ALUNOS
INSERT INTO TB_ALUNOS VALUES ('Pedro Sanches', 'Eletr�nica', 'ELE1AN', 250.00, '01/12/1980');
INSERT INTO TB_ALUNOS VALUES ('Selma Bartoretto', 'Eletr�nica', 'ELE1AN', 250.00, '16/05/1985');
INSERT INTO TB_ALUNOS VALUES ('Julio Barros', 'Inform�tica', 'INF1AN', 250.00, '16/05/1982');
INSERT INTO TB_ALUNOS VALUES ('Sandra Spec', 'Inform�tica', 'INF2AN', 150.00, '03/04/2000');
INSERT INTO TB_ALUNOS VALUES ('Debora Fasano', 'Edifica��es', 'EDF3BN', 180.00, '17/06/2002');
INSERT INTO TB_ALUNOS VALUES ('Augusto Romano', 'Redes', 'IRD1AM', 180.00, '22/08/2004');
INSERT INTO TB_ALUNOS VALUES ('Leticia Fontes', 'Redes', 'IRD2AT', 200.00, '09/03/2005');
INSERT INTO TB_ALUNOS VALUES ('Rodrigo Santana', 'Edifica��es', 'EDF3BN', 150.00, '02/02/2003');
INSERT INTO TB_ALUNOS VALUES ('Jorge Salgueiro', 'Eletr�nica', 'ELE2AN', 200.00, '07/09/1985');
INSERT INTO TB_ALUNOS VALUES ('Joana Prado', 'Eletr�nica', 'ELE2AN', 200.00, '12/07/1987');
INSERT INTO TB_ALUNOS VALUES ('Carla Zulmeto', 'Inform�tica', 'INF1AN', 190.00, '05/08/1984');
INSERT INTO TB_ALUNOS VALUES ('Jeferson Oliveira', 'Inform�tica', 'INF1AN', 220.00, '02/09/1990');
INSERT INTO TB_ALUNOS VALUES ('Carlos Torres', 'Redes', 'IRD1AM', 220.00, '03/09/2004');
INSERT INTO TB_ALUNOS VALUES ('Gerson Brandao', 'Redes', 'IRD1AM', 220.00, '02/09/2004');
INSERT INTO TB_ALUNOS VALUES ('Juliana Marques', 'Redes', 'IRD2AT', 180.00, '15/10/2005');

SELECT * FROM TB_ALUNOS;

--(01) SELECIONA DATA ATUAL
SELECT GETDATE ();


--(02) DEFINE GETDATE COMO "DATA_DE_HOJE"
SELECT GETDATE () AS DATA_DE_HOJE;

--(03) SOMA DIAS � DATA ATUAL
SELECT GETDATE () + 45 AS DATA_FUTURA;

--(04) SELECIONAR O DIA ATUAL
SELECT DAY (GETDATE ()) AS DIA_DE_HOJE;

--(05) SELECIONAR O MES ATUAL
SELECT MONTH (GETDATE ()) AS MES_CORRENTE;

--(06) SELECIONAR O ANO ATUAL
SELECT YEAR (GETDATE ()) AS ANO_CORRENTE;

--(07) EXECUTA SELECT DE DATA NA ORDEM DESEJADA
SELECT NOME,
       DAY(DATANASC) AS DIA,
       MONTH(DATANASC) AS MES,
       YEAR(DATANASC) AS ANO FROM TB_ALUNOS;

--(08) UTILIZA FUN��O GETDATE PARA CALCULAR QUANTIDADE DE DIAS VIVIDOS POR CADA ALUNO
SELECT NOME, 
TURMA, 
CAST(GETDATE() - DATANASC AS INT)
AS DIAS_VIVIDOS FROM TB_ALUNOS;
SELECT * FROM TB_ALUNOS;

--(09) LISTA ALUNOS NASCIDOS EM DIA ESPEC�FICO
SELECT * FROM TB_ALUNOS WHERE DAY(DATANASC) = 9;

--(10) LISTA ALUNOS NASCIDOS EM MES ESPEC�FICO
SELECT * FROM TB_ALUNOS WHERE MONTH(DATANASC) = 5;

--(11) LISTA ALUNOS NASCIDOS EM ANO ESPEC�FICO
SELECT * FROM TB_ALUNOS WHERE YEAR(DATANASC) = 2002;

--(12) LISTA ALUNOS NASCIDOS EM M�S E ANO ESPEC�FICO
SELECT * FROM TB_ALUNOS WHERE YEAR(DATANASC) = 2004 AND MONTH(DATANASC) = 09;

--(13) LISTA ALUNOS NASCIDOS EM M�S ESPEC�FICO E NO 5�DIA DA SEMANA
SELECT * FROM TB_ALUNOS WHERE DATEPART(YEAR, DATANASC) = 2004
AND DATEPART(MONTH, DATANASC) = 09 
AND DATEPART(WEEKDAY, DATANASC) = 5

--(14) LISTA ALUNOS ORDENADOS POR DATA DE NASCIMENTO
SELECT * FROM TB_ALUNOS ORDER BY DATANASC;

--(15) LISTA ALUNOS NASCIDOS EM  (1984) e NO 3� TRIMESTRE.
SELECT * FROM TB_ALUNOS WHERE DATEPART(YEAR, DATANASC) = 1984 AND DATEPART(QUARTER, DATANASC) = 3

--(16) LISTA OS CAMPOS CODALUNO, NOME, CURSO E DATANASC NOMEANDO COMO DIA_DA_SEMANA MOSTRANDO O DIA
-- DA SEMANA NOMEADO COMO DIA_DA_SEMANA E M�S NOMEADO COMO M�S
SELECT CODALUNO, NOME, CURSO, DATANASC,
DATENAME(WEEKDAY,DATANASC) AS DIA_DA_SEMANA,
DATENAME(MONTH, DATANASC) AS MES FROM TB_ALUNOS
WHERE DATEPART(WEEKDAY, DATANASC) = 2;

--(17) LISTAR A DATA ATUAL SOMADA COM  UM M�S
SELECT DATEADD(MONTH, 1, '09/05/2023')

--(18) LISTAR A DATA ATUAL SOMADA COM  45 DIAS
SELECT DATEADD(DAY, 45, GETDATE());

--(19) LISTAR A DATA ATUAL SOMADA COM 5 ANOS
SELECT DATEADD(YEAR, 5, GETDATE());

--(20) LISTAR A DIFEREN�A DE DIAS ENTRE A DATA ATUAL E SUA DATA DE NASCIMENTO
SELECT DATEDIFF(DAY, '16/05/1965', GETDATE());

--(21) LISTAR A QUANTIDADE DE DIAS COMPARANDO COM UMA DETERMINADA DATA
SELECT NOME, CURSO, DATEDIFF(DAY, DATANASC, '01/01/2000') FROM TB_ALUNOS;
SELECT * FROM TB_ALUNOS;


		








select CURRENT_TIMESTAMP;

