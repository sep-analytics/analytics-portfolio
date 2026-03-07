# 🚓 New York City Collision Risk Analysis
-📍 **Location:** New York City

-🛠 **Tools Used:** Microsoft Excel

-📅 **Data Period:** [2 years]

-📊 **Type:** Urban Traffic Safety Analytics

## 📦 Data Source & Structure

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
