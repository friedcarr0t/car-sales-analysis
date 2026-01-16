-- 8. most expensive models
SELECT 
    company,
    model,
    COUNT(*) AS units_sold,
    MAX(price_dollars) AS max_price
FROM car_sales
GROUP BY company, model
HAVING COUNT(*) >= 5  -- Only models with at least 5 sales
ORDER BY max_price DESC
LIMIT 5;