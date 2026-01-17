-- 6. top 10 best-selling models
SELECT 
    company,
    model,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    ROUND(AVG(price_dollars),2) AS avg_price,
    MIN(price_dollars) AS min_price,
    MAX(price_dollars) AS max_price
FROM car_sales
GROUP BY company, model
ORDER BY units_sold DESC
LIMIT 10;