-- 11. day of week analysis
SELECT 
    TO_CHAR(sale_date, 'Day') AS day_of_week,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    ROUND(AVG(price_dollars),2) AS avg_price
FROM car_sales
GROUP BY TO_CHAR(sale_date, 'Day'), EXTRACT(DOW FROM sale_date)
ORDER BY EXTRACT(DOW FROM sale_date);