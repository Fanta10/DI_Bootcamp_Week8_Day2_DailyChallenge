-- Database: dailyChallenge

-- DROP DATABASE IF EXISTS "dailyChallenge";

CREATE DATABASE "dailyChallenge"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
-- 	create table FirstTab
	CREATE TABLE FirstTab(
     id integer, 
     name VARCHAR(10)
);

-- Insert data in FirstTab
INSERT INTO FirstTab VALUES
(5,'Pawan'),
(6,'Sharlee'),
(7,'Krish'),
(NULL,'Avtaar');

-- Select FirstTab's data
SELECT * FROM FirstTab;

-- create table secondTab
CREATE TABLE SecondTab (
    id integer 
);

INSERT INTO SecondTab VALUES
(5),
(NULL);


SELECT * FROM SecondTab;

Quiz 1.
SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id
	NOT IN ( SELECT id FROM SecondTab WHERE id IS NULL );
-- 	le resultat de cette requete consistera à recuperer le nombre d'enregistrement de la table 
firstTab qui n'ont pas leur ID egal à NULL dans la table SecondTab.
-- resultat de la requete 1 est : count 0

Quiz 2.
SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id 
	FROM SecondTab WHERE id = 5 );
	-- 	le resultat de cette requete consistera à recuperer le nombre d'enregistrement de la table 
firstTab dont leur ID est different de 5.

-- resultat de la requete 2 est : count 2

Quiz 3.
SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab );
-- 	le resultat de cette requete consistera à recuperer le nombre d'enregistrement de la table 
firstTab dont leur ID est different de 5 et NULL.

-- resultat de la requete 3 est : count 0

Quiz 4.
  SELECT COUNT(*) 
    FROM FirstTab AS ft WHERE ft.id NOT IN ( SELECT id FROM SecondTab 
	WHERE id IS NOT NULL);
	
-- 	le resultat de cette requete consistera à recuperer le nombre d'enregistrement de la table 
firstTab dont leur ID est different de 5.

-- resultat de la requete 4 est : count 2
