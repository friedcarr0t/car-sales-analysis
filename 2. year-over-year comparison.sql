-- 2. year-over-year comparison
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price,
    ROUND(SUM(price_dollars)::numeric / COUNT(*), 2) AS revenue_per_unit
FROM car_sales
GROUP BY EXTRACT(YEAR FROM sale_date)
ORDER BY year;