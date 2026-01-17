-- 5. company performance by year
SELECT 
    company,
    EXTRACT(YEAR FROM sale_date) AS year,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price
FROM car_sales
WHERE company IN (
    SELECT company 
    FROM car_sales 
    GROUP BY company 
    ORDER BY SUM(price_dollars) DESC 
    LIMIT 5
)
GROUP BY company, EXTRACT(YEAR FROM sale_date)
ORDER BY company, year;