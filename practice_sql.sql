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
