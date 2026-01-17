-- 4. top 10 companies by units sold
SELECT 
    company,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price
FROM car_sales
GROUP BY company
ORDER BY units_sold DESC;
LIMIT 10;