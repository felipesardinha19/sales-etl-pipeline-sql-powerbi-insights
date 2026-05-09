SELECT 
    ID_PEDIDO,
    CAST(data as date) data_venda,
    loja,
    produto,
    preco_unitario,
    qtd,
    cliente
FROM Vendas