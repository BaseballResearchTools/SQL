
/* for post on GROUP BY & HAVING clauses */

use BaseballResearchTools


-- basic GROUP BY
SELECT Name, SUM(HR) as 'HR'
FROM Batting
GROUP BY Name


-- GROUP BY + ORDER BY
SELECT Name, SUM(HR) as 'HR'
FROM Batting
GROUP BY Name
ORDER BY HR DESC


-- GROUP BY + HAVING + ORDER BY
SELECT Name, SUM(HR) as 'HR'
FROM Batting
GROUP BY Name
HAVING SUM(HR) >= 150
ORDER BY HR DESC