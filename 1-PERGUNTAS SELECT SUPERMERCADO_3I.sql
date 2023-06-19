--USE SUPERMERCADO_3I

/*1) Listar todos os campos da tabela Produto.*/
SELECT * FROM PRODUTO
--2) Listar o nome do produto, o código do Fornecedor e o valor unitario da tabela de produtos.
SELECT
NOME,
FORNECEDOR_ID,
PRECO
FROM
PRODUTO

--3) Listar todos os campos da tabela Fornecedor quando o código do fornecedor for 11
SELECT * FROM FORNECEDOR
WHERE ID = 11
--4) Listar os campos NOME_FORN e ENDERECO da tabela Fornecedor quando o código do fornecedor for 1, 2 ou 3)
SELECT NOME, ENDERECO FROM FORNECEDOR
WHERE ID  IN (1,2,3)

SELECT NOME, ENDERECO FROM FORNECEDOR
WHERE ID  = 1 OR ID  = 2 OR ID  = 3 

SELECT NOME, ENDERECO FROM FORNECEDOR
WHERE ID  <= 3

--5) Listar todos os campos da tabela EMBALAGEM
SELECT * FROM EMBALAGEM
--6) Listar o CPF, nome e o endereço dos clientes da tabela CLIENTES quando o SEXO for Masculino.
SELECT CPF, NOME, ENDERECO, SEXO FROM CLIENTE
WHERE SEXO LIKE 'F'
--7) Listar o nome, endereço e telefone dos clientes da tabela CLIENTES quando o e-mail for do HOTMAIL.
SELECT NOME, ENDERECO, 
TELEFONE,EMAIL FROM CLIENTE
WHERE EMAIL LIKE '%.COM%'

SELECT NOME, ENDERECO, 
TELEFONE,EMAIL FROM CLIENTE
WHERE EMAIL LIKE ''

--8) Listar Toda a tabela de PEDIDOS
SELECT * FROM PEDIDO

--9) Listar o código do pedido da tabela PEDIDOS quando o código do CLIENTE for igual a 1001.
SELECT * FROM PEDIDO
WHERE CLIENTE_ID = 1001
--10) Listar Toda a tabela de pedidos quando cliente for 1018.
SELECT * FROM PEDIDO
WHERE CLIENTE_ID = 1018
--11) Listar todos os dados dos Cliente que possuem sobrenome SOUZA.
SELECT * FROM CLIENTE
WHERE NOME LIKE '%SOUZA%'
--12) Listar O nome, endereço e sexo dos Cliente que não possuem e-mail.
SELECT NOME, ENDERECO, SEXO, EMAIL FROM CLIENTE
WHERE EMAIL = ''
--13) Listar todas os dados da tabela produto quando o produto for um Condicionador para cabelos secos.
SELECT * FROM PRODUTO
WHERE NOME LIKE '%CONDICIONADOR PARA CABELO SECOS%'

--14) Listar o codigo,nome e valor unitario dos produtos do fornecedor 6. 
SELECT * FROM PRODUTO
WHERE FORNECEDOR_ID = 6 



--15) Listar todos os Produtos e dar desconto de 10% no preco do Produto.

SELECT *,(PRECO*0.90) 
AS PRECO_NEW FROM PRODUTO

