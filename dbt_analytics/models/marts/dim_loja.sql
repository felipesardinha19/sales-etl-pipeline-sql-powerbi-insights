WITH lojas AS(

	SELECT DISTINCT
		loja
	FROM {{ ref('stg_vendas') }}
)
SELECT
	ROW_NUMBER() OVER (ORDER BY loja) AS id_loja,
	loja
FROM lojas