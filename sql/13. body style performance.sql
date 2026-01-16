-- 13. body style performance
SELECT 
    body_style,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price
FROM car_sales
GROUP BY body_style
ORDER BY total_revenue DESC;