WITH produtos AS(

	SELECT DISTINCT
	produto,
	preco_unitario
	FROM {{ ref ('stg_vendas') }}
)
SELECT 
	ROW_NUMBER() OVER (ORDER BY produto) id_produto,
	produto,
	preco_unitario
FROM produtos