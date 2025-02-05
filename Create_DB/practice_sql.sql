CREATE DATABASE name

CREATE TABLE partial_customers (
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	phone_number VARCHAR(20),
	address VARCHAR(255),
	city VARCHAR(50),
	state CHAR(2),
	zip_code CHAR(5)
);

CREATE TABLE partial_properties(
	 address VARCHAR(255),
	 city VARCHAR(50),
	 state CHAR(2),
	 description TEXT
)

CREATE TABLE real_estate_agents (
    id INTEGER,
    agent_name VARCHAR(100),
    phone_number VARCHAR(15),
    years_experience INTEGER,
    commission_rate DECIMAL(5,2)
);

CREATE TABLE properties (
    id SERIAL,
    address VARCHAR(255),
    city VARCHAR(50),
    state CHAR(2),
    zip_code CHAR(5),
    property_type VARCHAR(50),
    description TEXT,
    listing_price DECIMAL(12,2),
    bedrooms SMALLINT,
    bathrooms SMALLINT,
    square_feet INTEGER,
    year_built SMALLINT,
	is_available BOOLEAN,
	listing_date DATE,
	last_updated TIMESTAMP
);


INSERT INTO properties (
	address,
    city,
    state,
    zip_code,
    property_type,
    description,
    listing_price,
    bedrooms,
    bathrooms,
    square_feet,
    year_built,
    is_available
)
VALUES
('123 Main St', 'San Francisco', 'CA', '94105', 'Apartment', 'Spacious 2-bedroom apartment in downtown', 1200000.00, 2, 2, 1100, 2015, TRUE),
('456 Elm St', 'Los Angeles', 'CA', '90015', 'House', 'Cozy single-family home with a big backyard', 850000.00, 3, 2, 1800, 2008, FALSE),
('789 Pine St', 'Seattle', 'WA', '98101', 'Condo', 'Modern condo with city skyline views', 950000.00, 1, 1, 900, 2019, TRUE);


UPDATE properties
SET listing_date = '2024-01-15', last_updated = CURRENT_TIMESTAMP
WHERE address = '123 Main St';

UPDATE properties
SET listing_date = '2023-12-10', last_updated = CURRENT_TIMESTAMP
WHERE address = '456 Elm St';

UPDATE properties
SET listing_date = '2024-01-20', last_updated = CURRENT_TIMESTAMP
WHERE address = '789 Pine St';


SELECT * FROM review

CREATE TABLE review (
	id SERIAL PRIMARY KEY,
	agent_id INTEGER,
	review_text TEXT,
	rating SMALLINT
)

INSERT INTO
review
(
	agent_id,
	review_text,
	rating
)
VALUES
(
	1,
	'Great experience working with this agent!',
	5
)


SELECT * FROM real_estate_agents

UPDATE real_estate_agents
SET agent_name = 'Aung Gyi',
phone_number = '627-090-8908',
years_experience = 10,
comission_rate = 3.29,
status = 'active'
WHERE id = 5 

UPDATE real_estate_agents
SET comission_rate = 6.5
WHERE years_experience > 7

ALTER TABLE real_estate_agents
ADD COLUMN license_number VARCHAR(20)

UPDATE real_estate_agents
SET license_number = 'license_number_NA';

-- Select Hosts with More than 10 Listings:
SELECT 
h.host_name, h.id, COUNT(l.id)
FROM host AS h
INNER JOIN listings AS l ON h.id = l.host_id
GROUP BY h.id
HAVING COUNT(l.id) > 10

-- Can you write a SQL query that selects hosts with more than 10 listings, displaying their IDs,
-- names, and total number of listings, ordered by the total number of listings in ascending order?

-- The query should:
-- * Join the Host and Listings tables to associate listings with their respective hosts.
-- * Group the results by host ID.
-- * Use the HAVING clause to filter hosts with more than 10 listings.
-- * Order the results by the total number of listings in ascending order.

SELECT
h.id, h.host_name, COUNT(l.id) AS total_listings
FROM host AS h
INNER JOIN listings AS l on h.id = l.host_id
GROUP BY h.id
HAVING COUNT(l.id) > 10
ORDER BY total_listings ASC

