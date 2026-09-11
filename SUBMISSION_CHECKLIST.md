# Final Submission Checklist

- [ ] Replace the Tableau placeholder in `README.md` with the live public Tableau URL.
- [ ] Make the GitHub repository public.
- [ ] Confirm `bigbasket_capstone.db` opens and has 31 products, 50 customers, 500 orders and 6 targets.
- [ ] Confirm `monthly_category_revenue.csv` has exactly 36 data rows and columns `category,month,order_count,total_revenue,avg_revenue`.
- [ ] Confirm monthly CSV grand total is INR 88,282.
- [ ] Confirm the Tableau dashboard contains the required trend, category bar, 4 KPI cards, filter action and legend.
- [ ] Open `sheets/BigBasket_Performance.xlsx` and refresh/recalculate formulas if needed after import into Google Sheets/Excel.
- [ ] Run `python3 generate_data.py` from the repository root only if you need to regenerate the deterministic files.
- [ ] Run the Part 4 notebook from `python/` and confirm it reports 508 raw rows and 500 rows after duplicate removal.
- [ ] Confirm Part 4 reports exactly 4 cities, 6 categories, leaves missing revenue unfilled, caps IQR outliers with `clip()`, and contains at least 3 charts and exactly 3 What/Why/Next observations.
- [ ] Keep the AI verification sentences truthful to the checks you actually perform.
- [ ] Submit only the single public GitHub repository link to Masai.
