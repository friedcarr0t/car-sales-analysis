-- 7. highest revenue generating models
SELECT 
    company,
    model,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    ROUND(AVG(price_dollars),2) AS avg_price
FROM car_sales
GROUP BY company, model
ORDER BY total_revenue DESC
LIMIT 5;