-- Clue #3: We have new news on the classes Carmen attended – our gumshoes tell us she's moved on
-- to a different country, a country where people speak only the language she was learning. Find out which
--  nearby country speaks nothing but that language.

-- SELECT * FROM countrylanguage WHERE language = 'Italian' AND percentage = 100; 
SELECT name from country WHERE code = (SELECT countrycode FROM countrylanguage WHERE language = 'Italian' AND percentage = 100); 

-- San Marino