-- Clue #5: Oh no, she pulled a switch – there are two cities with very similar names, but in totally different
-- parts of the globe! She's headed to South America as we speak; go find a city whose name is like the one we were
-- headed to, but doesn't end the same. Find out the city, and do another search for what country it's in. Hurry!

-- SELECT * FROM city WHERE name LIKE 'Ser%';
SELECT * FROM city WHERE name LIKE 'Serra%' AND countrycode IN (SELECT code FROM country WHERE continent = 'South America');
-- Serra
SELECT name FROM country WHERE code = 'BRA';
-- Brazil
