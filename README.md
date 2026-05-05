# Bengaluru Restaurant Intelligence — Zomato EDA

Exploratory data analysis of 41,000+ Bengaluru restaurants to understand 
what separates highly-rated restaurants from poorly-rated ones.

**Tools:** Python · Pandas · Seaborn · Matplotlib · SQLite · Power BI

---

## The Question

What actually drives restaurant ratings in Bengaluru — is it online ordering, 
price, location, or something else entirely?

---

## Key Findings

1. **Table booking > Online ordering** — Restaurants offering table booking 
   maintained a median rating of ~4.1 regardless of online ordering status. 
   Table booking is the stronger quality signal.

2. **Higher price = higher rating, no exceptions** — Premium (₹1001–2000) 
   restaurants averaged 4.13 vs Budget at 3.57. The expected mid-range sweet 
   spot does not exist in this data.

3. **Koramangala is Bengaluru's food hub** — Appears three times in the top 10 
   locations. Lavelle Road is the most well-rounded: 4.19 avg rating, 2111 avg 
   votes, 446 restaurants.

4. **Underserved markets exist** — Bommanahalli and Old Madras Road show low 
   ratings despite moderate demand, representing clear opportunity zones.

5. **Online ordering effect is context-dependent** — Cafes and Delivery 
   restaurants benefit most; Dessert Parlors show almost no difference.

---

## Dashboard

<img width="1314" height="723" alt="Screenshot 2026-05-05 173052" src="https://github.com/user-attachments/assets/15f746f0-9c02-426a-adb0-284017eeaad6" />


---

## Project Structure
├── eda.ipynb       # Main analysis notebook
├── sql_queries.sql        # SQL aggregation queries
├── data/
│   └── zomato.csv         # Raw dataset
└── images/
└── dashboard.png      # Power BI dashboard
---
---

## How to Run

```bash
git clone https://github.com/shkamna/zomato-eda
cd zomato-eda
jupyter notebook zomato_eda.ipynb
```

---

## Dataset

Zomato Bengaluru Restaurants — [Kaggle](https://www.kaggle.com/datasets/himanshupoddar/zomato-bangalore-restaurants)  
~51,000 rows · Collected circa 2019

---

## Limitations

- Dataset is from 2019 — post-pandemic delivery dynamics not captured
- Ratings are self-reported on Zomato, introducing platform bias
- `dish_liked` column unusable due to 55% null values and free text format
- Review text analysis (NLP) left for future work
