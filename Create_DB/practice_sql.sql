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

