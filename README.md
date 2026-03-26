# Indian E-Commerce Sales Analysis

## Objective
Analyse 128,000+ Indian e-commerce orders to identify revenue drivers,
regional growth opportunities, and operational inefficiencies.

## Tools
SQL (SQL Server) | Python (Pandas, Seaborn, Matplotlib) |Power BI

## Key Findings
- Top 3 states (Maharashtra, Karnataka, Telengana) contribute 39% of revenue
- Tier-2/3 Cities account for 63.59% of total revenue — significant untapped market
- B2B avg order value is 40 higher than B2C
- Top three highest revenue by category are set, kurta and western dress
- Bottom category has highest cancellation rate at 10 % — ₹15214.98 in lost revenue
- Sales spike in April- May accounts for 68% of the revenue

## Links
Kaggle Notebook : https://www.kaggle.com/code/danielkazingmei/e-commerce-sale-analysis

Power BI Service: https://app.powerbi.com/groups/me/reports/5c480b71-639f-4794-839d-5c4425b8dd10?ctid=4f87dca7-95ce-4b47-961d-12d2f85ba28a&pbi_source=linkShare&bookmarkGuid=6713f444-d7b5-4a4d-9db8-5bcb85c2a26b

## SQL Queries Included
| File | Description |
|------|-------------|
|Power Bi|National Overview report, category and product performance Analysis|
| 01_revenue_by_state.sql | Revenue and order share by Indian state |
| 02_monthly_trend.sql | Monthly revenue with running total |
| 03_MoM Growth.sql | MoM growth percentage
| 04_b2b_vs_b2c.sql | B2B vs B2C CTE comparison |
| 05_cancellation_by_category.sql | Cancellation rate and lost revenue |
| 06_top_city_per_state.sql | Top cities ranked within each state 
