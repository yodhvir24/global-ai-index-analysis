-- "Year By Year AI Score Change 2015-2026"

USE ai_index_db;

SELECT 
    country,
    year,
    ai_index_score,
    LAG(ai_index_score) OVER (
        PARTITION BY country 
        ORDER BY year
    ) AS prev_year_score,
    ROUND(
        ai_index_score - LAG(ai_index_score) OVER (
        PARTITION BY country 
        ORDER BY year
    ), 2) AS score_change
FROM ai_index
ORDER BY country, year;
