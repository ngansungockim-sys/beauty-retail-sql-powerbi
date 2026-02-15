***DATA ANALYTICS PORTFOLIO PROJECT***

## REPORT

#### Dataset overview
This project uses a public Brazilian e-commerce dataset from Olist Store, containing approximately 100,000 orders placed between 2016 and 2018 across multiple online marketplaces in Brazil. The dataset provides a comprehensive transactional view, covering order status, pricing, payment details, freight performance, customer demographics, product attributes, and customer reviews.

In addition, a geolocation dataset links Brazilian postal codes to latitude and longitude coordinates, enabling spatial and regional performance analysis. Although the data represents real commercial activity, it has been fully anonymised to protect privacy, ensuring it remains suitable for analytical exploration while preserving the integrity of the original business context.

#### Database overview
To support structured data management and scalable analysis, the dataset was implemented within a dedicated SQL database using a star schema design. Fact and dimension tables were structured to reflect transactional relationships, ensuring data integrity and consistent KPI definitions. Moreover, the reusable analytical views were created to aggregate monthly revenue and order metrics, enabling reliable reporting and seamless integration with Power BI. Thus, this layered design mirrors real-world analytics workflows, where SQL handles transformation and modelling, and BI tools focus on visualisation and business storytelling. Not only that, this structure ensures that business metrics such as revenue and order volume are defined consistently across dashboards and future analyses.

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

Beauty e-commerce transactional dataset

Time period: 2016–2018

Scope limited to Health & Beauty and Perfumery categories

The dataset represents typical marketplace-style e-commerce data with order-level transactions and limited customer history.

**Data Model**

**A star schema was implemented in SQLite to reflect real-world analytics workflows:**

fact_beauty – order-level sales transactions

dim_orders – order lifecycle and timestamps

dim_products_beauty – product and category attributes

dim_customers – customer identifiers

Reusable SQL views were created to support analytics and Power BI reporting.
**Methodology**

**SQL (SQLite)**

Designed fact and dimension tables

Built analytical views aligned with business KPIs

Ensured clean joins and avoided duplicate inflation

Focused on clarity and business relevance over complex SQL

**Power BI**

Used SQL for transformation and aggregation

Used Power BI exclusively for visualisation and storytelling

Built executive-style KPI dashboards

**Key KPIs**
**Metric**	              **Value**

Total Revenue	             $1.66M

Total Orders	             ~12,000

Average Order Value (AOV)	 $138

These figures indicate a relatively high-value transaction model compared to typical e-commerce benchmarks.

**Key Insights & Actions**

**Insight 1 – Sustained Revenue Growth**

Revenue increased steadily from 2016 to 2018, indicating scalable demand rather than short-term spikes.

**Action**: Investigate growth drivers (new vs repeat customers) to support future planning.

**Insight 2 – Category Concentration**

Health & Beauty contributes ~76% of total revenue, while Perfumery accounts for ~24%.

**Action**: Health & Beauty is the core revenue driver. Retention, promotions, and assortment optimisation should prioritise this category, while Perfumery can be positioned as a complementary cross-sell opportunity.

**Insight 3 – Volume-Driven Growth**

Average order value remains high and stable while order volume increases.

**Action**: Growth is driven primarily by increasing demand rather than price discounting, suggesting pricing discipline can be maintained.

**Dashboard Preview**

**The Power BI dashboard provides:**

KPI cards for revenue, orders, and AOV

Monthly revenue trends by category

Category contribution to total revenue

Monthly order volume trends

Interactive category filtering

<img width="1263" height="701" alt="image" src="https://github.com/user-attachments/assets/dcdf3d9d-fdae-4bc5-8209-f828f163243d" />

**Assumptions & Limitations**
Marketing cost data is unavailable → ROAS cannot be calculated

No quantity field → revenue is based on item price only

Limited customer history → full lifetime value analysis not possible

Analysis is descriptive and does not establish causality

These limitations reflect real-world data constraints rather than technical gaps.

**Potential Next Steps**

With additional data, further analysis could include:

Customer repeat and cohort analysis

Retention and churn metrics

Delivery performance impact on revenue

Review score and satisfaction analysis

**Tools Used**

SQL (SQLite)

Power BI

GitHub for documentation
