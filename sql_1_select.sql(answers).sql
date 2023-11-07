# SQL select query exercise
#
# World database layout:
# To use this database from a default MySQL install, type: use world;
#
# Table: City
# Columns: Id,Name,CountryCode,District,Population
#
# Table: Country
# Columns: Code, Name, Continent, Region, SurfaceArea, IndepYear, Population, LifeExpectancy, GNP, Capital
#
# Table: CountryLanguage
# Columns: CountryCode, Language, IsOfficial,Percentage
#
#
# 1: Get a query to return "Hello World", 123
# (Hint: 1 row, 2 columns)
SELECT "hello world" as message , 123 as id;
#
# 2: Get everything from the city table
# (Hint: Many many rows)
SELECT * from city;
#
# 3: Get everything on the cities whose district is "aceh"
# (Hint: 2 rows)
SELECT * FROM CITY WHERE DISTRICT = 'ACEH';	
#
# 4: Get only the name of the cities where the countrycode is "bfa"
SELECT NAME FROM CITY WHERE countrycode = 'bfa';
#
# 5: Get both the name and district of the cities where the countrycode is "tto"
SELECT NAME, DISTRICT FROM CITY WHERE countrycode = 'TTO';
#
# 6: Get the name and district named as nm,dist from the cities where the countrycode is "arm"
SELECT NAME AS NM, DISTRICT AS DIST FROM CITY WHERE COUNTRYCODE = 'ARM';
#
# 7: Get the cities with a name that starts with "bor"
SELECT * FROM CITY WHERE NAME LIKE 'bor%';
#
# 8: Get the cities with a name that contains the string "orto"
SELECT * FROM CITY WHERE NAME LIKE '%orto%';
#
# 9: Get the cities that has a population below 1000
SELECT * FROM CITY WHERE population < 1000;
#
# 10: Get the unique countrycodes from the cities that has a population below 1000
SELECT distinct COUNTRYCODE FROM CITY WHERE POPULATION < 1000;
#
# 11: Get the cities with the countrycode UKR that has more than 1000000 (one million) in population
SELECT * FROM CITY WHERE COUNTRYCODE = 'UKR' AND population > 1000000;
#
# 12: Get the cities with a population of below 200 or above 9500000 (9.5 million)
SELECT * FROM CITY WHERE POPULATION < 200 OR POPULATION > 9500000;
#
# 13: Get the cities with the countrycodes TJK, MRT, AND, PNG, SJM
SELECT * FROM CITY WHERE COUNTRYCODE IN ('TJK', 'MRT', 'AND', 'PNG', 'SJM');
#
# 14: Get the cities with a population between 200 and 700 inclusive
SELECT * FROM CITY WHERE POPULATION BETWEEN 200 AND 700;
#
# 15: Get the countries with a population between 8000 and 20000 inclusive
SELECT * FROM COUNTRY WHERE POPULATION BETWEEN 8000 AND 20000;
#
# 16: Get the name of the countries with a independence year (indepyear) before year 0
SELECT NAME FROM COUNTRY WHERE indepyear < 0;
#
# 17: Get the countries that has no recorded independence year and a population above 1000000
SELECT * FROM COUNTRY WHERE  indepyear IS NULL AND POPULATION > 1000000;
#
# 18: Get countries with a SurfaceArea below 10 and a defined LifeExpectancy
SELECT * FROM COUNTRY WHERE SurfaceArea < 10 AND LifeExpectancy IS NOT NULL;