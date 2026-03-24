SELECT
	Category,
	COUNT(*) AS total_orders,
	SUM(CASE WHEN LOWER(Status) LIKE '%cancelled%' THEN 1 ELSE 0 END) AS cancelled_orders,
	CAST(
		SUM(CASE WHEN LOWER(Status) LIKE '%cancelled%' THEN 1.0 ELSE 0.0 END) *100.00 /COUNT(*) AS DECIMAL(18,2)) AS cancellation_rate_pct,
	CAST(
		SUM(CASE WHEN LOWER(Status) LIKE '%cancelled%' THEN Amount  ELSE 0 END) AS DECIMAL(18,2)) AS lost_revenue
FROM [Indian E-Commerce].dbo.amazon_india
GROUP BY Category
ORDER BY cancellation_rate_pct DESC;