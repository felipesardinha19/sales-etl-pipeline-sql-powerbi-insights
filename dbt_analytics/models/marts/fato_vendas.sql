with vendas AS(

	SELECT *
	FROM {{ ref('stg_vendas') }}

)
SELECT 
	v.id_pedido,
	c.id_cliente,
	p.id_produto,
	l.id_loja,
	t.data_venda,
	t.id_data,
	v.qtd,
	v.preco_unitario,
	(v.qtd * v.preco_unitario) AS valor_total
FROM vendas v
LEFT JOIN {{ ref('dim_cliente') }} c
	ON c.cliente = v.cliente
LEFT JOIN {{ ref('dim_loja') }} l
	ON l.loja = v.loja
LEFT JOIN {{ ref('dim_produto') }} p
	ON p.produto = v.produto
LEFT JOIN {{ ref('dim_tempo') }} t
	ON t.data_venda = v.data_venda