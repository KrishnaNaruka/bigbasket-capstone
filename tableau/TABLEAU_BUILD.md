# Tableau Public Build Guide

Use `data/monthly_category_revenue.csv` as the only data source.

## Required views
1. **Monthly Revenue Trend**
   - Columns: `month`
   - Rows: `SUM(total_revenue)`
   - Category on Color
   - Jan–Jun 2026

2. **Category Revenue vs Target**
   - Category on Rows
   - `SUM(total_revenue)` on Columns
   - Sort descending
   - Color by the 3-tier target classification from Part 2

3. **KPI cards**
   - Total Revenue = `SUM(total_revenue)` = INR 88,282
   - Total Orders = `SUM(order_count)` = 434
   - Average Order Value = `SUM(total_revenue) / SUM(order_count)` = INR 203.42 (approx.)
   - Categories Meeting Target = 2 of 6

4. **Dashboard interaction**
   - Add at least one filter action, such as Category, that filters the whole dashboard.
   - Keep a visible legend for the 3-tier classification.

The live Tableau Public URL must be added to `README.md` after publishing from the user's Tableau Public account.
