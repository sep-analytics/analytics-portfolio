### **💊 Drug Sales Performance Analysis**  
📍 **Location:** Coastal City *(Simulated Case Study)*  
🛠 **Tools Used:** Power BI  
📊 **Analysis Type:** Healthcare Business Intelligence & Sales Analytics  

----


## **📂 Data Sourcing & Structure**

### **Data Source**
- **Provider:** Maven Analytics  
- **Project Type:** Simulated Healthcare Sales Case Study  
---
### **Time Period**
- **2022 – 2023**  
- **Total Duration:** 2 Years  
---

### **Dataset Overview**
The dataset consists of the following structured tables:
- **Fact Table** – Transaction-level sales data  
- **Drug Lookup Table** – Drug details and classification  
- **Customer Table** – Customer demographic and geographic information  
---

### **Data Quality Notes**
- The dataset contained **no null values** and no observable data entry errors.  
- Data was reviewed and validated for consistency prior to aggregation and performance analysis.  
- Structural integrity between fact and dimension tables was confirmed before dashboard development.

  ## **🗂 Data Modeling**
  
The data model was structured using a **star schema design** to ensure optimized performance, clean relationships, and scalable analytical reporting within Power BI.
---
### **⭐ Star Schema Architecture**
The model consists of one central fact table connected to multiple dimension tables:
- **Fact Table:** Sales  
- **Dimension Tables:** Drug Lookup, Customer, Calendar  
This structure enables efficient aggregation, filtering, and slicing across multiple business dimensions.

![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/data_model.png)
---
### **📌 Fact Table: Sales**
Contains transaction-level data.
**Fields:**
- `sales_id`
- `drug_id`
- `customer_id`
- `units_sold`
- `sale_date`
- `buyer_type` *(User / Seller)*

  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/pquery_facts.png)
This table serves as the central performance measurement table.
---
### **📌 Dimension Table: Drug Lookup**
Contains product-level information.
**Fields:**
- `drug_id`
- `regulatory_compliance_id`
- `drug_name`
- `unit_sales_price`
- `cost_of_production`
Used for revenue, cost, and profit calculations.

![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/pquery_drugs.png)
---
### **📌 Dimension Table: Customer**
Contains customer demographic and geographic attributes.
**Fields:**
- `customer_id`
- `name`
- `age`
- `gender`
- `country`
- `age_group` *(Derived column created in Power Query)*
The `age_group` column was generated using conditional logic to enable demographic segmentation.

![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/customer_pquery.png)
---
### **📌 Dimension Table: Calendar**
Derived from the `sale_date` field to enable time intelligence analysis.
**Fields:**
- `date`
- `year`
- `month`
- `month_number`
- `weekday`
- `quarter`
This table supports trend analysis, time comparisons, and period-over-period performance evaluation.
---
### **🔗 Relationships**
The model follows a **one-to-many relationship structure**:
- `Drug Lookup (1)` → `Sales (Many)` via `drug_id`
- `Customer (1)` → `Sales (Many)` via `customer_id`
- `Calendar (1)` → `Sales (Many)` via `sale_date`
All relationships are configured with single-direction filtering from dimension tables to the fact table to maintain model integrity and avoid ambiguity.
---
### **📐 Modeling Strategy**
- Star schema implemented for optimal query performance
- Dimension tables used for slicing and filtering
- Fact table used strictly for numeric aggregation
- Derived columns created in Power Query to enhance analytical segmentation
- Time intelligence enabled through a dedicated calendar table
---
### **📊 Measures**
### **📊 Core Business Measures (DAX Definitions)**
- **Total Revenue**  
  Total sales generated, calculated as *Units Sold × Unit Sales Price*.
  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/measure_revenue.png)

- **Total Cost (COGS)**  
  Total production cost associated with sold units, calculated as *Units Sold × Cost of Production*.
  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/measures_cogs.png)

- **Total Profit**  
  Net earnings generated from sales, calculated as *Total Revenue − Total Cost*.
  
  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/profit_measure.png)

- **Profit Margin**
-   
  Percentage of revenue retained as profit, calculated as *(Total Profit ÷ Total Revenue)*.
  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/profit_margin.png)

- **Total Units Sold**
- 
  Total quantity of drugs sold across all transactions.
  
  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/measure_quantiysold.png)

- **Transaction Count**  
  Total number of sales transactions recorded.
  
  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/measure_transactions.png)

- **Month-over-Month (MoM) Revenue Change**  
  Percentage change in revenue compared to the previous month.
  
  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/mom_cahnge.png)

- **Contribution %**  
  The percentage share of revenue contributed by a specific country, customer, or segment relative to total revenue

  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/age_group.png)

  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/Drug-sales-Analysis/images/top2_country.png)

  ## **🎯 Business Problem**

The pharmaceutical sales organization lacked a centralized and structured performance monitoring system to evaluate revenue trends, product performance, and customer behavior across multiple regions and time periods.
Although transactional sales data was available, there was no integrated analytical framework to:
- Track overall sales performance and profitability
- Identify top- and underperforming drugs
- Evaluate customer contribution and demographic revenue distribution
- Monitor month-over-month revenue changes
- Analyze geographic sales concentration
- Understand transaction and weekday sales behavior
Without an interactive reporting solution, decision-making was largely reactive, limiting the organization’s ability to optimize revenue, improve customer targeting, and monitor operational performance effectively.

To address these challenges, a multi-dashboard Power BI solution was developed to transform raw sales data into structured, actionable business intelligence.

## **📊 Project Objectives**

The primary objective of this project is to design and implement a structured business intelligence solution that transforms raw pharmaceutical sales data into actionable insights for performance monitoring and strategic decision-making.

Specifically, the project aims to:

- Develop an interactive Power BI dashboard system for monitoring revenue, cost, profit, and margin performance.
- Identify top- and bottom-performing drugs and customers using dynamic contribution analysis.
- Analyze customer demographics and geographic distribution to support targeted sales strategies.
- Evaluate revenue concentration across products and regions to assess dependency risk.
- Monitor yearly, quarterly, monthly, and weekday sales trends to detect performance patterns.
- Enable month-over-month revenue comparison to support continuous performance tracking.
- Establish a scalable star-schema data model optimized for analytical efficiency and future expansion.

Overall, the objective is to enhance data visibility, improve analytical accuracy, and provide a centralized reporting framework that supports proactive business decisions.  


