-- Author: Marconi Fonseca
-- Date:Nov 2018

DROP TABLE IF EXISTS many_Team_table_has_many_local_of_the_games_table CASCADE;
DROP TABLE IF EXISTS local_of_the_games_table CASCADE;
DROP TABLE IF EXISTS Coach_table CASCADE;
DROP TABLE IF EXISTS Players_table CASCADE;
DROP TABLE IF EXISTS Team_table CASCADE;


CREATE TABLE Team_table(
	team_id bigserial NOT NULL,
	team_continent char(50) NOT NULL,
	team_name char(50) NOT NULL,
	team_Ranking_FIFA integer NOT NULL,
	team_Number_of_Participation int2 NOT NULL,
	team_Has_World_cup char (50),
	CONSTRAINT Team_table_pk PRIMARY KEY (team_id)
);
CREATE TABLE Players_table(
	player_id bigserial NOT NULL,
	player_Name char(50) NOT NULL,
     player_team char (50) NOT NULL,
	player_age integer NOT NULL,
	player_position char(50) NOT NULL,
	team_id_Team_table bigint ,
	CONSTRAINT Players_table_pk PRIMARY KEY (player_id)
);

CREATE TABLE Coach_table(
	coach_id bigserial NOT NULL,
	coach_name char(50) NOT NULL,
	coach_lastName char(50) NOT NULL,
	coach_age int2 NOT NULL,
	coach_nationality char(50) NOT NULL,
	team_id_Team_table bigint ,
	CONSTRAINT Coach_table_pk PRIMARY KEY (coach_id)
);

CREATE TABLE local_of_the_games_table(
	local_id bigserial NOT NULL,
	local_Stadium_name char(50) NOT NULL,
	Local_Stadium_capability int NOT NULL,
	local_city_name char(50) NOT NULL,
	local_date_game date NOT NULL,
	CONSTRAINT local_of_the_games_table_pk PRIMARY KEY (local_id)

);

ALTER TABLE Players_table ADD CONSTRAINT Team_table_fk FOREIGN KEY (team_id_Team_table)
REFERENCES Team_table (team_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Coach_table ADD CONSTRAINT Team_table_fk FOREIGN KEY (team_id_Team_table)
REFERENCES Team_table (team_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE Coach_table ADD CONSTRAINT Coach_table_uq UNIQUE (team_id_Team_table);

CREATE TABLE many_Team_table_has_many_local_of_the_games_table(
	team_id_Team_table bigint NOT NULL,
	local_id_local_of_the_games_table bigint NOT NULL,
	CONSTRAINT many_Team_table_has_many_local_of_the_games_table_pk PRIMARY KEY (team_id_Team_table,local_id_local_of_the_games_table)
);

ALTER TABLE many_Team_table_has_many_local_of_the_games_table ADD CONSTRAINT Team_table_fk FOREIGN KEY (team_id_Team_table)
REFERENCES Team_table (team_id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE many_Team_table_has_many_local_of_the_games_table ADD CONSTRAINT local_of_the_games_table_fk FOREIGN KEY (local_id_local_of_the_games_table)
REFERENCES public.local_of_the_games_table (local_id) MATCH FULL
ON DELETE CASCADE ON UPDATE CASCADE;


--Create indexes for at least two columns of any two tables, columns that would be frequently 

--DROP INDEX Stadiums;
--DROP INDEX Countries;

CREATE INDEX Stadiums 
ON local_of_the_games_table (local_Stadium_name, local_city_name);

CREATE INDEX Countries
ON Team_table (team_name, team_continent);

--Write a view with the join or union or any where that was created in PART II in the DDL file.
--DROP VIEW South_American_Teams;

CREATE VIEW South_American_Teams AS
SELECT team_name, team_continent
FROM Team_table
WHERE team_continent = 'South America'
ORDER BY team_name ASC




