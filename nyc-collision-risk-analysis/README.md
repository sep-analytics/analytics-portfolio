# 🚓 New York City Collision Risk Analysis
-📍 **Location:** New York City

-🛠 **Tools Used:** Microsoft Excel

-📅 **Data Period:** [2 years]

-📊 **Type:** Urban Traffic Safety Analytics

## 📦 Data Source

**Source:** Public Dataset — [Maven Analytics](https://mavenanalytics.io/)

**Dataset Overview:**
Single dataset containing multiple columns including `Collision ID`, `Date`, `Borough`,
`Street Name`, and `Contributing Factor` among others.

**Data Quality Notes:**
- Blank cells were replaced with `"Unspecified"` as advised by the stakeholder
- Columns irrelevant to the analysis (`Longitude`, `Latitude`) were removed
- Ensured zero duplicate records by checking via Excel's **Remove Duplicates** 
  function under the *Data* tab, using `Collision ID` as the unique identifier

  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/Dirty_data.png)

  ## 🧹 Data Cleaning and Preparation

- Formatted the `Date` column to **Short Date** type
- Extracted **Day of Week** from the `Date` column
- Formatted the `Time` column to display as **HH:MM AM/PM**
- Grouped the `Time` column into **time-of-day intervals** using a conditional column
- Created a **Season** column categorizing each record into `Winter`, `Spring`, `Summer`, or `Autumn` based on the date
- Created a **Casualty Summary** column aggregating whether a `Cyclist`, `Motorist`, or `Pedestrian` was either injured or killed using `IF(OR)`
  
 ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/Transformed_dt.png)

 ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/transformed_dt2.png)

## ❗ Problem Statement

The **NYPD** (New york police department) is faced with a high volume of motor vehicle collision data across New York City,
making it difficult to identify clear patterns and take targeted action.
Between **2021 and March 2023**, NYC recorded:
- 🚨 **635 fatalities**
- 🤕 **116,226 injuries**
The sheer volume of data and lack of actionable insight makes it challenging for authorities
to effectively allocate resources, identify high-risk areas, and implement measures to reduce
collision rates across the city.

## 🎯 Project Objectives

1. Identify **temporal collision patterns** across hourly, daily, and seasonal dimensions
2. Pinpoint **high-risk boroughs and locations** with the highest collision frequency
3. Uncover the **primary contributing factors** responsible for accidents across the city
4. Analyse **casualty distribution** among cyclists, motorists, and pedestrians
5. Deliver **data-driven recommendations** to support the NYPD in reducing fatalities and injuries across New York City

## 🔍 Analysis Approach

The analysis was structured across the following dimensions:
1. **KPI Summary** — Surfaced high-level metrics including total collisions, persons injured, and fatalities
2. **Time-Based Trends** — Analysed collisions across years and months to identify temporal patterns
3. **Year-Over-Year Change** — Measured collision trend shifts between periods
4. **Contributing Factors** — Grouped and ranked the primary causes of collisions across the city
5. **Fatality Rate** — Assessed the severity of collisions relative to contributing factors
6. **Heatmap** — Visualised collision concentration to detect high-risk time intervals

---

## ⚙️ Methodology

**KPI Extraction**
- Used **Pivot Tables** *(SUM)* to calculate core KPIs — total collisions, injuries, and fatalities


---
**Time-Based Analysis**
- Grouped data by **year and month** using Pivot Tables to uncover time-based trends
- Applied an **Array Formula** to exclude the incomplete month of April as directed by the stakeholder
- Used the **MAX function** to identify peak collision months across the 2-year period
- Calculated **Year-Over-Year (YoY)** change to measure period-on-period collision trends

![](./https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/backend_analysis2.png)

---
**Data Referencing**
- Used **INDEX/MATCH** functions to reference and extract specific data points across tables

![](./https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/backend_analysis4.png)

---
**Heatmap Construction**
- Built a separate array as the data foundation
- Applied **Conditional Formatting** to visualise collision concentration across time intervals

![](./https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/backend_analysis3.png)

   
