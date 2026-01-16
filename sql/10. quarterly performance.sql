-- 10. quarterly performance
SELECT 
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(QUARTER FROM sale_date) AS quarter,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price
FROM car_sales
GROUP BY EXTRACT(YEAR FROM sale_date), EXTRACT(QUARTER FROM sale_date)
ORDER BY year, quarter;