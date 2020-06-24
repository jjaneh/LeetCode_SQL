-- Solution 1
SELECT
t.Request_at AS Day, 
ROUND(SUM(CASE WHEN t.Status LIKE 'cancelled_%' THEN 1 ELSE 0 END)/COUNT(*),2) AS "Cancellation Rate"
FROM Trips AS t 
INNER JOIN Users AS u 
ON t.Client_Id = u.Users_Id AND u.Banned='No'
WHERE t.Request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY t.Request_at
