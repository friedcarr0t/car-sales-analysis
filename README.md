# Car Sales Performance Analysis: Identifying High-Revenue Brands and Regional Opportunities

## 1. Business Problem / Objective

The objective of this analysis is to evaluate car sales performance using historical transaction data from 2022-2023 to identify top-performing brands, regions, and sales trends. The insights generated are intended to support data-driven decisions related to product focus, regional strategy, and revenue optimization. By understanding which brands generate the highest revenue, which regions perform best, and how sales patterns evolve over time, stakeholders can make informed decisions about inventory allocation, marketing investments, and strategic planning.

## 2. Dataset Overview

The dataset contains car sales transaction records sourced from Kaggle, covering sales activity from January 2022 to December 2023. The dataset includes **23,905 records** with **16 key fields**:

- **Transaction identifiers**: Car ID, Sale Date, Customer Name
- **Product attributes**: Company (manufacturer), Model, Engine Type, Transmission, Color, Body Style
- **Financial metrics**: Price (in USD), Annual Income
- **Geographic data**: Dealer Name, Dealer Region
- **Customer demographics**: Gender, Phone Number

The dataset provides a comprehensive view of sales transactions across multiple dimensions, enabling analysis of brand performance, regional distribution, customer preferences, and temporal trends.

## 3. Data Cleaning & Preparation

Data cleaning was performed to ensure consistency and analytical reliability. Key cleaning steps included:

- **Removed non-informative columns**: Dropped 1 row with missing Customer Name
- **Fixed encoding issues**: Resolved special character problems in the Engine column (removed non-breaking spaces and encoding artifacts)
- **Standardized column names**: Converted all column names to lowercase with underscores (e.g., "Price ($)" → "price_dollars", "Body Style" → "body_style")
- **Converted data types**: Standardized date fields to datetime format, converted phone numbers to string type, and ensured numeric columns (price, income) were properly typed
- **Normalized text fields**: Removed leading/trailing whitespace from all categorical columns
- **Validated data quality**: Confirmed no duplicate records and verified all required fields are populated

The cleaned dataset is stored as `carSales_cleaned.csv` with 23,905 records and 16 columns, ready for SQL and Power BI analysis.

## 4. Key Metrics Definition

The analysis focuses on the following key performance indicators:

- **Total Revenue**: Sum of all sales transactions (price_dollars), representing the overall business scale
- **Total Units Sold**: Count of transactions, indicating sales volume
- **Average Selling Price**: Mean transaction value, calculated as Total Revenue / Total Units
- **Revenue Growth**: Year-over-year and month-over-month percentage changes in revenue
- **Market Share**: Percentage contribution of each brand/region to total revenue
- **Revenue per Unit**: Average revenue contribution per transaction
- **Regional Efficiency**: Revenue per dealer and sales per dealer by region

These metrics enable comparison across brands, regions, and time periods to identify performance drivers and optimization opportunities.

## 5. Exploratory Data Analysis (EDA)

### 5.1 Overall Sales Performance

- **Total Revenue**: $671.5 million across the analysis period
- **Total Units Sold**: 23,905 vehicles
- **Average Selling Price**: $28,090 per vehicle
- **Price Range**: $1,200 - $85,800, with median price indicating a wide market coverage
- **Time Period**: January 2022 to December 2023 (24 months)
- **Market Coverage**: Multiple companies and dealer regions, providing comprehensive market representation

This baseline establishes the business scale and demonstrates significant revenue generation across diverse price points.

### 5.2 Sales by Brand

Analysis reveals distinct brand performance patterns:

- **Top Revenue Contributors**: A small number of brands generate a disproportionately high share of total revenue
- **Volume vs Value**: Some brands excel in unit sales volume, while others command higher average selling prices
- **Market Concentration**: Top 10 companies by revenue account for a significant portion of total sales
- **Performance Variance**: Notable differences in average selling price across brands, indicating market segmentation

The analysis includes detailed breakdowns of units sold, total revenue, average price, and market share percentage for each manufacturer, enabling strategic brand prioritization.

### 5.3 Sales by Region

Regional analysis highlights geographic performance variations:

- **Revenue Contribution**: Certain regions generate higher revenue despite varying sales volumes
- **Average Price Variance**: Regional differences in average selling price suggest market characteristics and customer preferences
- **Dealer Efficiency**: Revenue per dealer varies significantly by region, indicating operational performance differences
- **Market Penetration**: Some regions show higher concentration of dealers and companies

This regional breakdown supports strategic decisions about geographic focus, dealer development, and resource allocation.

### 5.4 Time-Based Analysis

Temporal analysis reveals sales trends and patterns:

- **Monthly Trends**: Sales show fluctuations throughout the year, with identifiable seasonal patterns
- **Growth Trajectory**: Year-over-year comparison shows revenue growth patterns between 2022 and 2023
- **Quarterly Performance**: Quarterly breakdowns reveal business cycle patterns and seasonal effects
- **Day-of-Week Patterns**: Analysis of sales by day of week identifies peak sales days
- **Moving Averages**: 30-day moving averages smooth out fluctuations to reveal underlying trends

Time-based insights enable forecasting, inventory planning, and promotional campaign timing.

### 5.5 Additional Analyses

The analysis extends to product attributes and customer demographics:

