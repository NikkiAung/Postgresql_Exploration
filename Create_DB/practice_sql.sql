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
