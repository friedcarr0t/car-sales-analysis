-- 17. gender preferences by body style
SELECT 
    gender,
    body_style,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price,
    ROUND(COUNT(*)::numeric * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY gender), 2) AS gender_share_pct
FROM car_sales
GROUP BY gender, body_style
ORDER BY gender, units_sold DESC;