--MAX, MIN,AVG,COUNT,SUM
-- use SUPERMERCADO_3I

-- N�O ESQUECER DE RENOMEAR AS COLUNAS USANDO COMANDO AS.

--1) Mostrar qual o valor do produto mais caro.
SELECT MAX(PRECO)FROM PRODUTO

--2) Mostrar qual o valor do produto mais barato.
SELECT MIN(PRECO)FROM PRODUTO

--3) Mostrar para cada c�digo de cliente, 
--   a m�dia do valor total da tabela PEDIDO.

--4) Mostrar a quantidade de c�digo de fornecedores 
--   existentes na tabela produto (sem repetir)
SELECT COUNT(FORNECEDOR_ID)FROM PRODUTO

--5) Mostrar a quantidade de clientes existentes na tabela PEDIDO


--6) Mostrar em ordem crescente, a m�dia do valor 
--   unitario para cada qtde_embalagem da tabela PRODUTO. 

--7) mostrar quantos fornecedores possuem e-mail

--8) Mostrar quantos clientes n�o possuem telefone

--9) Mostrar para cada Sexo, quantos clientes existem

--10) Informe, para cada n�mero de pedido e c�digo de cliente, 
--    a quantidade m�xima de produtos comprados em ordem decrescente.



