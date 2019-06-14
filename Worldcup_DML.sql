-- Author: Marconi Fonseca
-- Date:Nov 2018


DELETE FROM Team_table;
DELETE FROM Players_table;
DELETE FROM Coach_table;
DELETE FROM local_of_the_games_table;
DELETE FROM many_Team_table_has_many_local_of_the_games_table;


-- Add data in Team Table
INSERT INTO Team_table( team_name , Team_Ranking_FIFA, Team_Number_of_Participation ,team_continent,team_Has_World_cup ) VALUES ( 'Brazil', '3', '14', 'South America' ,'Yes');
INSERT INTO Team_table( team_name , Team_Ranking_FIFA , Team_Number_of_Participation ,team_continent, team_Has_World_cup) VALUES ( 'Argentina', '2', '12', 'South America','Yes' );
INSERT INTO Team_table( team_name , Team_Ranking_FIFA , Team_Number_of_Participation ,team_continent,team_Has_World_cup ) VALUES ( 'Germany', '4', '13', 'EUROPE','Yes');
INSERT INTO Team_table( team_name , Team_Ranking_FIFA , Team_Number_of_Participation ,team_continent,team_Has_World_cup  ) VALUES ( 'Italy', '6', '12', 'EUROPE','Yes');
INSERT INTO Team_table( team_name , Team_Ranking_FIFA , Team_Number_of_Participation ,team_continent,team_Has_World_cup  ) VALUES ( 'Spain', '1', '12', 'EUROPE','Yes');
INSERT INTO Team_table( team_name , Team_Ranking_FIFA , Team_Number_of_Participation ,team_continent,team_Has_World_cup  ) VALUES ( 'Canada', '14', '6', 'North America','No');
INSERT INTO Team_table( team_name , Team_Ranking_FIFA , Team_Number_of_Participation ,team_continent,team_Has_World_cup  ) VALUES ( 'England', '5', '13', 'EUROPE','Yes');


-- Add  data in Players_table
INSERT INTO Players_table( player_Name , player_team , player_age,player_position ) VALUES ( 'Ronaldo Nazario', 'Brazil', '33','Forward');
INSERT INTO Players_table( player_Name , player_team , player_age,player_position ) VALUES ( 'Taffarel', 'Brazil', '39','Goalkeeper');
INSERT INTO Players_table( player_Name , player_team , player_age,player_position ) VALUES ( 'Lionel Messi', 'Argentina', '29','Forward');
INSERT INTO Players_table( player_Name , player_team , player_age,player_position ) VALUES ( 'Moroslav Klose', 'Germany', '39','Forward');
INSERT INTO Players_table( player_Name , player_team , player_age,player_position ) VALUES ( 'Totti', 'Italy', '34','Midfielder');
INSERT INTO Players_table( player_Name , player_team , player_age,player_position ) VALUES ( 'Andrés Iniesta', 'Spain', '35','Midfielder');
INSERT INTO Players_table( player_Name , player_team , player_age,player_position ) VALUES ( 'Alphonso Davies', 'Canada', '25','forward');
INSERT INTO Players_table( player_Name , player_team , player_age,player_position) VALUES ( 'Wayne Rooney', 'England ','30','forward');

-- Add Data in Coach_table
INSERT INTO Coach_table ( coach_name , coach_lastName,coach_age,coach_nationality   ) VALUES ( 'Fernando', 'Titte','55','Brazilian' );
INSERT INTO Coach_table ( coach_name , coach_lastName,coach_age,coach_nationality  ) VALUES ( 'Marcello','Galardo','60' , 'Argentines' );
INSERT INTO Coach_table ( coach_name , coach_lastName,coach_age,coach_nationality ) VALUES ( 'Joachim','Löw','44','German' );
INSERT INTO Coach_table ( coach_name , coach_lastName, coach_age,coach_nationality   ) VALUES ( 'Roberto','Mancini','52', 'Italian' );
INSERT INTO Coach_table ( coach_name , coach_lastName,coach_age,coach_nationality   ) VALUES ( 'Ricardo','Ferretti','40', 'Spanish ' );
INSERT INTO Coach_table ( coach_name , coach_lastName, coach_age,coach_nationality  ) VALUES ( 'John',' Herdman', '39', 'Canadian' );
INSERT INTO Coach_table ( coach_name , coach_lastName, coach_age,coach_nationality  ) VALUES ( 'Gareth', 'Southgate', '45', 'English' );

-- Add data in local_of_the_games_table 
INSERT INTO local_of_the_games_table( local_Stadium_name , Local_Stadium_capability , local_city_name ,local_date_game  ) VALUES ( 'Maracanâ ','90000','Rio de Janeiro', 'July 14 2014');
INSERT INTO local_of_the_games_table( local_Stadium_name , Local_Stadium_capability , local_city_name ,local_date_game  ) VALUES ( 'Mineirão ','50000','Belo Horizonte', 'July 16 2014');
INSERT INTO local_of_the_games_table( local_Stadium_name , Local_Stadium_capability , local_city_name ,local_date_game  ) VALUES ( 'Allianz Park ','100000','São Paulo', 'July 20 2014');
INSERT INTO local_of_the_games_table( local_Stadium_name , Local_Stadium_capability , local_city_name ,local_date_game  ) VALUES ( 'Beira Rio ','40000','Porto Alegre', 'July 24 2014');
INSERT INTO local_of_the_games_table( local_Stadium_name , Local_Stadium_capability , local_city_name ,local_date_game  ) VALUES ( 'Mané Garrincha ','80000',' Brasilia', 'July 29 2014');


