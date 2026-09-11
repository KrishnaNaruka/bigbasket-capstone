# BigBasket Category Performance — Data Story

Using the fixed Part 1 SQL diagnostic, BigBasket generated **INR 88,282** in Delivered revenue across 434 delivered orders from January through June 2026.

## Category status

| Category | Revenue (INR) | Target (INR) | Variance: Target - Revenue | % Variance | Status |
|---|---:|---:|---:|---:|---|
| Household Essentials | 21,715 | 17,000 | -4,715 | +27.74% | Above Target |
| Personal Care | 16,382 | 15,500 | -882 | +5.69% | Above Target |
| Bakery | 15,410 | 12,000 | -3,410 | +28.42% | Above Target |
| Dairy & Eggs | 14,090 | 16,500 | 2,410 | -14.61% | Below Target - Watch |
| Snacks & Beverages | 10,895 | 13,000 | 2,105 | -16.19% | Below Target - Critical |
| Fruits & Vegetables | 9,790 | 12,000 | 2,210 | -18.42% | Below Target - Critical |

## Two concrete recommendations

1. **Prioritise investment in Household Essentials.** It is the top category at INR 21,715, exceeding its INR 17,000 target by INR 4,715 (27.74%). The category is therefore the strongest evidence for protecting and scaling an already-performing area.
2. **Review the Snacks & Beverages category assortment/marketing.** It is INR 2,105 below its INR 13,000 target (16.19%), putting it in the Critical tier. The category team should investigate assortment, supplier performance and promotion effectiveness before increasing spend broadly.

## Python cross-validation note

The independently cleaned Pandas analysis should reach the same leading category and supplier direction as SQL: **Household Essentials** is the top category and **HomeEssentials Traders** is the top supplier by Delivered revenue. Because Part 4 deliberately cleans a messy export and caps extreme values, exact rupee totals can differ from Part 1.
