-- 12. sales performance by region
SELECT 
    dealer_region,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price,
    COUNT(DISTINCT dealer_name) AS num_dealers,
    COUNT(DISTINCT company) AS num_companies,
    ROUND(SUM(price_dollars)::numeric * 100.0 / (SELECT SUM(price_dollars) FROM car_sales), 2) AS revenue_share_pct
FROM car_sales
GROUP BY dealer_region
ORDER BY total_revenue DESC;