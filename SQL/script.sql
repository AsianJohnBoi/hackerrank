-- Select All
SELECT * FROM city;

-- Japanese Cities' Names
SELECT name 
FROM city 
WHERE countrycode='JPN';

-- Japanese Cities' Attributes
SELECT * 
FROM city 
WHERE countrycode='JPN';

-- Revising the Select Query I
SELECT * 
FROM CITY 
WHERE countrycode='USA' AND population > 100000;

-- Revising the Select Query II
SELECT name 
FROM city 
WHERE countrycode='USA' AND population > 120000;

-- Weather Observation Station 1
SELECT city, state 
FROM station;

-- Weather Observation Station 3
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;

-- Weather Observation Station 4
SELECT COUNT(*) - COUNT(DISTINCT city) 
FROM station;

-- Weather Observation Station 6
SELECT unique city FROM station 
WHERE city LIKE 'A%' OR city LIKE 'E%' OR city LIKE 'I%' OR city LIKE 'O%'OR city LIKE 'U%';

-- Weather Observation Station 7
SELECT unique city FROM station 
WHERE city LIKE '%a' OR city LIKE '%e' OR city LIKE '%i' OR city LIKE '%o'OR city LIKE '%u';

