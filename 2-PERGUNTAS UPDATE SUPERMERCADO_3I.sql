-- UPDATE  

-- USE bdSUPERMERCADO_3I;

--1) Na tabela PRODUTO, aumentar o VALOR_UNIT em R$ 1.00 dos produtos que começam com a palavra SHAMPOO.

UPDATE PRODUTO
SET PRECO = (PRECO + 1)
WHERE NOME LIKE '%SHAMPOO%'

	--1.1) Fazer um SELECT para ver como ficou o novo valor na tabela

	SELECT * FROM PRODUTO
	WHERE NOME LIKE '%SHAMPOO%'

	SELECT *, (PRECO + 1) FROM PRODUTO 
	WHERE NOME LIKE '%SHAMPOO%'

--2) Alterar o preço do produto de código 52 para R$ 20.00

   UPDATE PRODUTO
   SET PRECO = 21,
       EMBALAGEM_ID = 2
   WHERE ID=52

	--2.1) Fazer um SELECT para ver como ficou o novo valor na tabela

	SELECT * FROM PRODUTO
	WHERE ID=52

--3) Alterar o telefone do Fornecedor 5 para 1121035835

UPDATE FORNECEDOR
SET TELEFONE = 1121035834
WHERE ID= 5

	--3.1) Fazer um SELECT para ver como ficou o novo valor na tabela
SELECT * FROM FORNECEDOR	
WHERE ID= 5

--4) Para o Fornecedor 4, alterar o telefone  para 1155553894

UPDATE FORNECEDOR
SET TELEFONE = '1155553894'
WHERE ID= 4
	--4.1) Fazer um SELECT para ver como ficou o novo valor na tabela
SELECT * FROM FORNECEDOR	
WHERE ID= 4

--5) Dar um desconto de 10% no PRECO do
-- PRODUTO no FORNECEDOR 1

UPDATE PRODUTO
SET PRECO = PRECO * 0.9
WHERE FORNECEDOR_ID =1

	--5.1) Fazer um SELECT para ver como ficou o novo valor na tabela

SELECT *,PRECO * 0.9 AS VALOR_NEW FROM PRODUTO
WHERE FORNECEDOR_ID =1

--6) Alterar o TIPO_EMBAL dos 
--PRODUTO do Fornecedor 4 para 2.

UPDATE PRODUTO
SET EMBALAGEM_ID=2
WHERE FORNECEDOR_ID = 4

	--6.1) Fazer um SELECT para ver como ficou o novo valor na tabela
	SELECT * FROM PRODUTO
	WHERE FORNECEDOR_ID = 4


--7) Mudar o endereço do cliente de código 1002 para 'RUA DA PAZ, 1000 - SAO CAETANO DO SUL - SP'

UPDATE CLIENTE
SET ENDERECO = 'RUA DA PAZ, 1000 - SAO CAETANO DO SUL - SP'
WHERE ID= 1002
	
	--7.1) Fazer um SELECT para ver como ficou o novo valor na tabela

SELECT * FROM CLIENTE
WHERE ID= 1002

--8) Na tabela CLIENTE apagar todos os EMAIL dos clientes com SEXO ='M'.


	--8.1) Fazer um SELECT para ver como ficou o novo valor na tabela

