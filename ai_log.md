# AI-Assisted Prompting Log

## Prompt #1 — RCTCF

**Role:** You are a SQL reviewer helping me debug a SQLite query for a BigBasket-style category performance diagnostic.

**Context:** The project uses `bigbasket_capstone.db`. The `orders` table contains order date, amount, status and product_id; `products` maps product_id to category. Only Delivered orders count toward revenue. The monthly category report will be reused by Sheets and Tableau, so the result must be deterministic and unmodified after export.

**Task:** Review a SQLite query that joins orders to products, groups by category and month, and calculates order_count, total_revenue and avg_revenue for Delivered orders only. Check the date extraction, aliases, grouping, ordering and aggregation logic.

**Constraints:** Use SQLite syntax (`strftime` rather than BigQuery `EXTRACT`), keep the required five output columns exactly as `category, month, order_count, total_revenue, avg_revenue`, do not change the dataset, and preserve floating-point averages.

**Format:** Return the corrected SQL query followed by a short explanation of each important clause and one verification check I should run.

### Verification actually performed
I ran the retained query against `bigbasket_capstone.db`, confirmed that it returns exactly 36 rows (6 categories × 6 months), and checked that the sum of `total_revenue` is exactly INR 88,282 and that the status filter is `Delivered`.

## Prompt #2 — RCTCF

A second RCTCF-structured prompt used for Part 4 is documented in the notebook and focuses on validating the IQR clipping logic. The concrete verification is recorded in the notebook: the capped rows are compared before/after clipping and the capped values are checked against the computed upper fence.
