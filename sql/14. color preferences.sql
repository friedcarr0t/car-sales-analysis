-- 14. color preferences
SELECT 
    color,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price,
    ROUND(COUNT(*)::numeric * 100.0 / (SELECT COUNT(*) FROM car_sales), 2) AS market_share_pct
FROM car_sales
GROUP BY color
ORDER BY units_sold DESC;