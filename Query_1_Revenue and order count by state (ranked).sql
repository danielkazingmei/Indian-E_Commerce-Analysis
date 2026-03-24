SELECT
	TOP 15
	State,
	COUNT(DISTINCT Order_ID) AS total_order,
	CAST(SUM(Amount) AS DECIMAL(18,2)) AS total_revenue,
	CAST(AVG(Amount) AS DECIMAL(18,2)) AS avg_revenue,
	CAST(
		SUM(Amount) *100 / SUM(SUM(Amount)) OVER()
		AS DECIMAL(18,2)) AS revenue_share_pct
FROM [Indian E-Commerce].dbo.amazon_india
WHERE Amount > 0
GROUP BY State
ORDER BY total_revenue DESC;