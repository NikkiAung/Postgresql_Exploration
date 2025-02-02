SELECT * FROM district

SELECT COUNT(*) FROM district

SELECT district_name, district_population FROM district ORDER BY district_population DESC

SELECT name, host_id, number_of_reviews FROM listings ORDER BY host_id ASC, number_of_reviews DESC;

SELECT * FROM district_attraction ORDER BY popularity_score DESC;

SELECT * FROM accommodation ORDER BY district_id ASC, total_accommodation DESC;

SELECT tourist_destination, popularity_score FROM district_attraction WHERE popularity_score = 5

-- Count the total listings from "listing" table where
-- the room_type column not equals to 'Private room'
-- and the district_id column equals 2

SELECT 
COUNT(*)
FROM listings
WHERE 
NOT room_type = 'Private room' AND district_id = 2

-- Count the total reviews from "reviews" table where the sentiment
-- is neither 'Good' nor 'Bad'
SELECT
COUNT(*)
FROM reviews
WHERE NOT sentiment = 'Good' AND NOT sentiment = 'Bad'


-- Select the names of customers whose names start with 'J'
-- followed by exactly four characters
SELECT customer_name
FROM customer
WHERE customer_name LIKE 'J____'



-- Select the names of districts along with their populations
-- where the district name starts with 'P' and ends with 'n'
SELECT
district_name, district_population
FROM district
WHERE district_name LIKE 'P%n'

-- Find all districts with a population between 50,000 and 100,000
SELECT *
FROM district
WHERE district_population BETWEEN 50000 and 100000

-- Selecting name, district_id, price, minimum_nights columns
-- from the listings table, where minimum_nights is between 3 and 7
-- and district_id is either 5, 6, or 7, and
-- ordering the results by minimum_nights in ascending order
SELECT 
name, district_id, price, minimum_nights
FROM listings
WHERE minimum_nights BETWEEN 3 and 7 AND district_id in (5, 6, 7)
ORDER BY minimum_nights ASC;

-- Select the top 5 districts with the largest populations
SELECT district_name
FROM district
ORDER BY district_population DESC
LIMIT 5
