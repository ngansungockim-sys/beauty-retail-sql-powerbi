**Beauty Retail Revenue Analysis
Business Context**
An online beauty retailer generating over $1.6M in revenue wants to understand what is driving growth, which product categories contribute most to sales, and whether recent performance improvements are driven by higher order volume or increased order value.
Management wants a clear view of business performance over time to support commercial and category-level decisions.
**Business Questions**
**The analysis focuses on answering the following questions:**
How much revenue does the business generate, and how has it evolved over time?
Which product categories contribute most to total revenue?
Is growth driven by increased order volume or higher average order value?
What actionable insights can be derived for category and retention strategy?
**Dataset & Scope**
Beauty e-commerce transactional data
Time period: 2016–2018
Focus on Health & Beauty and Perfumery categories
**Data Model**
**A star schema was built in SQLite to support scalable analysis:**
fact_beauty – order-level sales data
dim_orders – order lifecycle and timestamps
dim_products_beauty – product and category details
dim_customers – customer identifiers
Reusable SQL views were created for analytics and BI reporting.
**Methodology**
**SQL (SQLite)**
Data modelling and transformation
KPI and aggregation views
Business-aligned queries with clear purpose
**Power BI**
KPI cards (Revenue, Orders, AOV)
Monthly revenue trend by category
Category revenue contribution
Order volume trends
Interactive slicers for exploration
**Key KPIs**
**Metric**	              **Value**
Total Revenue	             $1.66M
Total Orders	             ~12,000
Average Order Value (AOV)	 $138
**Key Insights & Actions**
**Insight 1 – Sustained Revenue Growth**
Revenue increased steadily from 2016 to 2018, indicating scalable demand rather than short-term spikes.
**Action**: Investigate growth drivers (new vs repeat customers) to support future planning.

**Insight 2 – Category Concentration**
Health & Beauty contributes ~76% of total revenue, while Perfumery accounts for ~24%.
**Action**: Prioritise retention and promotions in Health & Beauty; position Perfumery as a cross-sell or upsell category.

**Insight 3 – Volume-Driven Growth**
Average order value remains high and stable while order volume increases.
**Action**: Maintain pricing discipline and focus on acquisition and retention rather than discounting.

**Dashboard Preview**

<img width="1263" height="701" alt="image" src="https://github.com/user-attachments/assets/dcdf3d9d-fdae-4bc5-8209-f828f163243d" />

**Assumptions & Limitations**
No marketing cost data → ROAS cannot be calculated

No quantity field → revenue based on item price only

Limited repeat history → full customer lifetime value not estimated

Analysis is descriptive, not causal

These constraints reflect real-world data limitations.

**Next Steps**
Customer repeat and cohort analysis
Retention and churn investigation
Delivery performance impact on revenue
Review score vs sales relationship

**Tools Used**
SQL (SQLite)
Power BI
GitHub for documentation
