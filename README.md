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
## Business Recommendations
- invest in Tier-2/3 city logistics — these cities drive 63.59% of revenue yet likely receive less operational investment     than metros. Improving last-mile delivery SLAs in Tier-2/3 cities could reduce their 67% share of cancellation losses     (₹46.2L of ₹69.17L total).
-  Pre-position inventory before April — revenue spikes 8.1x from December to April. Stocking up in February–March and        running retention campaigns in July to cushion the post-June cliff would stabilise annual revenue significantly.
-  Reduce cancellations in Set category — ₹34.7L in lost revenue at a 9.12% cancellation rate. Better size guides, product    photography, and faster delivery SLAs could recover ₹7–10L annually.
- Diversify beyond Set + Kurta — these two categories represent 77% of revenue. Growing Western Dress (₹11.2M, strong avg    order value) reduces concentration risk if trend shifts occur.
- Build a B2B acquisition channel — B2B average order value is 5–8% higher than B2C across all city tiers. A dedicated B2B   programme or bulk-order discounts could grow high-value orders without proportionally increasing fulfilment costs.

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
