# Computer Sales Capstone Project

The project is completed as data engineering capstone project , focusing on exploring sales performance, customer behavior, and product trends using sql  and power BI.

## Project Overview

The goal of this project is to analyze computer sales data to extract actionable insights, such as:

- Overall sales performance over time.
- Top-performing products, brands, and categories.
- Customer purchase behavior and key segments.
- Factors that drive higher revenue or profit.

The project demonstrates the full data analysis lifecycle: ETL,Data Modelling, data cleaning, exploratory data analysis (EDA), visualization, and insight generation.

## Dataset

Describe your dataset here:

- **Source**: Brightlearn tutorials data set
- **File(s)**: e.g. `computer_sales.csv`
- - **Key columns:
  - `Order_ID`
  - `Order_Date`
  - `Customer_ID`
  - `Region`
  - `Product`
  - `Category`
  - `Brand`
  - `Quantity`
  - `Unit_Price`
  - `Total_Sales`
  - `Profit`

You can also mention any preprocessing you did, such as handling missing values, converting data types, or creating new features (e.g. `Year`, `Month`, `Profit_Margin`).
Data nomalisation , data modeling 


## 📊 Star Schema Diagram
Here’s the star schema used for the Computer Sales Capstone project:

![Star Schema](diagrams/star_schema.png)

---

## 📸 Screenshots
Below are sample dashboards and reports generated from the sales data: 

![Dashboard](screenshots/dashboard.png)
![Sales Report](screenshots/sales_report.png)


## Repository Structure

computer_sales_capstone_final/
├─ data/
│  ├─ raw/
│  └─ processed/
├─ scripts/
│  ├─ Dim tables
│  ├─ fact tables 
│  └─ Procedures
├─ reports/
│  └─ power bi
├─ README.md
└─ requirements.txt

---
## Technologies Used
---

- **Language**: SQL 
- **Data manipulation**: SQL , Excel 
- **Visualization**: Power BI 
- **Star Schema **: Data Modelling
- 
---
## Analysis and Key Steps
---
1. **Data Loading and Cleaning**
   - Loaded sales data from CSV/Excel.
   - Handled missing values and duplicates.
   - Created new features (e.g. year, month, profit, profit margin).

2. **Data Modelling **
    *Dim Tables* 
   - Highlighted the Dim tables from the csv data set 
   - Highlighted the dim tables and separated them 
   - highlighted the fact table
   - 
    *Star Shema*
   - Loaded the dim tables on Drawio 
   - Created the Primary keys and the foreign keys  
   - linked the tables to form the relationships between dim tables and fact table
     
    *SSMS*
   - Created a database for the dirty data and the Staging Data 
   - Used staged data to create dim tables and fact table   
   - Inserted values into the dim tables
   - Create procedures and views  

     *Data Cleaning*
   - Validated NULL values  
   - Removed duplicates using DISTINCT 
   - Inserted values into the dim tables
   - Used DROP clause to be able to update values   
     
4. **Future Objective Exploratory Data Analysis (EDA)**
   - Pipeline automation
   - Automate data indegention
   - Create Power BI Visualisation 
   - Analyzed sales over time (daily, monthly, yearly).
   - Identified top products, categories, and brands by revenue and quantity.
   - Examined regional performance and customer segments.
   - Visualized distributions and relationships (e.g. price vs quantity, category vs profit).

2. **Modeling **
    git status
    git add README.md path/to/your/schema.png
    git commit -m "Add database schema diagram to README"
    git push origin main   # or 'master' or whatever your main branch is

5. **Insights and Recommendations**
   - List 3–6 key findings that a business could act on.
   - Example (replace with your real results):
     - Laptops contributed the highest revenue, especially in the corporate segment.
     - Sales peak in Q4, suggesting seasonal campaigns are effective.
     - Region X underperforms despite high customer counts, indicating pricing or marketing issues.
---
## Results
---
Summarize the most important outcomes of your project:

- Overall revenue and profit levels.
- Best- and worst-performing products or categories.
- Notable trends over time (e.g. growth, seasonality).
- Any models built and their performance.

## Limitations and Future Work

Mention any constraints and possible improvements:

- Data limitations (time span, missing fields, quality issues).
- Additional features you would like to engineer.
- More advanced models or forecasting approaches you would explore.
- Dashboards or deployment ideas (e.g. Streamlit, Power BI, Tableau).
  
---
## Contact
---
Created by **Gopolang Manyane**.

- GitHub: [@gopsmanyane45](https://github.com/gopsmanyane45)
- Location: Durban, KwaZulu-Natal, South Africa

Feel free to open an issue or submit a pull request if you have suggestions or improvements.
```
