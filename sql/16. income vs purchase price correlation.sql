-- 16. income vs purchase price correlation
SELECT 
    CASE 
        WHEN annual_income < 50000 THEN 'Under $50K'
        WHEN annual_income < 100000 THEN '$50K - $100K'
        WHEN annual_income < 200000 THEN '$100K - $200K'
        WHEN annual_income < 500000 THEN '$200K - $500K'
        WHEN annual_income < 1000000 THEN '$500K - $1M'
        ELSE 'Over $1M'
    END AS income_bracket,
    CASE 
        WHEN price_dollars < 15000 THEN 'Under $15K'
        WHEN price_dollars < 25000 THEN '$15K - $25K'
        WHEN price_dollars < 35000 THEN '$25K - $35K'
        WHEN price_dollars < 45000 THEN '$35K - $45K'
        WHEN price_dollars < 55000 THEN '$45K - $55K'
        ELSE 'Over $55K'
    END AS price_range,
    COUNT(*) AS units_sold,
    ROUND(AVG(price_dollars),2) AS avg_price
FROM car_sales
GROUP BY 
    CASE 
        WHEN annual_income < 50000 THEN 'Under $50K'
        WHEN annual_income < 100000 THEN '$50K - $100K'
        WHEN annual_income < 200000 THEN '$100K - $200K'
        WHEN annual_income < 500000 THEN '$200K - $500K'
        WHEN annual_income < 1000000 THEN '$500K - $1M'
        ELSE 'Over $1M'
    END,
    CASE 
        WHEN price_dollars < 15000 THEN 'Under $15K'
        WHEN price_dollars < 25000 THEN '$15K - $25K'
        WHEN price_dollars < 35000 THEN '$25K - $35K'
        WHEN price_dollars < 45000 THEN '$35K - $45K'
        WHEN price_dollars < 55000 THEN '$45K - $55K'
        ELSE 'Over $55K'
    END
ORDER BY MIN(annual_income), MIN(price_dollars);