DROP TABLE IF EXISTS rating;

CREATE TABLE rating (
Airline VARCHAR,
Code VARCHAR,
Revenue INT
);

CREATE VIEW top_5_airlines AS (
SELECT 
	rating.airline,
	rating.code,
	rating.revenue
FROM 
	rating 
ORDER BY 
	rating.revenue DESC
LIMIT 
	5
);

CREATE VIEW average_revenue AS (
SELECT 
	AVG(rating.revenue) AS average_revenue
FROM 
	rating 
);

CREATE VIEW bottom_5_airlines AS (
SELECT 
	rating.airline, 
	rating.revenue
FROM 
	rating 
ORDER BY 
	rating.revenue ASC
LIMIT 5
);

CREATE VIEW total_revenue AS (
SELECT 
	SUM(rating.revenue) AS total_revenue
FROM 
	rating 
);
