/* SQL BASICS - for posts on SELECT, WHERE, and ORDER BY */

USE BaseballResearchTools;


-- select all
SELECT *
FROM Batting;


-- select specific columns
SELECT Name, Season, [2B], [3B], HR
FROM Batting;


-- renaming with AS
SELECT Name, Season, [2B] AS 'Doubles', [3B] AS 'Triples', HR
FROM Batting;


-- arithmetic for extra-base hits
SELECT Name, Season, [2B] + [3B] + HR as 'XBH'
FROM Batting;


-- select top
SELECT TOP 100 *
FROM Batting;

SELECT TOP 100 PlayerID, Season
FROM Batting;


-- select distinct
SELECT DISTINCT Name
FROM Batting;


-- where clause
SELECT *
FROM Batting
WHERE Team = 'Nationals';


-- where + AND
SELECT *
FROM Batting
WHERE Team = 'Nationals' AND Season = 2015;


-- where + OR
SELECT *
FROM Batting
WHERE Team = 'Nationals' OR Team = 'Mets';


-- where + greater than
SELECT *
FROM Batting
WHERE HR > 25;


-- where + greater than or equal to
SELECT *
FROM Batting
WHERE HR >= 25;


-- IS NULL
SELECT *
FROM Batting
WHERE Team IS NULL;


-- IS NOT NULL
SELECT *
FROM Batting
WHERE Team IS NOT NULL;


-- IN
SELECT *
FROM Batting
WHERE Team IN ('Nationals', 'Mets', 'Phillies', 'Braves', 'Marlins');


-- order by
SELECT DISTINCT Name
FROM Batting
ORDER BY Name ASC;


-- order by multiple columns
SELECT Season, Team, Name
FROM Batting
ORDER BY Season DESC, Team ASC, Name ASC;


-- order by with select top
SELECT TOP 10 Name, HR
FROM Batting
WHERE Season = 2016
ORDER BY HR DESC;