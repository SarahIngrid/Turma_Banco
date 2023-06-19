SELECT 
FORNECEDOR.NOME,
FORNECEDOR.ENDERECO,
PRODUTO.NOME,
PRODUTO.PRECO
FROM PRODUTO  INNER JOIN FORNECEDOR 
ON PRODUTO.FORNECEDOR_ID = FORNECEDOR.ID

SELECT *
FROM PRODUTO INNER JOIN EMBALAGEM
ON PRODUTO.EMBALAGEM_ID = EMBALAGEM.ID

SELECT 
NOME,
ENDERECO,
CPF,
CONVERT(VARCHAR(50),DATA_PEDIDO,3) AS DT_PED
FROM PEDIDO INNER JOIN CLIENTE
ON PEDIDO.CLIENTE_ID = CLIENTE.ID





SELECT 
T2.NOME,
T1.NOME,
T1.PRECO,
T2.ENDERECO 
FROM PRODUTO T1,
FORNECEDOR T2
WHERE 
T1.FORNECEDOR_ID = T2.ID