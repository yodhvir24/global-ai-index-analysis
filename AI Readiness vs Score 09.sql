-- "AI Readiness vs AI Score Gap"

USE ai_index_db;

SELECT 
    country,
    ROUND(AVG(ai_readiness_score), 2) AS avg_readiness,
    ROUND(AVG(ai_index_score), 2) AS avg_ai_score,
    ROUND(AVG(ai_readiness_score) - AVG(ai_index_score), 2) AS readiness_gap
FROM ai_index
GROUP BY country
ORDER BY readiness_gap DESC;