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

![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/backend_analysis2.png)

---
**Data Referencing**
- Used **INDEX/MATCH** functions to reference and extract specific data points across tables

![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/backend_analysis4.png)

---
**Heatmap Construction**
- Built a separate array as the data foundation
- Applied **Conditional Formatting** to visualise collision concentration across time interval

 ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/backend_analysis3.png) 

   
## 📊 Dashboard Overview

![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/dashboard_nyc.png)

![](https://github.com/sep-analytics/analytics-portfolio/blob/main/nyc-collision-risk-analysis/images/brooklyn_nyc.png)

The dashboard is a single-page interactive report filterable by **Borough** across
Bronx, Brooklyn, Manhattan, Queens, Staten Island, and Unspecified.

It is structured around **6 key components:**
1. **KPI Cards** — Headline metrics displaying Total Collisions *(238,421)*,
   Total Fatalities *(635)*, and Total Injuries *(116,226)*
2. **Collision Peaks Trend** — Line chart showing monthly collision patterns,
   highlighting that peaks consistently occur in **Early Summer** across all years
3. **Year-Over-Year Decline** — Bar chart summarising YoY collision changes,
   showing a **6.1% drop in 2022** and a **76.8% drop in 2023** *(partial year)*
4. **Key Behaviors Driving Collision Risk** — Table ranking contributing factors
   by total collisions and fatality risk percentage, with **Driver
   Inattention/Distraction** and **Unspecified** leading in volume


## 💡 Insights & Recommendations

### 1. 📅 Collision Peaks by Year & Month

**Insight:**
| Year | Peak Month | Total Collisions |
|------|------------|-----------------|
| 2021 | June 🔴 | 10,608 |
| 2022 | June 🟡 | 9,471 |
| 2023 | March 🟠 | 7,981 |

**Interpretation:**
Collision volumes consistently peak in the **early summer months**, with June
recording the highest incident volumes in both 2021 and 2022. The 2023 peak
shifted to March, likely reflecting the impact of partial-year data *(Jan–Mar)*.
The recurring June pattern suggests a **seasonal behavioural trend**--likely
driven by increased road activity, longer daylight hours, and higher pedestrian
and cyclist presence during warmer months.

**Strategic Recommendations:**
> 🚨 Deploy **targeted enforcement operations** between April and June annually
> to get ahead of seasonal collision spikes before they peak.

> 📢 Launch **pre-summer public awareness campaigns** in March/April focused on
> safe driving, pedestrian visibility, and cyclist road-sharing rules.

> 🚦 Increase **traffic personnel presence** and signal optimisation at
> high-frequency intersections during the April–June window.

> 📊 Establish a **seasonal collision monitoring dashboard** to track
> real-time trends during peak months and enable rapid response deployment.

### 2. 🚗 Collision Risk Drivers

**Insight:**
| Category | Leading Factor | Value |
|----------|---------------|-------|
| Total Collisions | Unspecified | 59,549 Collisions |
| Collision Fatalities | Failure to Yield Right-of-Way | 63.68% Dangerous Collisions |

**Interpretation:**
The dominance of **Unspecified** as the leading collision contributor signals a
critical **data capture gap**--a significant volume of collisions are being
recorded without a identified cause. This undermines the ability of authorities
to take precise, targeted action.

More critically, **Failure to Yield Right-of-Way** emerges as the deadliest
driving behaviour, responsible for nearly **64% of dangerous collisions**.
This pattern points to a widespread disregard for intersection rules, making
it the single most life-threatening factor across NYC roads.

**Strategic Recommendations:**
> 📌 Deploy **targeted enforcement operations** at high-risk intersections,
> with a specific focus on right-of-way violations which are strongly
> associated with fatal outcomes.

> 📢 Launch **public awareness campaigns** educating drivers on right-of-way
> rules, intersection etiquette, and the fatal consequences of non-compliance.

> 🚦 Invest in **intersection infrastructure improvements** such as clearer
> road markings, signage, and signal timing adjustments at locations with
> high right-of-way violation rates.

> 📋 Address the **Unspecified data gap** by standardising collision reporting
> procedures--ensuring officers capture contributing factors at every incident
> to improve future analysis accuracy and policy targeting.

### 3. 🗺️ Collision Hotspots by Time & Day

**Insight:**
- 🔴 **Highest Risk Time Interval:** 4PM – 8PM across all days
- 🔴 **Highest Risk Day:** Friday *(37,496 Collisions)*

**Interpretation:**
The **4PM–8PM** window consistently records the highest collision volume across
the week, aligning directly with the **evening rush hour**--a period marked by
peak road congestion, driver fatigue after long work hours, and reduced
visibility as daylight fades.

Fridays amplify this risk further, recording the single highest collision count
of any day. This is likely driven by a convergence of factors--**end-of-week
traffic surges**, increased social activity, and what can best be described as
the **"urban frenzy"** effect--a heightened state of road aggression,
impatience, and distraction as commuters and city dwellers rush to transition
from the work week into the weekend.

**Strategic Recommendations:**
> 🚔 Increase **traffic patrol deployment** during the 4PM–8PM window,
> with heightened presence on Fridays at known congestion points.

> 🚦 Implement **adaptive traffic signal controls** during peak evening hours
> to improve traffic flow and reduce stop-start congestion that elevates
> collision risk.

> 📢 Run targeted **"Friday Drive Safe"** awareness campaigns across
> digital platforms and transit media to remind commuters of elevated
> risk before the weekend rush begins.

> 🏙️ Collaborate with city planners to explore **staggered work hour
> policies** to distribute evening traffic load and reduce the
> concentration of vehicles during the 4PM–8PM peak.
