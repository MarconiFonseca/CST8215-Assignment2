-- Author: Marconi Fonseca
-- Date:Nov 2018

--Write four simple Select Queries with WHERE condition filters on single tables, using >, =,
--BETWEEN, IN, LIKE etc. Practice ORDER BY, DISTINCT, Aliases, LIMIT while writing these. (8
--marks)


SELECT team_name , team_continent,team_Ranking_FIFA  FROM Team_table ORDER BY team_Ranking_FIFA ASC;
SELECT player_Name  FROM Players_table WHERE player_position = 'Forward';
SELECT coach_name ,coach_lastName,coach_age FROM Coach_table WHERE coach_age >= 40  ORDER BY coach_age asc;
SELECT player_Name FROM Players_table WHERE player_age  BETWEEN 30 and 33;


--Write a join to create a meaningful user display of a few columns from 2 or more different
--tables. Comment above the code about the purpose of the join. (2 markss)

--This JOIN display the names, countries and continents of all players that have as a position 'Forward'.
SELECT Team_table.team_name, Team_table.team_continent , Players_table.player_Name 
FROM Team_table
RIGHT JOIN Players_table
ON Team_table.team_id  = Players_table.player_id 
WHERE player_position = 'Forward'

--Write a union with the same set of columns to create a meaningful UNION (2 marks)

SELECT team_name FROM Team_table 
UNION 
SELECT player_Name FROM Players_table



--Write a sub query to find a maximum or minimum value. Comment about the purpose of the
--subquery(2 marks)
SELECT coach_name ,coach_lastName,coach_age FROM Coach_table WHERE coach_age IN ( SELECT MAX(coach_age)  FROM Coach_table);

-- Write a group by with having to have a meaningful query (2 marks).
SELECT COUNT(team_name), team_continent
FROM Team_table
GROUP BY team_continent
HAVING COUNT(team_name) >1;


