SELECT * FROM restaurant_db.menu_items;
#KPIS
#Total Numbers of Menu Items
        SELECT count(*) AS "#Menu_items"
        FROM   menu_items;
#Total Numbers of Distinct Orders
        SELECT format(count(distinct order_id),0) AS "#Total Orders"
        FROM   order_details;
#Total Revenue 
	    SELECT concat("$",format(sum(m.price),0)) AS " Total Revenue"
           FROM order_details o
          JOIN menu_items m 
		  ON o.item_id=m.menu_item_id;
 # Average Price of dishes Per Category
          SELECT category, concat("$",round(avg(price),2)) as "Average Price Per Category" 
		  FROM   menu_items 
          GROUP BY category
          ORDER BY avg(price) desc;
#Most Expensive and least expensive item
         (SELECT*
		  FROM   menu_items 
          ORDER BY  price DESC
          LIMIT 1)
UNION ALL
         (SELECT* 
          FROM menu_items
          ORDER BY price ASC
		  LIMIT 1);         
	#Total Number of dishes per category
          SELECT category ,
          count(*) AS "#Dish_per_Category"
          FROM  menu_items
          GROUP BY category;
          
/* Business Analysis */
#What are the top 10 revenue-generating menu items?:(Identify products driving profitability)
		SELECT  m.item_name, concat("$",format(sum(m.price),0)) as Revenue , format(count(o.item_id),0) as "Total orders"
		FROM  menu_items m
		LEFT JOIN  order_details o
		ON m.menu_item_id=o.item_id
		GROUP BY m.item_name
		ORDER BY Revenue DESC
		LIMIT 10;
		
#Which menu category generates the highest total revenue?:(We want to understand which cuisine/category deserves investment)
		SELECT  m.category,  concat("$",format(sum(m.price),0)) as Revenue , format(count(o.item_id),0) as "Total orders"
		FROM  menu_items m
		LEFT JOIN  order_details o
		ON m.menu_item_id=o.item_id
		GROUP BY m.category
		ORDER BY Revenue DESC;
		
#What are the least ordered menu items?:(Detect candidates for menu removal or redesign)
	    SELECT m.item_name, m.category, count(*) as "Total Orders"
	    FROM menu_items as m
	    LEFT JOIN order_details as o
	    ON m.menu_item_id=o.item_id
	    GROUP BY m.item_name, m.category
	    ORDER BY count(*) asc
	    LIMIT 5;
        
#What is the average number of items per order?:(Measure customer purchasing behavior and basket size)
        SELECT  round(avg(item_count),2) AS avg_items_per_order
        FROM(
			SELECT order_id, count(*) as item_count
            FROM order_details
            GROUP BY order_id) AS order_basket;
            
         
# Which days have the highest number of orders?:( We want to optimize staffing and inventory planning)
		SELECT dayname(order_date) AS Day_of_week, format(count(order_details_id),0) AS Number_of_orders
        FROM   order_details
        GROUP BY Day_of_week
        ORDER BY Number_of_orders DESC;
        
#What time of day experiences peak ordering activity?:(Understand operational pressure periods)
        SELECT  date_format(order_time,"%h%p") AS Hours, count(order_id) as Number_of_orders
        FROM    order_details
        GROUP BY Hours
        ORDER BY Number_of_orders DESC;
        
 #What is the total revenue generated each month?:(Track the business growth trend over months)
        SELECT monthname(o.order_date) AS Months, concat("$",format(sum(m.price),2)) AS Revenue
        FROM   order_details o
        LEFT JOIN menu_items m 
        ON o.item_id=m.menu_item_id
        GROUP BY Months;
        
  #Which orders generated the highest total value?:(Identify high-spending customer behavior)
        SELECT  o.order_id AS Orders, sum(m.price) as Order_value 
	    FROM order_details as o 
	    LEFT JOIN menu_items m ON m.menu_item_id=o.item_id
	    GROUP BY  Orders
	    ORDER BY Order_value DESC
        LIMIT 5;
        
 #Which category has the highest average item price?:(Understand pricing positioning across categories)
        SELECT category, avg(price) AS Avg_Price
        FROM   menu_items 
        GROUP BY category
        ORDER BY Avg_Price DESC;
        
#Do higher-priced items sell less frequently?:(Evaluate price vs demand relationship)
        SELECT m.menu_item_id, m.item_name, m.price, count(o.order_id) AS Total_orders
        FROM menu_items m 
        LEFT JOIN order_details o
        ON m.menu_item_id=o.item_id
        GROUP BY m.menu_item_id,m.item_name
        ORDER BY m.price DESC
        LIMIT 10;
        
#What percentage of total revenue comes from the top 5 items?:(Measure revenue concentration risk)
       WITH
		Ranked_items AS(
        SELECT  m.item_name, count(o.item_id)*m.price AS Item_Revenue,
	    RANK() OVER(ORDER BY count(o.item_id)*m.price DESC) AS Ranked_Revenue,
       sum(count(*) * m.price) OVER() AS Total_revenue
       FROM order_details o
       JOIN menu_items m 
       ON o.item_id=m.menu_item_id
       GROUP BY m.item_name,m.menu_item_id,m.price)
       
	SELECT concat(round(sum(Item_revenue)/max(Total_revenue)*100,2),"%") AS Top_5_Pct
    FROM   Ranked_items
    WHERE  Ranked_Revenue<=5;

#What are the top 3 best-selling items within each category?:(strongest performers per category)
     WITH
        Top_3_Category AS
        ( SELECT  m.item_name, m.category, concat("$",format((count(o.item_id)*m.price),2)) AS Item_Revenue,
	    ROW_NUMBER() OVER(PARTITION BY m.category ORDER BY  count(o.item_id)*m.price DESC) AS Categories
       FROM order_details o
       JOIN menu_items m 
       ON o.item_id=m.menu_item_id
       GROUP BY m.item_name,m.menu_item_id,m.price)
       
       SELECT*
       FROM Top_3_Category
       WHERE Categories<=3;
       
#What percentage of total revenue does each menu item contribute?:(Identify revenue dependency and dominance)
      WITH
          Pct_Contribution AS
          (  SELECT  m.item_name, count(o.item_id) AS Item_count,
         count(o.item_id)*m.price  AS Item_revenue,
         SUM(sum(m.price)) OVER() AS Total_revenue,
		round(count(o.item_id)*m.price*100/SUM(sum(m.price)) OVER(),2) AS Ranked_Pct
       FROM order_details o
       JOIN menu_items m 
       ON o.item_id=m.menu_item_id
       GROUP BY m.item_name,m.menu_item_id,m.price,m.category)
       
       SELECT*
       FROM Pct_Contribution
       ORDER BY Item_Revenue DESC;
       
#Identify orders whose total value is above the average order value? (Find high-value purchasing behavior/Managers want to study premium orders)
     SELECT * 
 FROM (
     SELECT 
        o.order_id AS Orders,
        sum(m.price) AS Order_value,
        round(avg(sum(m.price)) OVER(), 2) AS avg_Price_per_order
    FROM order_details o
    LEFT JOIN menu_items m ON m.menu_item_id = o.item_id
    GROUP BY o.order_id
) AS order_summary
 WHERE Order_value > avg_Price_per_order
 ORDER BY Order_value DESC;