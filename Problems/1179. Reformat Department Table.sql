-- Solution 1
SELECT id, 
	SUM(CASE WHEN month = 'Jan' THEN revenue ELSE null END) AS Jan_Revenue,
	SUM(CASE WHEN month = 'Feb' THEN revenue ELSE null END) AS Feb_Revenue,
	SUM(CASE WHEN month = 'Mar' THEN revenue ELSE null END) AS Mar_Revenue,
	SUM(CASE WHEN month = 'Apr' THEN revenue ELSE null END) AS Apr_Revenue,
	SUM(CASE WHEN month = 'May' THEN revenue ELSE null END) AS May_Revenue,
	SUM(CASE WHEN month = 'Jun' THEN revenue ELSE null END) AS Jun_Revenue,
	SUM(CASE WHEN month = 'Jul' THEN revenue ELSE null END) AS Jul_Revenue,
	SUM(CASE WHEN month = 'Aug' THEN revenue ELSE null END) AS Aug_Revenue,
	SUM(CASE WHEN month = 'Sep' THEN revenue ELSE null END) AS Sep_Revenue,
	SUM(CASE WHEN month = 'Oct' THEN revenue ELSE null END) AS Oct_Revenue,
	SUM(CASE WHEN month = 'Nov' THEN revenue ELSE null END) AS Nov_Revenue,
	SUM(CASE WHEN month = 'Dec' THEN revenue ELSE null END) AS Dec_Revenue
FROM department
GROUP BY id
ORDER BY id

-- Solution 2 (MS SQL SERVER)
SELECT 
    id,
    Jan AS Jan_Revenue,
    Feb AS Feb_Revenue, 
    Mar AS Mar_Revenue, 
    Apr AS Apr_Revenue,
    May AS May_Revenue,
    Jun AS Jun_Revenue,
    Jul AS Jul_Revenue,
    Aug AS Aug_Revenue,
    Sep AS Sep_Revenue,
    Oct AS Oct_Revenue,
    Nov AS Nov_Revenue,
    Dec AS Dec_Revenue
FROM Department
PIVOT 
(
    MAX(revenue)
    FOR month IN (Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, Dec)        
) AS MonthsRevenue
