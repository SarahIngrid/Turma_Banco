SELECT 
PRODUTO.NOME,
PRECO,
FORNECEDOR.NOME,
CNPJ
FROM PRODUTO INNER JOIN FORNECEDOR
ON FORNECEDOR.ID = PRODUTO.FORNECEDOR_ID

SELECT * FROM PRODUTO