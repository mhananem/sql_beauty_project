# Beauty Market Analysis
### Is Sephora a good launchpad for a beauty brand with global ambitions?

A data analysis project combining Sephora's product catalog with a global beauty consumer dataset to map market structure, consumer targeting, pricing dynamics, and ethical positioning.

---

## Project context

This project was built as part of a data analysis training program. The analysis is presented from the perspective of two researchers investigating whether Sephora accurately reflects the global beauty market and what that means for a brand looking to launch and expand in the EU market.

### Project presentation
https://docs.google.com/presentation/d/1LAG3IEvvtY3rd52WlLuxbaos3TKq7kmd/edit?usp=sharing&ouid=116785207806004174375&rtpof=true&sd=true

---

## Datasets

| Dataset | Source | Description |
|---|---|---|
| `product_info.csv` | [Sephora Products & Skincare Reviews — Kaggle](https://www.kaggle.com/datasets/nadyinky/sephora-products-and-skincare-reviews) | 8,000+ Sephora products with pricing, ratings, reviews, and product attributes |
| `most_used_beauty_cosmetics_products_extended.csv` | [Most Used Beauty Cosmetics Products — Kaggle](https://www.kaggle.com/datasets/waqi786/most-used-beauty-cosmetics-products-in-the-world) | Global beauty product usage data across countries, age groups, skin types, and gender |

---

## Business hypotheses

| # | Hypothesis | Dataset | Variables |
|---|---|---|---|
| H1 | The higher the price, the lower the rating | Both | price, rating |
| H2 | EU countries have more cruelty-free products than the rest of the world | Worldwide | country, cruelty_free, product count |
| H3 | Skincare accounts for more than 40% of Sephora's catalog | Sephora | category, product count |

## Analysis conclusions
![alt text](image.png)
---

## Project structure

```
beauty-analysis/
│
├── data/
│   ├── product_info.csv                              # Sephora raw data
│   └── most_used_beauty_cosmetics_products_extended.csv  # Worldwide raw data
│
├── notebooks/
│   └── cleaning.ipynb                                # Python data cleaning
│
├── sql/
│   ├── create_tables.sql                             # Table creation queries
│   └── analysis_queries.sql                          # Hypothesis queries
│
├── outputs/
│   └── beauty_analysis_erd.html                      # Entity relationship diagram
│
└── README.md
```

---

## Database schema

The project uses 4 analytical tables built on top of 2 raw tables loaded from Python.

![alt text](image-1.png)

---

## SQL concepts used

| Concept | Used in |
|---|---|
| `GROUP BY` | H1, H2, H3, H4, H5 |
| `JOIN` | H3 |
| Subqueries | H1, H2, H5 |
| `AVG`, `COUNT`, `SUM` | All hypotheses |

---

## Authors

- Valeria ACEVEDO
- Hanane MAMALIK
