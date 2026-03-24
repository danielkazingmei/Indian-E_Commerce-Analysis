
WITH MonthlyData AS (
    SELECT 
        MONTH(CONVERT(DATE, [Date], 105)) AS month_num,
        DATENAME(MONTH, CONVERT(DATE, [Date], 105)) AS month_name,
        SUM(Amount) AS current_revenue,
        COUNT(DISTINCT Order_ID) AS total_orders
    FROM [Indian E-Commerce].dbo.amazon_india
    WHERE Amount > 0
    GROUP BY 
        MONTH(CONVERT(DATE, [Date], 105)), 
        DATENAME(MONTH, CONVERT(DATE, [Date], 105))
),
GrowthCalc AS (
    SELECT 
        month_name,
        month_num,
        CAST(current_revenue AS DECIMAL(18,2)) AS monthly_revenue,
       
        LAG(current_revenue) OVER (ORDER BY month_num) AS previous_revenue,
        total_orders
    FROM MonthlyData
)
SELECT 
    month_name,
    monthly_revenue,
    total_orders,
    CAST(
        (monthly_revenue - previous_revenue) * 100.0 / NULLIF(previous_revenue, 0) 
    AS DECIMAL(18,2)) AS [MoM_Growth_%]
FROM GrowthCalc 
ORDER BY month_num;