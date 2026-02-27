# ** O/P Bites Menu–Orders Analysis**

**📍 Location:** Bay Metropolis *(Simulated Case Study)*  
**🛠 Tools Used:** SQL  
**📊 Analysis Type:** Business Intelligence & Revenue Analytics  

---

## **📌 Executive Summary**

This project analyzes restaurant menu and transactional order data for **O/P Bites**, a simulated restaurant business case, to uncover revenue drivers, customer purchasing behavior, and operational performance patterns.

Using SQL-based analytical techniques, the study identifies:

- High-performing menu categories  
- Revenue concentration risks  
- Peak demand periods  
- Pricing–demand relationships  

The analysis demonstrates how raw transactional data can be transformed into actionable business intelligence that supports strategic decision-making.

---

## **🎯 Business Problem**

Despite steady customer traffic, management lacked visibility into:

- Revenue drivers  
- Product performance  
- Customer purchasing behavior  
- Peak operational periods  
- Pricing effectiveness  

Large volumes of order data existed but were not leveraged for structured decision-making, resulting in reactive rather than data-driven strategies.

---

## **📊 Project Objectives**

The analysis aims to:

- Identify top revenue-generating categories  
- Detect underperforming menu items  
- Understand customer basket size behavior  
- Optimize staffing and inventory planning  
- Evaluate price–demand relationships  
- Measure revenue concentration risk  
- Track monthly revenue trends  
- Analyze category-level product performance  
- Identify high-value customer purchasing patterns  

---

## **📈 Key Performance Indicators (KPIs)**

### **Menu KPIs**

- Total number of menu items
-  ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/number_of_menu_items.png) 
- Total number of Orders Recieved
- ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/%23Total_orders.png)
- Number of dishes per category
- ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/%23number_of_per_category.png)  
- Average price per category
- ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/%24Average_price_per_cate.png)
- Most expensive item and Least expensive item
- ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/Most_and_least_expensive.png)
- Total revenue generated
- ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/%24total_revenue.png) 

---

## ** Business Questions Answered**

- Which menu category generates the highest revenue?  
- What are the least ordered menu items?  
- What is the average number of items per order?  
- Which days have the highest order volume?  
- What time of day has peak ordering activity?  
- What is monthly revenue performance?  
- Which orders generated the highest value?  
- Which category has the highest average price?  
- Do higher-priced items sell less frequently?  
- What percentage of revenue comes from the top 5 items?  
- What are the top 3 best-selling items within each category?  
- What percentage of total revenue does each menu item contribute?  
- Which orders have a total value above the average order value?  

---

## **🧠 Analytical Approach**

The analysis was conducted using SQL through:

- Data exploration and validation  
- Joining menu and order tables  
- Aggregating revenue by category and item  
- Applying window functions (`ROW_NUMBER()`, `RANK()`, `SUM() OVER()`, `AVG() OVER()`)  
- Using Common Table Expressions (CTEs) for structured calculations  
- Performing time-based trend analysis  
- Evaluating price vs. demand relationships  
- Ranking category-level performance metrics  

---

## **🚀 Business Impact**

This analysis enables management to:

- Invest in high-performing categories  
- Redesign or remove underperforming menu items  
- Optimize staffing during peak demand periods  
- Improve pricing strategies  
- Reduce revenue concentration risk  
- Increase average order value  
- Identify premium customer purchasing behavior

## **📊 Insight 1: Revenue Performance by Menu Category**

### **Business Question**
Which menu category generates the highest revenue?

### **Key Finding**
The **Italian category** generates the highest total revenue at **$49,463** from **2,948 orders**.  
The **Korean category** follows closely with **$46,721** in revenue but with a higher total order volume of **3,470 orders**.
-![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/revenue%20_category.png)
---
### **Insight Interpretation**
Although the Korean category has more orders, the Italian category generates higher total revenue.  
This suggests:
- Italian items  have a **higher average selling price**
- Korean items rely more on **high volume sales**
- Revenue leadership is driven by pricing strength rather than order frequency
This distinction highlights two different performance models:
- **Premium-driven revenue (Italian)**
- **Volume-driven revenue (Korean)**
---
### **Executive Recommendations**
1. **Strengthen Italian as a Premium Anchor Category**  
Position Italian dishes as premium offerings and support them with strategic marketing to maintain high-margin performance.
2. **Optimize Korean Category for Upselling Opportunities**  
Introduce combo meals, add-ons, or slight price adjustments to increase average order value without reducing demand.
3. **Balance Investment Across Both Categories**  
Maintain operational support for Korean’s high volume while strategically expanding Italian’s high-revenue advantage to maximize overall profitability.

## **📊 Insight 2: Peak Ordering Time**
### **Business Question**
What time of day has peak ordering activity?
### **Key Finding**
The highest ordering activity occurs between **12:00 PM – 1:00 PM**, with a total of **3,247 orders** recorded within this time window.
This represents the single most active ordering period of the day.
---
### **Insight Interpretation**
The 12 PM – 1 PM window clearly represents the **primary demand peak**, most likely driven by lunch-hour traffic.
This indicates:
- Strong lunchtime customer behavior  
- Concentrated operational pressure within a narrow time frame  
- Potential risk of service bottlenecks during this hour  
Given that this is a single dominant peak, separating it further may not provide additional strategic value at this stage.
---
### **Executive Recommendations**
1️⃣ **Increase Staffing During 12–1 PM Window**  
Align kitchen and service staff schedules to ensure faster turnaround time and maintain service quality.
2️⃣ **Pre-Prep High-Demand Items Before Noon**  
Use historical item-level demand to anticipate top lunch sellers and reduce preparation delays.
3️⃣ **Introduce Lunch Combos or Express Offers**  
Capitalize on peak traffic by designing quick-serve bundles to increase average order value while maintaining operational efficiency.
