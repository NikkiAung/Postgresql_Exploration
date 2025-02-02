SELECT * FROM district

SELECT COUNT(*) FROM district

SELECT district_name, district_population FROM district ORDER BY district_population DESC

SELECT name, host_id, number_of_reviews FROM listings ORDER BY host_id ASC, number_of_reviews DESC;

SELECT * FROM district_attraction ORDER BY popularity_score DESC;

SELECT * FROM accommodation ORDER BY district_id ASC, total_accommodation DESC;