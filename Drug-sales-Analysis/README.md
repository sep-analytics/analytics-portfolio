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
Core business measures were created using DAX, including:
- Total Revenue
- Total Cost (COGS)
- Total Profit
- Profit Margin
- Total Units Sold
- Transaction Count
- Month-over-Month Revenue Change
- Contribution %

*(Screenshots and measure definitions provided below in the documentation.)

