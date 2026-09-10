# 📊 Sales Analysis Dashboard

## 📌 Project Overview

Sales Analysis Dashboard is a data analytics project built using **MySQL and Tableau Public** to analyze sales performance, profitability, quantity, orders, customers, regions, categories, segments, and top-performing products.

The project analyzes **10,000+ sales records** and transforms raw sales data into meaningful business insights using SQL queries and interactive Tableau dashboards.

---

## 🛠️ Technologies Used

- **MySQL** – Data storage, cleaning and SQL analysis
- **Tableau Public** – Data visualization and dashboard development
- **SQL** – Business analysis and data aggregation
- **Excel / CSV** – Dataset
- **GitHub** – Project documentation and version control

---

## 📂 Dataset

The dataset contains **10,000+ sales records** with information related to:

- Orders
- Customers
- Products
- Sales
- Profit
- Quantity
- Regions
- Categories
- Sub-Categories
- Segments
- Order and Ship Dates

Dataset file: `projectData.csv`

---

## 🔍 SQL Analysis

MySQL was used to perform analysis such as:

- Total Sales
- Total Profit
- Total Quantity Sold
- Total Orders
- Total Customers
- Total Products
- Region-wise Sales and Profit
- Category-wise Sales and Profit
- Sub-Category Analysis
- Segment Analysis
- Monthly Sales Trends
- Top 10 Products by Sales
- Top 10 Products by Profit
- Bottom 10 Products by Profit
- Customer-wise Sales Analysis

SQL queries used in the project are available in:

`sql_queries.sql`

---

## 📊 Tableau Dashboard

The Tableau dashboard provides interactive visualizations for:

- 📈 Sales Trends
- 💰 Profit Analysis
- 📦 Quantity Analysis
- 🌎 Regional Performance
- 🏷️ Category & Sub-Category Analysis
- 👥 Segment Performance
- 🏆 Top-Performing Products
- 📋 KPI Cards

### Tableau Workbook

`Sales_Analysis_Dashboard_V1.twb`

---

## 💡 Key Business Insights

The dashboard helps identify:

- High-performing regions
- Most profitable product categories
- Top-selling products
- Most profitable products
- Sales trends over time
- Segment-wise performance
- Products generating low or negative profit

These insights can help businesses understand sales performance and make data-driven decisions.

---

## 🚀 How to Use

### MySQL

1. Create a database named `sales_analysis`.
2. Import `projectData.csv` into MySQL.
3. Create the `projectData` table.
4. Run the queries from `sql_queries.sql`.

### Tableau

1. Open Tableau Public.
2. Connect the dataset / MySQL database.
3. Load the required fields.
4. Open or recreate the dashboard using the provided Tableau workbook.

---

## 📁 Project Structure

```text
Sales-Analysis-Dashboard/
│
├── README.md
├── projectData.csv
├── Sales_Analysis_Dashboard_V1.twb
└── sql_queries.sql
