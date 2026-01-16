-- 19. monthly KPIs dashboard
SELECT 
    TO_CHAR(sale_date, 'YYYY-MM') AS month,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_transaction_value,
    COUNT(DISTINCT company) AS active_brands,
    COUNT(DISTINCT dealer_region) AS active_regions,
    COUNT(DISTINCT dealer_name) AS active_dealers,
    ROUND(SUM(price_dollars)::numeric / NULLIF(COUNT(DISTINCT dealer_name), 0), 2) AS revenue_per_dealer
FROM car_sales
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
ORDER BY month;