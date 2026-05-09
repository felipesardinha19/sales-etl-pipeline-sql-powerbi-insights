WITH datas AS(

	SELECT DISTINCT
		data_venda
	FROM {{ ref('stg_vendas') }}
)
SELECT
	ROW_NUMBER() OVER (ORDER BY data_venda) AS id_data,
	data_venda
FROM datas