-- Solution 1
SELECT
    score,
    dense_rank() over(order by score desc) as rank
FROM scores
