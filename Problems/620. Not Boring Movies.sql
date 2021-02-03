-- Solution 1
SELECT
    id,
    movie,
    description,
    rating
FROM cinema
WHERE description not in ('boring') and mod(id,2) = 1
ORDER BY rating DESC
