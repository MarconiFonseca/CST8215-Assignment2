-- Database generated with pgModeler (PostgreSQL Database Modeler).
-- pgModeler  version: 0.9.1
-- PostgreSQL version: 10.0
-- Project Site: pgmodeler.io
-- Model Author: ---


-- Database creation must be done outside a multicommand file.
-- These commands were put in this file only as a convenience.
-- -- object: new_database | type: DATABASE --
-- -- DROP DATABASE IF EXISTS new_database;
-- CREATE DATABASE new_database;
-- -- ddl-end --
-- 

-- object: public."Team_table" | type: TABLE --
-- DROP TABLE IF EXISTS public."Team_table" CASCADE;
CREATE TABLE public."Team_table"(
	team_id bigserial NOT NULL,
	team_name char(50) NOT NULL,
	"Team_Ranking_FIFA" integer NOT NULL,
	"Team_Number_of_Participation" int2,
	CONSTRAINT "Team_table_pk" PRIMARY KEY (team_id)

);
-- ddl-end --
ALTER TABLE public."Team_table" OWNER TO postgres;
-- ddl-end --

-- object: public."Players_table" | type: TABLE --
-- DROP TABLE IF EXISTS public."Players_table" CASCADE;
CREATE TABLE public."Players_table"(
	player_id bigserial NOT NULL,
	player_name char(50) NOT NULL,
	player_age integer NOT NULL,
	player_position char(50) NOT NULL,
	"team_id_Team_table" bigint NOT NULL,
	CONSTRAINT "Players_table_pk" PRIMARY KEY (player_id)

);
-- ddl-end --
ALTER TABLE public."Players_table" OWNER TO postgres;
-- ddl-end --

-- object: public."Coach_table" | type: TABLE --
-- DROP TABLE IF EXISTS public."Coach_table" CASCADE;
CREATE TABLE public."Coach_table"(
	coach_id bigserial NOT NULL,
	coach_name char(50) NOT NULL,
	"coach_lastName" char(50) NOT NULL,
	coach_age int2 NOT NULL,
	coach_nationality char(50) NOT NULL,
	"team_id_Team_table" bigint NOT NULL,
	CONSTRAINT "Coach_table_pk" PRIMARY KEY (coach_id)

);
-- ddl-end --
ALTER TABLE public."Coach_table" OWNER TO postgres;
-- ddl-end --

-- object: public.local_of_the_games_table | type: TABLE --
-- DROP TABLE IF EXISTS public.local_of_the_games_table CASCADE;
CREATE TABLE public.local_of_the_games_table(
	local_id bigserial NOT NULL,
	local_name char(50) NOT NULL,
	local_city_name char(50) NOT NULL,
	local_date_game date NOT NULL,
	CONSTRAINT local_of_the_games_table_pk PRIMARY KEY (local_id)

);
-- ddl-end --
ALTER TABLE public.local_of_the_games_table OWNER TO postgres;
-- ddl-end --

-- object: "Team_table_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Players_table" DROP CONSTRAINT IF EXISTS "Team_table_fk" CASCADE;
ALTER TABLE public."Players_table" ADD CONSTRAINT "Team_table_fk" FOREIGN KEY ("team_id_Team_table")
REFERENCES public."Team_table" (team_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: "Team_table_fk" | type: CONSTRAINT --
-- ALTER TABLE public."Coach_table" DROP CONSTRAINT IF EXISTS "Team_table_fk" CASCADE;
ALTER TABLE public."Coach_table" ADD CONSTRAINT "Team_table_fk" FOREIGN KEY ("team_id_Team_table")
REFERENCES public."Team_table" (team_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: "Coach_table_uq" | type: CONSTRAINT --
-- ALTER TABLE public."Coach_table" DROP CONSTRAINT IF EXISTS "Coach_table_uq" CASCADE;
ALTER TABLE public."Coach_table" ADD CONSTRAINT "Coach_table_uq" UNIQUE ("team_id_Team_table");
-- ddl-end --

-- object: public."many_local_of_the_games_table_has_many_Team_table" | type: TABLE --
-- DROP TABLE IF EXISTS public."many_local_of_the_games_table_has_many_Team_table" CASCADE;
CREATE TABLE public."many_local_of_the_games_table_has_many_Team_table"(
	local_id_local_of_the_games_table bigint NOT NULL,
	"team_id_Team_table" bigint NOT NULL,
	CONSTRAINT "many_local_of_the_games_table_has_many_Team_table_pk" PRIMARY KEY (local_id_local_of_the_games_table,"team_id_Team_table")

);
-- ddl-end --

-- object: local_of_the_games_table_fk | type: CONSTRAINT --
-- ALTER TABLE public."many_local_of_the_games_table_has_many_Team_table" DROP CONSTRAINT IF EXISTS local_of_the_games_table_fk CASCADE;
ALTER TABLE public."many_local_of_the_games_table_has_many_Team_table" ADD CONSTRAINT local_of_the_games_table_fk FOREIGN KEY (local_id_local_of_the_games_table)
REFERENCES public.local_of_the_games_table (local_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: "Team_table_fk" | type: CONSTRAINT --
-- ALTER TABLE public."many_local_of_the_games_table_has_many_Team_table" DROP CONSTRAINT IF EXISTS "Team_table_fk" CASCADE;
ALTER TABLE public."many_local_of_the_games_table_has_many_Team_table" ADD CONSTRAINT "Team_table_fk" FOREIGN KEY ("team_id_Team_table")
REFERENCES public."Team_table" (team_id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --


