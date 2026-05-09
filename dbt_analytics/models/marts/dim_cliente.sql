WITH clientes AS(

	SELECT DISTINCT
		cliente
	FROM {{ ref('stg_vendas') }}
)
SELECT 
	ROW_NUMBER() OVER (ORDER BY cliente) AS id_cliente,
	cliente
FROM clientes