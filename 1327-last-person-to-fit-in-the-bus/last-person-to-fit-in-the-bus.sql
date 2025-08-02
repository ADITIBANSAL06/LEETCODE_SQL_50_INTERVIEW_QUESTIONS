# Write your MySQL query statement below
WITH CumWeight AS (
    SELECT *,
           SUM(weight) OVER (ORDER BY turn asc) AS total_weight
    FROM Queue
)
SELECT person_name
FROM CumWeight
WHERE total_weight <= 1000
ORDER BY turn DESC
LIMIT 1;
