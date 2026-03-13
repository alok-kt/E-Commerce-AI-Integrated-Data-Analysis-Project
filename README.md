
# 🛒 E-Commerce Data Analysis — AI-Assisted Analytics Portfolio Project

> An end-to-end data analysis project on a Brazilian e-commerce marketplace, built using a **modern AI-integrated workflow** combining SQL, Power BI, and AI co-workers (Gemini & ChatGPT).

---

## 📌 Project Overview

This project simulates a **real-world data analyst workflow** — from raw data ingestion to an executive-ready Power BI dashboard. The dataset represents a Brazilian online marketplace with over **100,000 orders** spanning 2016–2018.

What makes this project distinct is how AI tools were embedded as **active collaborators** throughout the pipeline — not just as search engines, but as domain-aware co-workers handling specific, high-effort tasks.

---

## 🤖 AI Co-Worker Integration

This is not a traditional project. AI was used **strategically and intentionally** across two high-value areas:

### 🔍 Dataset Inspection — Gemini
Before writing a single query, **Google Gemini** was used to inspect and understand the raw dataset:
- Analyzed table relationships and schema structure
- Surfaced hidden data quality issues (nulls, type mismatches, anomalies)
- Generated early business hypotheses from the raw data
- Helped define a cleaning strategy before touching SQL

> *Think of Gemini as the data steward who did the first pass — so the actual analysis could start from a place of clarity.*

### 🧠 Query Development — ChatGPT
**ChatGPT** was used as a query co-pilot across the SQL analysis phase:
- Translated business KPIs into SQL logic
- Helped structure multi-table JOIN logic for the analytics layer
- Reviewed and refined queries for correctness and efficiency
- Suggested edge cases to account for in aggregations

> *ChatGPT acted as a senior SQL reviewer sitting alongside — reducing trial-and-error and accelerating insight generation.*

### 📊 Visualization — Built Independently
All **Power BI dashboard design and visualization** was done independently — layout, chart selection, color design, and KPI storytelling were human decisions.

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| Excel / Google Sheets | Initial dataset exploration |
| PostgreSQL | Database management & layered architecture |
| SQL | Data cleaning, transformation, and analysis |
| Power BI | Dashboard & executive reporting |
| Google Gemini | Dataset inspection & data quality insights |
| ChatGPT | KPI-driven SQL query development |

---

## 🏗️ Data Pipeline Architecture

The project follows a **three-layer database architecture** to mimic industry-grade data engineering practices:

```
Raw Layer        →   Clean Layer        →   Analytics Layer   →   Dashboard View
(original data)      (cleaned & typed)       (order_analysis)      (dashboard_data)
```

**Raw Layer** — Imported dataset, no modifications.

**Clean Layer** — Applied data cleaning:
- Date/timestamp type conversions
- Missing value handling
- Removal of invalid records
- Field standardization

**Analytics Layer** — A unified `order_analysis` table created by joining all cleaned tables, serving as the single source of truth for all business queries.

**Dashboard View** — A filtered SQL view (`dashboard_data`) exposing only completed/delivered orders as the Power BI data source.

---

## 📊 Dataset

The dataset contains five relational tables:

| Table | Description |
|-------|-------------|
| `customers` | Customer location data |
| `orders` | Order status and delivery timestamps |
| `order_items` | Product-level pricing and shipping details |
| `products` | Product category and physical attributes |
| `payments` | Payment methods and transaction values |

---

## 📈 Key Business Insights

| Metric | Result |
|--------|--------|
| 💰 Total Revenue | ~R$ 16.1 Million |
| 📦 Total Completed Orders | ~96,000 |
| 🧾 Average Order Value | ~R$ 167 |
| 🚚 On-Time Delivery Rate | ~92% |
| 💳 Credit Card Share of Revenue | ~78% |

**Top Product Categories:** Beauty & Health · Watches & Gifts · Bed/Bath Products

**Geographic Concentration:** São Paulo · Rio de Janeiro · Minas Gerais

---

## 📋 SQL Analysis Areas

- **Revenue Analysis** — Total revenue by period and category
- **Order Volume Tracking** — Count of distinct completed orders
- **Average Order Value** — Per-order spend trends
- **Category Performance** — Revenue and volume by product category
- **Geographic Distribution** — Orders by customer state
- **Delivery Performance** — Estimated vs. actual delivery comparison
- **Payment Behavior** — Distribution of payment methods across transactions

---

## 📊 Power BI Dashboard

The dashboard was designed to give stakeholders an **executive-level snapshot** of business performance:

- **KPI Panel** — Total Revenue, Total Orders, Average Order Value
- **Revenue Trend** — Monthly revenue line chart across the full timeline
- **Top Categories** — Bar chart of highest revenue-generating product categories
- **Payment Distribution** — Donut chart of customer payment preferences
- **Delivery Performance** — On-time vs. delayed delivery breakdown

---

## 💼 Skills Demonstrated

- ✅ Layered database architecture (Raw → Clean → Analytics)
- ✅ SQL data cleaning and transformation
- ✅ KPI-driven analytical query writing
- ✅ Relational data modeling across multiple tables
- ✅ Business insight extraction from transactional data
- ✅ Executive dashboard design with Power BI
- ✅ **AI-integrated analytics workflow** (Gemini + ChatGPT as co-workers)

---

## 🧠 Reflections on AI-Assisted Analytics

This project was built on the belief that **the modern data analyst doesn't work alone**. AI tools, when used with intention, can:

- Cut dataset onboarding time significantly (Gemini for inspection)
- Reduce SQL iteration cycles (ChatGPT for query logic)
- Free up mental bandwidth for **higher-order thinking** — business interpretation, visualization decisions, and storytelling

AI was used here not as a shortcut, but as a **force multiplier** — the thinking, validation, and final judgment remained human throughout.

---

