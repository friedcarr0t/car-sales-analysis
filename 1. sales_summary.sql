-- 1. overall sales summary
SELECT 
    COUNT(*) AS total_sales,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_selling_price,
    MIN(price_dollars) AS min_price,
    MAX(price_dollars) AS max_price,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY price_dollars) AS median_price,
    MIN(sale_date) AS first_sale_date,
    MAX(sale_date) AS last_sale_date,
    COUNT(DISTINCT company) AS unique_companies,
    COUNT(DISTINCT dealer_region) AS unique_regions
FROM car_sales;