- **Body Style Performance**: SUV, Sedan, Hatchback, and other body styles show distinct revenue contributions
- **Color Preferences**: Market preferences for different colors and their impact on sales volume
- **Transmission Trends**: Auto vs Manual transmission preferences across different segments
- **Customer Demographics**: Gender-based purchasing patterns and income bracket analysis
- **Price Elasticity**: Relationship between price ranges and sales volume

## 6. Key Insights

Based on the comprehensive data analysis, the following insights emerged:

- **Brand Concentration**: A small number of brands contribute a disproportionately high share of total revenue, indicating market concentration and potential focus areas

- **Regional Value Variation**: Certain regions generate higher revenue despite lower sales volume, indicating higher average selling prices and premium market characteristics

- **Temporal Growth Patterns**: Sales show an upward trend toward the end of 2023 compared to 2022, suggesting positive business momentum and potential seasonal effects

- **Price Range Distribution**: Sales are concentrated in specific price brackets ($15K-$35K range), indicating clear market preferences and segmentation opportunities

- **Product Attribute Influence**: Body style, color, and transmission type show significant influence on sales volume and revenue, with certain combinations performing better

- **Customer Segment Characteristics**: Higher-income customers tend to purchase higher-priced vehicles, but the relationship varies by region and product category

- **Dealer Efficiency Gaps**: Revenue per dealer varies significantly across regions, indicating opportunities for operational improvement and best practice sharing

These insights provide a data-driven foundation for strategic decision-making across product, pricing, regional, and operational dimensions.

## 7. Business Recommendations

Based on the insights, the following strategic recommendations are proposed:

- **Prioritize High-Revenue Brands**: Focus marketing and inventory allocation on brands that generate the highest revenue contribution, while maintaining portfolio diversity for market coverage

- **Strengthen High-Value Regional Presence**: Invest in strengthening presence in regions with higher average selling prices rather than focusing solely on volume-driven markets, as these regions may offer better profitability

- **Optimize Seasonal Campaigns**: Plan promotional campaigns around periods with historically strong sales performance, particularly during identified peak months and quarters

- **Product Mix Optimization**: Align inventory with high-performing body styles, colors, and transmission types based on regional preferences and market segments

- **Dealer Performance Improvement**: Identify and replicate best practices from high-efficiency regions to improve revenue per dealer in underperforming areas

- **Price Strategy Refinement**: Leverage price range concentration insights to optimize pricing strategies and product positioning within preferred price brackets

- **Customer Segmentation**: Develop targeted marketing approaches based on income brackets and demographic patterns, tailoring product offerings and communication strategies

## 8. Dashboard Overview

An executive-level Power BI dashboard was developed to provide a consolidated view of sales performance. The dashboard includes:

- **Key Performance Indicators (KPIs)**: Total revenue, units sold, average price, and growth metrics displayed as prominent cards
- **Brand Performance Analysis**: Top companies by revenue and units, with market share breakdowns
- **Regional Performance Metrics**: Revenue by region, dealer efficiency, and geographic comparisons
- **Time-Based Trends**: Monthly and quarterly trends, year-over-year comparisons, and seasonal patterns
- **Product Analysis**: Body style performance, color preferences, and price range distributions
- **Customer Insights**: Demographics analysis, income bracket breakdowns, and purchasing patterns

The dashboard enables interactive exploration through slicers for date ranges, brands, regions, and product attributes, allowing stakeholders to drill down into specific areas of interest.

**Dashboard Access**: 
- Power BI dashboard available in `dashboard/carSalesDashboard.pdf`

## 9. Limitations & Next Steps

### Current Limitations

- **Profitability Analysis**: The dataset does not include cost or profit margin data, limiting analysis to revenue-only metrics without understanding true profitability
- **Dealer-Level Deep Dive**: Dealer-level performance analysis is not deeply explored beyond regional aggregations
- **External Factors**: No consideration of external factors such as economic conditions, competitive landscape, or marketing spend that may influence sales
- **Customer Lifetime Value**: Limited customer data prevents analysis of repeat purchases and customer lifetime value
- **Inventory Levels**: No visibility into inventory levels or stock-out situations that may affect sales patterns

### Recommended Next Steps

- **Profitability Analysis**: Incorporate cost data to calculate profit margins by brand, region, and product category
- **Advanced Customer Segmentation**: Develop detailed customer personas based on purchasing behavior, income, and preferences
- **Sales Forecasting**: Build predictive models to forecast future sales based on historical trends and identified patterns
- **Dealer Performance Deep Dive**: Conduct detailed dealer-level analysis to identify best practices and improvement opportunities
- **Product Recommendation Engine**: Develop recommendations for optimal product mix by region based on historical performance
- **Competitive Analysis**: Integrate competitive data to understand market positioning and share dynamics

## 10. Tools & Technologies

This analysis utilized the following tools and technologies:

- **Python**: Data cleaning and preparation using pandas library
- **Jupyter Notebook**: Interactive development and documentation (`clean_car_sales.ipynb`)
- **PostgreSQL / SQL**: Data analysis and query development (19 SQL queries in `sql/` folder)
- **Power BI**: Dashboard development and visualization for executive reporting
- **Data Format**: CSV files for data storage and exchange

**Dataset Source**: Kaggle - Car Sales Report  
**License**: This project is for educational and analytical purposes
