-- 9. monthly sales trend
SELECT 
    TO_CHAR(sale_date, 'YYYY-MM') AS month,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price,
    ROUND(
        (COUNT(*) - LAG(COUNT(*)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')))::numeric 
        / NULLIF(LAG(COUNT(*)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')), 0) * 100, 
        2
    ) AS units_growth_pct
FROM car_sales
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
ORDER BY month;