# ** O/P Bites Menu–Orders Analysis**

**📍 Location:** Bay Metropolis *(Simulated Case Study)*  
**🛠 Tools Used:** SQL  
**📊 Analysis Type:** Business Intelligence & Revenue Analytics  

---

## **📌 Project Summary**

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
- 
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
The **Asian category** follows closely with **$46,721** in revenue but with a higher total order volume of **3,470 orders**.


-![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/revenue%20_category.png)
---
### **Insight Interpretation**
Although the Asian category has more orders, the Italian category generates higher total revenue.  
This suggests:
- Italian items  have a **higher average selling price**
- Asians items rely more on **high volume sales**
- Revenue leadership is driven by pricing strength rather than order frequency
This distinction highlights two different performance models:
- **Premium-driven revenue (Italian)**
- **Volume-driven revenue (Asian)**
---
### **Recommendations**
1. **Strengthen Italian as a Premium Anchor Category**  
Position Italian dishes as premium offerings and support them with strategic marketing to maintain high-margin performance.
2. **Optimize Asian Category for Upselling Opportunities**  
Introduce combo meals, add-ons, or slight price adjustments to increase average order value without reducing demand.
3. **Balance Investment Across Both Categories**  
Maintain operational support for Asian’s high volume while strategically expanding Italian’s high-revenue advantage to maximize overall profitability.

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
### **Recommendations**
1. **Increase Staffing During 12–1 PM Window**  
Align kitchen and service staff schedules to ensure faster turnaround time and maintain service quality.
2. **Pre-Prep High-Demand Items Before Noon**  
Use historical item-level demand to anticipate top lunch sellers and reduce preparation delays.
3. **Introduce Lunch Combos or Express Offers**  
Capitalize on peak traffic by designing quick-serve bundles to increase average order value while maintaining operational efficiency

## **📊 Insight 3: Order Volume by Day**

### **Business Question**
Which days have the highest order volume?
### **Key Findings**
The day with the highest total order volume is:
- **Monday** – 2,010 orders  
Other high-performing days include:
- **Friday** – 1,822 orders  
- **Tuesday** – 1,788 orders  
- **Sunday** – 1,776 orders  
Although Monday leads, order volumes remain relatively strong across multiple days of the week.


![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/Daily_Trend.png)
---
### **Insight Interpretation**
Monday emerging as the top-performing day challenges the common assumption that weekends always dominate restaurant traffic.
This suggests:
- Strong weekday demand, possibly driven by work-related lunch traffic  
- Stable demand distribution rather than extreme weekend spikes  
- Consistent operational pressure throughout the week  
The relatively small gap between Monday and other high-performing days indicates that demand is not heavily concentrated on a single day.
---
### **Recommendations**
1. **Maintain Balanced Staffing Across Peak Days**  
Avoid over-allocating resources only to weekends; ensure strong staffing coverage on Mondays and Fridays.
2. **Leverage Monday Momentum for Promotions**  
Introduce loyalty or upsell campaigns early in the week to maximize already high traffic.
3. **Analyze Weekday vs Weekend Item Mix**  
Study product-level demand by day to optimize inventory planning and targeted marketing strategies.

## **📊 Insight 4: Least Ordered Menu Items**

### **Business Question**
What are the least ordered menu items?
### **Key Findings**
The following items recorded the lowest order volumes:
- **Chicken Tacos** – 123 orders  
- **Potstickers** – 205 orders  
- **Cheese Lasagna** – 207 orders  
- **Steak Tacos** – 214 orders  
- **Cheese Quesadillas** – 233 orders

- ![](https://github.com/sep-analytics/analytics-portfolio/blob/main/OP_Bites_Menu-Order-Analysis/images/least%20ordered.png)  
These items represent the weakest performers in terms of customer demand.
---
### **Insight Interpretation**
Low order frequency may indicate:
- Limited customer preference  
- Pricing misalignment  
- Poor menu visibility or placement  
- Strong internal competition from similar items  
For example, having both **Chicken Tacos** and **Steak Tacos** among the least ordered items may suggest weak demand for tacos overall, or preference shifting toward alternative protein options.
Persistent low sales can also increase:
- Inventory holding costs  
- Ingredient spoilage risk  
- Menu complexity  
---
### **Recommendations**
1. **Conduct Menu Engineering Review**  
Evaluate pricing, positioning, and description of these items to determine whether redesign or repositioning can improve demand.
2. **Test Limited-Time Promotions Before Removal**  
Introduce discounts, bundles, or combo offers to validate whether demand can be stimulated.
3. **Streamline the Menu if Performance Remains Weak**  
If low performance persists, consider removing or replacing these items to reduce operational complexity and improve inventory efficiency.

## **📊 Insight 5: Price vs Demand Evaluation**

### **Business Question**
Do higher-priced items sell less frequently?
### **Key Finding**
An evaluation of the top 10 highest-priced menu items shows **no strong negative relationship between price and demand**.


Among these premium-priced dishes:
- Only a small portion recorded low order volumes  
- Several high-priced items maintained strong sales performance  
- Multiple items priced at similar premium levels showed significantly different demand levels  
Overall, higher pricing did **not** consistently result in lower order frequency.
---
### **Insight Interpretation**
The data suggests that customers at O/P Bites are **not highly price-sensitive within the premium range**.
Key observations:
- Premium pricing does not automatically reduce demand  
- Certain high-priced items perform strongly, indicating perceived value  
- Demand appears to be influenced more by product appeal than by price alone  
This indicates that pricing strategy may already be aligned with customer value perception.
---
### **Recommendations**
1. **Maintain Strategic Premium Pricing on Strong Performers**  
Avoid unnecessary price reductions on high-performing premium items, as demand remains stable.
2. **Focus on Value Positioning Rather Than Discounting**  
Enhance descriptions, presentation, and marketing to reinforce perceived value instead of competing on price.
3. **Conduct Controlled Price Testing on Mid-Performers**  
Implement small, data-driven pricing experiments on select items to further validate elasticity behavior.

