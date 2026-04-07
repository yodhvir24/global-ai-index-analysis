-- "Above Average Investment But Low Score"

USE ai_index_db;

SELECT 
    country,
    ROUND(AVG(ai_investment_billion_usd), 2) AS avg_investment,
    ROUND(AVG(ai_index_score), 2) AS avg_score,
    ROUND(AVG(ai_readiness_score), 2) AS avg_readiness
FROM ai_index
GROUP BY country
HAVING 
    avg_investment > (SELECT AVG(ai_investment_billion_usd) FROM ai_index)
    AND avg_score < (SELECT AVG(ai_index_score) FROM ai_index)
ORDER BY avg_investment DESC;
