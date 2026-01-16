-- 18. price elasticity analysis (price vs volume)
SELECT 
    company,
    CASE 
        WHEN price_dollars < 20000 THEN 'Budget'
        WHEN price_dollars < 35000 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS price_segment,
    COUNT(*) AS units_sold,
    AVG(price_dollars) AS avg_price
FROM car_sales
WHERE company IN (
    SELECT company 
    FROM car_sales 
    GROUP BY company 
    HAVING COUNT(*) >= 100
    ORDER BY SUM(price_dollars) DESC 
    LIMIT 10
)
GROUP BY company, 
    CASE 
        WHEN price_dollars < 20000 THEN 'Budget'
        WHEN price_dollars < 35000 THEN 'Mid-Range'
        ELSE 'Premium'
    END
ORDER BY company, price_segment;