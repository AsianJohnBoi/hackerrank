-- Select All
SELECT * FROM city;

-- Japanese Cities' Names
SELECT name 
FROM city 
where countrycode='JPN';

-- Japanese Cities' Attributes
SELECT * 
FROM city 
where countrycode='JPN';

-- Revising the Select Query I
SELECT * 
FROM CITY 
WHERE countrycode='USA' AND population > 100000;

-- Revising the Select Query II
SELECT name 
FROM city 
where countrycode='USA' AND population > 120000;

-- Weather Observation Station 1
SELECT city, state 
FROM station;

-- Weather Observation Station 3
SELECT DISTINCT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;

-- Weather Observation Station 3
SELECT COUNT(*) - COUNT(DISTINCT city) FROM station;