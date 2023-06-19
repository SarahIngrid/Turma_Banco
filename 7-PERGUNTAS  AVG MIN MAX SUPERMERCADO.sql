--MAX, MIN,AVG,COUNT,SUM
-- use SUPERMERCADO_3I

-- NÃO ESQUECER DE RENOMEAR AS COLUNAS USANDO COMANDO AS.

--1) Mostrar qual o valor do produto mais caro.
SELECT MAX(PRECO)FROM PRODUTO

--2) Mostrar qual o valor do produto mais barato.
SELECT MIN(PRECO)FROM PRODUTO

--3) Mostrar para cada código de cliente, 
--   a média do valor total da tabela PEDIDO.

--4) Mostrar a quantidade de código de fornecedores 
--   existentes na tabela produto (sem repetir)
SELECT COUNT(FORNECEDOR_ID)FROM PRODUTO

--5) Mostrar a quantidade de clientes existentes na tabela PEDIDO


--6) Mostrar em ordem crescente, a média do valor 
--   unitario para cada qtde_embalagem da tabela PRODUTO. 

--7) mostrar quantos fornecedores possuem e-mail

--8) Mostrar quantos clientes não possuem telefone

--9) Mostrar para cada Sexo, quantos clientes existem

--10) Informe, para cada número de pedido e código de cliente, 
--    a quantidade máxima de produtos comprados em ordem decrescente.



