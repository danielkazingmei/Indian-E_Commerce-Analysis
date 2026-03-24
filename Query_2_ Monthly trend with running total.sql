WITH MonthlyData AS (
    SELECT 
        DATENAME(MONTH, CONVERT(DATE, [Date], 105)) AS month_name,
        MONTH(CONVERT(DATE, [Date], 105)) AS month_number,
        SUM(Amount) AS revenue,
        COUNT(DISTINCT Order_ID) AS orders
    FROM [Indian E-Commerce].dbo.amazon_india
    WHERE Amount > 0
    GROUP BY 
        DATENAME(MONTH, CONVERT(DATE, [Date], 105)), 
        MONTH(CONVERT(DATE, [Date], 105))
)
SELECT 
    month_name,
    CAST(revenue AS DECIMAL(18,2)) AS monthly_revenue,
    orders
FROM MonthlyData
ORDER BY month_number; 