-- "GDP vs AI Performance"

USE ai_index_db;

SELECT 
    CASE 
        WHEN gdp_per_capita >= 70000 THEN 'High GDP'
        WHEN gdp_per_capita >= 40000 THEN 'Medium GDP'
        ELSE 'Lower GDP'
    END AS gdp_tier,
    ROUND(AVG(ai_index_score), 2) AS avg_ai_score,
    ROUND(AVG(ai_investment_billion_usd), 2) AS avg_investment,
    COUNT(*) AS record_count
FROM ai_index
GROUP BY gdp_tier
ORDER BY avg_ai_score DESC;
