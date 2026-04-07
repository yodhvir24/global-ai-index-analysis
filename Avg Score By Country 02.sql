-- "Average AI Index Score by Country"
use ai_index_db;
SELECT 
    country,
    ROUND(AVG(ai_index_score), 2) AS avg_ai_score,
    ROUND(AVG(ai_investment_billion_usd), 2) AS avg_investment,
    ROUND(AVG(ai_growth_rate), 4) AS avg_growth_rate
FROM ai_index
GROUP BY country
ORDER BY avg_ai_score DESC;