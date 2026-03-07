# 🚓 New York City Collision Risk Analysis
-📍 **Location:** New York City

-🛠 **Tools Used:** Microsoft Excel

-📅 **Data Period:** [2 years]

-📊 **Type:** Urban Traffic Safety Analytics

## 📦 Data Source

**Source:** Public Dataset — [Maven Analytics](https://mavenanalytics.io/)

## 📋 Executive Summary

Between **2021 and March 2023**, New York City recorded **238,421 motor vehicle
collisions**, resulting in **116,226 injuries** and **635 fatalities**--
painting a stark picture of an urban road safety crisis demanding immediate,
data-driven intervention.

Collisions peak in **early summer**, with June consistently recording the
highest incident volumes, while **Fridays between 4PM–8PM** represent the
single most dangerous window on NYC roads -- a convergence of rush hour
pressure, traffic congestion, and end-of-week urban frenzy.

**Failure to Yield Right-of-Way** emerges as the deadliest driving behaviour,
responsible for nearly **64% of dangerous collisions**, while
**Driver Inattention/Distraction** leads in overall collision volume.
A significant data gap -- **59,549 unspecified collisions** -- further limits
the precision of targeted interventions.

Road-user analysis reveals a critical disparity — **Motorists dominate
injuries** *(81,428)*, yet **Pedestrians bear the highest fatality burden**
*(286 deaths)*, underscoring the urgent need for pedestrian-first
infrastructure investment across the city.

Seasonally, **Spring and Winter** represent the two highest-risk periods,
demanding pre-emptive enforcement and awareness campaigns before each
season peaks.

> 🎯 The data is clear -- NYC's collision crisis is not random. It is
> **predictable, seasonal, and behavioural.** Targeted enforcement,
> infrastructure investment, and proactive public awareness — deployed
> at the right time, in the right places — can meaningfully reduce
> fatalities and injuries across the city.

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

### 4. 🚶 Collision Severity by Road-User Type

**Insight:**
| Category | Road User | Value |
|----------|-----------|-------|
| Highest Injuries | Motorists | 81,428 |
| Highest Fatalities | Pedestrians | 286 |

**Interpretation:**
While **Motorists** account for the overwhelming majority of injuries, reflecting
their sheer volume on NYC roads, it is **Pedestrians** who bear the heaviest
fatality burden. This contrast is telling -- motorists benefit from the
protective shell of a vehicle, absorbing impact in ways that significantly
reduce fatal outcomes. Pedestrians, entirely exposed and vulnerable, face a
disproportionately higher risk of death when involved in a collision.

This divergence signals two distinct but equally urgent safety crises --
**large-scale injury prevention** among motorists, and **fatality prevention**
among pedestrians.

**Strategic Recommendations:**
> 🚶 Prioritise **pedestrian safety infrastructure** -- expanding crosswalks,
> improving street lighting, installing pedestrian refuge islands, and
> enforcing reduced speed limits in high foot-traffic areas.

> 🚗 Strengthen **motorist compliance** through stricter enforcement of
> traffic regulations, particularly targeting speeding, distracted driving,
> and failure to yield at pedestrian crossings.

> 📢 Launch **pedestrian awareness campaigns** in high-risk boroughs,
> educating both drivers and pedestrians on safe road-sharing practices.

> 🏙️ Invest in **road redesign initiatives** such as protected bike lanes,
> raised crosswalks, and traffic calming measures to physically reduce
> vehicle speeds in pedestrian-dense areas.

### 5. 🌦️ Seasonal Collision Distribution

**Insight:**
| Season | Total Collisions |
|--------|-----------------|
| 🌸 Spring | 64,028 *(Peak)* |
| ❄️ Winter | 61,179 |
| ☀️ Summer | 57,752 |
| 🍂 Autumn | 55,462 |

**Interpretation:**
**Spring** emerges as the highest-risk season with **64,028 collisions**,
driven by a surge in road activity as warmer weather returns — more vehicles,
cyclists, and pedestrians reclaiming the streets after winter. This increased
mobility, combined with roads that may still carry residual winter wear,
creates a perfect storm for elevated collision risk.

**Winter** follows closely at **61,179 collisions**, unsurprisingly fuelled by
hazardous road conditions — ice, reduced visibility, and unpredictable weather
events that compromise vehicle handling and driver reaction times.

The relatively lower figures in Summer and Autumn suggest that collision risk
is less about volume of activity and more about the **transition periods** —
moments when road users and infrastructure are adjusting to changing conditions.

**Strategic Recommendations:**
> 🌸 Deploy **targeted safety campaigns** in February/March ahead of the
> Spring season to prepare road users for the surge in mobility and
> elevated collision risk.

> 🚔 Increase **proactive enforcement operations** at the onset of Spring,
> particularly at intersections and pedestrian-heavy zones that see the
> sharpest activity increases.

> ❄️ Maintain **winter road safety protocols** — gritting, snow clearing,
> and reduced speed advisories — given Winter's close proximity to Spring
> in collision volumes.

> 🔄 Develop a **seasonal safety calendar** that pre-schedules enforcement
> campaigns, infrastructure checks, and public awareness drives aligned
> to each seasonal risk peak throughout the year.

## 🏁 Conclusion

This analysis set out to make sense of a complex, voluminous dataset —
and the data spoke clearly. New York City's motor vehicle collision crisis
is not a matter of chance. It is **patterned, predictable, and preventable.**

Across **238,421 collisions**, the evidence consistently points to the same
culprits — **dangerous driving behaviours, high-risk time windows, seasonal
surges, and vulnerable road users bearing a disproportionate cost.** Each
dimension of this analysis converges on a single truth: targeted,
well-timed intervention saves lives.

The NYPD and city authorities are not without direction. The data provides
a clear roadmap — **enforce harder in April through June, prioritise
Fridays between 4PM and 8PM, protect pedestrians, close the data gap on
unspecified collisions, and build safety campaigns around seasonal rhythms.**

What this project demonstrates above all is the power of data analytics
in transforming raw collision records into **actionable intelligence** —
turning numbers into narratives, and narratives into decisions that can
shape safer streets for every New Yorker.

> *"The streets of New York City don't have to be this dangerous.
> The data shows us where to look — now it's time to act."*
