-- 15. price range distribution
SELECT 
    CASE 
        WHEN price_dollars < 15000 THEN 'Under $15K'
        WHEN price_dollars < 25000 THEN '$15K - $25K'
        WHEN price_dollars < 35000 THEN '$25K - $35K'
        WHEN price_dollars < 45000 THEN '$35K - $45K'
        WHEN price_dollars < 55000 THEN '$45K - $55K'
        ELSE 'Over $55K'
    END AS price_range,
    COUNT(*) AS units_sold,
    SUM(price_dollars) AS total_revenue,
    AVG(price_dollars) AS avg_price,
    ROUND(COUNT(*)::numeric * 100.0 / (SELECT COUNT(*) FROM car_sales), 2) AS market_share_pct
FROM car_sales
GROUP BY 
    CASE 
        WHEN price_dollars < 15000 THEN 'Under $15K'
        WHEN price_dollars < 25000 THEN '$15K - $25K'
        WHEN price_dollars < 35000 THEN '$25K - $35K'
        WHEN price_dollars < 45000 THEN '$35K - $45K'
        WHEN price_dollars < 55000 THEN '$45K - $55K'
        ELSE 'Over $55K'
    END
ORDER BY MIN(price_dollars);