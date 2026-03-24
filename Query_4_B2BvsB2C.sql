WITH customer_segments AS(
	SELECT
		CASE WHEN B2B = 'TRUE' THEN 'B2B' ELSE  'B2C' END AS segment,
		Amount,
		Order_ID,
		State
	FROM [Indian E-Commerce].dbo.amazon_india
	WHERE Amount > 0
)
SELECT 
	segment,
	COUNT( DISTINCT Order_ID) AS total_order,
	CAST(SUM(Amount) AS DECIMAL(18, 2)) AS total_revenue,
	CAST (AVG(Amount) AS DECIMAL (18, 2)) AS avg_revenue,
	COUNT(DISTINCT State) AS state_covered
FROM customer_segments
GROUP BY segment
ORDER BY total_revenue DESC;