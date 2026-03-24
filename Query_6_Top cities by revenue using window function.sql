WITH city_ranking AS(
	SELECT 
		City,
		State,
		CAST(
			SUM(Amount) AS DECIMAL(18,2)) AS city_revenue,
		COUNT(DISTINCT Order_ID) AS orders,
		RANK() OVER(
			PARTITION BY State
			ORDER BY SUM(Amount) DESC
			) AS rank_in_state
FROM [Indian E-Commerce].dbo.amazon_india
WHERE Amount > 0
GROUP BY [State], City
)
SELECT TOP (15)
	City,
	[STATE],
	city_revenue,
	orders,
	rank_in_state
FROM city_ranking
WHERE rank_in_state <=3
ORDER BY city_revenue DESC;