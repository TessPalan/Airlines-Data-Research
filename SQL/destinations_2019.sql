DROP TABLE IF EXISTS destinations_2019;

CREATE TABLE destinations_2019 (
	Year INT,
	Quarter INT,
	Origin_Airport VARCHAR,
	Origin_Country VARCHAR,
	Origin_State VARCHAR,
	Destination_Airport VARCHAR,
	Destination_Country VARCHAR,
	Destination_State VARCHAR,
	Airline_Code VARCHAR
);

-- Number of flights in 2019
CREATE VIEW num_flights_2019 AS (
SELECT 
	COUNT(destinations_2019.Destination_Airport) as num_flights_2019
FROM 
	destinations_2019
);

-- 5 Most traveled to destinations in 2019
CREATE VIEW top_5_destinations_2019 AS (
SELECT 
	destinations_2019.Destination_Airport,
	COUNT(destinations_2019.Destination_Airport) 
FROM 
	destinations_2019
GROUP BY
	destinations_2019.Destination_Airport
ORDER BY 
	COUNT(destinations_2019.Destination_Airport) DESC
LIMIT 
	5
);

-- 5 Least traveled to destinations in 2019
CREATE VIEW least_5_destinations_2019 AS (
SELECT 
	destinations_2019.Destination_Airport,
	COUNT(destinations_2019.Destination_Airport) 
FROM 
	destinations_2019
GROUP BY
	destinations_2019.Destination_Airport
ORDER BY 
	COUNT(destinations_2019.Destination_Airport) ASC
LIMIT 
	5
);


-- 5 Most used airlines in 2019
CREATE VIEW most_used_airlines_2019 AS (
SELECT 
	destinations_2019.Airline_Code,
	COUNT(destinations_2019.Airline_Code) 
FROM 
	destinations_2019
GROUP BY
	destinations_2019.Airline_Code
ORDER BY 
	COUNT(destinations_2019.Airline_Code) DESC
LIMIT 
	5
);

-- 5 Least used airlines in 2019
CREATE VIEW least_used_airlines_2019 AS (
SELECT 
	destinations_2019.Airline_Code,
	COUNT(destinations_2019.Airline_Code) 
FROM 
	destinations_2019
GROUP BY
	destinations_2019.Airline_Code
ORDER BY 
	COUNT(destinations_2019.Airline_Code) ASC
LIMIT 
	5
);

-- 5 Most traveled to destinations in 2019 Quarter 4
CREATE VIEW top_5_destinations_4_2019 AS (
SELECT 
	destinations_2019.Destination_Airport,
	COUNT(destinations_2019.Destination_Airport) 
FROM 
	destinations_2019
WHERE
	destinations_2019.Quarter = '4'
GROUP BY
	destinations_2019.Destination_Airport
ORDER BY 
	COUNT(destinations_2019.Destination_Airport) DESC
LIMIT 
	5
);

-- 5 Most traveled to destinations in 2019 Quarter 3
CREATE VIEW top_5_destinations_3_2019 AS (
SELECT 
	destinations_2019.Destination_Airport,
	COUNT(destinations_2019.Destination_Airport) 
FROM 
	destinations_2019
WHERE
	destinations_2019.Quarter = '3'
GROUP BY
	destinations_2019.Destination_Airport
ORDER BY 
	COUNT(destinations_2019.Destination_Airport) DESC
LIMIT 
	5
);

-- 5 Most traveled to destinations in 2019 Quarter 2
CREATE VIEW top_5_destinations_2_2019 AS (
SELECT 
	destinations_2019.Destination_Airport,
	COUNT(destinations_2019.Destination_Airport) 
FROM 
	destinations_2019
WHERE
	destinations_2019.Quarter = '2'
GROUP BY
	destinations_2019.Destination_Airport
ORDER BY 
	COUNT(destinations_2019.Destination_Airport) DESC
LIMIT 
	5
);

-- 5 Most traveled to destinations in 2019 Quarter 1
CREATE VIEW top_5_destinations_1_2019 AS (
SELECT 
	destinations_2019.Destination_Airport,
	COUNT(destinations_2019.Destination_Airport) 
FROM 
	destinations_2019
WHERE
	destinations_2019.Quarter = '1'
GROUP BY
	destinations_2019.Destination_Airport
ORDER BY 
	COUNT(destinations_2019.Destination_Airport) DESC
LIMIT 
	5
);

