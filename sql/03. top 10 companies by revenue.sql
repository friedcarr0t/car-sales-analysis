-- 3. top 10 companies by revenue
SELECT 
    company,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price,
    ROUND(SUM(price_dollars)::numeric / NULLIF(COUNT(*), 0), 2) AS revenue_per_unit,
    ROUND(COUNT(*)::numeric * 100.0 / (SELECT COUNT(*) FROM car_sales), 2) AS market_share_pct
FROM car_sales
GROUP BY company
ORDER BY total_revenue DESC
LIMIT 10;