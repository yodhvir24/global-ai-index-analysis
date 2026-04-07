-- "Top 5 countries by Investments in AI per year"

USE ai_index_db;
SELECT 
    year,
    country,
    ai_investment_billion_usd,
    investment_rank
    FROM (
    SELECT 
    year,
    country,
    ai_investment_billion_usd,
    RANK() OVER (
        PARTITION BY year 
        ORDER BY ai_investment_billion_usd DESC
    ) AS investment_rank
FROM ai_index
) AS ranked_data
WHERE investment_rank <= 5
ORDER BY year, investment_rank;