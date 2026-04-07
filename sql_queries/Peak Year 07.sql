-- "Best Performance per Country"

USE ai_index_db;

SELECT 
    country,
    year AS peak_year,
    ai_index_score AS peak_score,
    ai_investment_billion_usd AS investment_that_year
FROM (
    SELECT 
        country,
        year,
        ai_index_score,
        ai_investment_billion_usd,
        RANK() OVER (
            PARTITION BY country 
            ORDER BY ai_index_score DESC
        ) AS score_rank
    FROM ai_index
) AS ranked
WHERE score_rank = 1
ORDER BY peak_score DESC;
