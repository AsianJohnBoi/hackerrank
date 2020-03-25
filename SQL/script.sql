-- SELECT All
SELECT * FROM city;

-- Japanese Cities' Names
SELECT name 
FROM city 
WHERE countrycode='JPN';

-- Japanese Cities' Attributes
SELECT * 
FROM city 
WHERE countrycode='JPN';

-- Revising the SELECT Query I
SELECT * 
FROM CITY 
WHERE countrycode='USA' AND population > 100000;

-- Revising the SELECT Query II
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

-- Weather Observation Station 5
SELECT city,LENGTH(city) FROM (SELECT city,rownum AS rid 
                               FROM (SELECT city, LENGTH(city) FROM station 
                                     ORDER BY LENGTH(city),city)) 
                                     WHERE rid = 1 OR rid = 
                                     (SELECT MAX(rownum) FROM station);

-- Weather Observation Station 6
SELECT unique city FROM station 
WHERE city LIKE 'A%' OR city LIKE 'E%' OR city LIKE 'I%' OR city LIKE 'O%'OR city LIKE 'U%';

-- Weather Observation Station 7
SELECT unique city FROM station 
WHERE city LIKE '%a' OR city LIKE '%e' OR city LIKE '%i' OR city LIKE '%o'OR city LIKE '%u';

-- Weather Observation Station 8
SELECT DISTINCT city FROM station 
WHERE lower(substr(city, 1, 1)) IN ('a', 'e', 'i', 'o', 'u')
AND lower(substr(city, -1, 1)) IN ('a', 'e', 'i', 'o', 'u');

-- Weather Observation Station 9
SELECT DISTINCT city FROM station 
WHERE LOWER(SUBSTR(city,0,1)) NOT IN ('a','e','i','o','u');

-- Weather Observation Station 10
SELECT DISTINCT city FROM station 
WHERE LOWER(SUBSTR(city,-1,1)) NOT IN ('a','e','i','o','u');

-- Weather Observation Station 11
SELECT DISTINCT city FROM station 
WHERE SUBSTR(city,1,1) NOT IN ('A','E','I','O','U') or SUBSTR(CITY,-1,1) NOT IN ('a','e','i','o','u') order by city;


