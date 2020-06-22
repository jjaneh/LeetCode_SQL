#Solution 1
SELECT Email
FROM (SELECT Email, count(Email) AS num
      FROM Person
      GROUP BY Email) AS statistic
WHERE num > 1

#Solution 2
SELECT Email
FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1
