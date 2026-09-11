# BigBasket Category Performance Diagnostic

A connected four-part analytics capstone using SQLite/SQL, Google Sheets/Excel, Tableau Public and Python/Pandas.

## Project overview

The project evaluates BigBasket-style category performance against fixed monthly targets. Part 1 generates a deterministic SQLite database and produces the canonical monthly category revenue export. Part 2 rebuilds category totals in a spreadsheet and reconciles them to SQL. Part 3 turns the same CSV into a Tableau Public dashboard and data story. Part 4 independently cleans the deliberately messy raw export in Pandas and cross-validates the leading category and supplier.

## Repository structure

- `generate_data.py` — exact deterministic data-generation script.
- `bigbasket_capstone.db` — SQLite database used for Parts 1–3.
- `orders_raw.csv` — deliberately messy Part 4 input.
- `products.csv` — product lookup used by Part 4.
- `data/` — copies of the generated raw data and canonical monthly export.
- `sql/01_foundations.sql` — foundational SELECT/WHERE/DISTINCT/ORDER BY/LIMIT/AS/IN/BETWEEN/NOT BETWEEN/IS NULL queries.
- `sql/02_aggregation_joins.sql` — INNER JOIN/HAVING and LEFT JOIN product diagnostics.
- `sql/03_reporting.sql` — product tiering, monthly report and target variance diagnostics.
- `sql/04_export_monthly.sql` — exact canonical export query.
- `verify-sql.txt` — generated-data verification results.
- `sheets/BigBasket_Performance.xlsx` — spreadsheet cross-check workbook.
- `python/analysis.ipynb` — Pandas cleaning, IQR capping, analysis, charts and cross-validation.
- `tableau/TABLEAU_BUILD.md` — Tableau Public build specification.
- `DATA_STORY.md` — dashboard data story.
- `ai_log.md` — RCTCF AI-assisted prompting log.

## Regenerate data

From the repository root:

```bash
python3 generate_data.py
```

Do not change the seed, fixed lists or weights. The generated database and raw exports are deterministic.

## Canonical Part 1 result

`monthly_category_revenue.csv` is the direct, unedited export of the Task 5(b) query in `sql/03_reporting.sql`. It has 36 data rows and a grand total Delivered revenue of INR 88,282.

## Tableau Public

**Live dashboard:** `https://public.tableau.com/views/BigBasket_Category_Revenue_Dashboard/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link`


## Data story

See [`DATA_STORY.md`](DATA_STORY.md).

## AI log

See [`ai_log.md`](ai_log.md).

## Part 4 notebook

See [`python/analysis.ipynb`](python/analysis.ipynb).
