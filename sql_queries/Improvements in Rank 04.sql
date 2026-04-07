-- "Countries With Improvements in AI Rank"

use ai_index_db;

SELECT
country,
MIN(ai_global_rank) AS best_rank,
MAX(ai_global_rank) AS worst_rank,
ROUND(MAX(ai_global_rank) - MIN(ai_global_rank),0) AS rank_improvement
FROM ai_index
GROUP BY country
ORDER BY rank_improvement DESC;
