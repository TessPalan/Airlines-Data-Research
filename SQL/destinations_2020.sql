DROP TABLE IF EXISTS destinations_2020;

CREATE TABLE destinations_2020 (
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

-- Number of flights in 2020
CREATE VIEW num_flights_2020 AS (
SELECT 
	COUNT(destinations_2020.Destination_Airport) as num_flights_2020
FROM 
	destinations_2020
);

-- 5 Most traveled to destinations in 2020
CREATE VIEW top_5_destinations_2020 AS (
SELECT 
	destinations_2020.Destination_Airport,
	COUNT(destinations_2020.Destination_Airport) 
FROM 
	destinations_2020
GROUP BY
	destinations_2020.Destination_Airport
ORDER BY 
	COUNT(destinations_2020.Destination_Airport) DESC
LIMIT 
	5
);

-- 5 Least traveled to destinations in 2020
CREATE VIEW least_5_destinations_2020 AS (
SELECT 
	destinations_2020.Destination_Airport,
	COUNT(destinations_2020.Destination_Airport) 
FROM 
	destinations_2020
GROUP BY
	destinations_2020.Destination_Airport
ORDER BY 
	COUNT(destinations_2020.Destination_Airport) ASC
LIMIT 
	5
);

-- 5 Most used airlines in 2020
CREATE VIEW most_used_airlines_2020 AS (
SELECT 
	destinations_2020.Airline_Code,
	COUNT(destinations_2020.Airline_Code) 
FROM 
	destinations_2020
GROUP BY
	destinations_2020.Airline_Code
ORDER BY 
	COUNT(destinations_2020.Airline_Code) DESC
LIMIT 
	5
);

-- 5 Most least used airlines in 2020
CREATE VIEW least_used_airlines_2020 AS (
SELECT 
	destinations_2020.Airline_Code,
	COUNT(destinations_2020.Airline_Code) 
FROM 
	destinations_2020
GROUP BY
	destinations_2020.Airline_Code
ORDER BY 
	COUNT(destinations_2020.Airline_Code) ASC
LIMIT 
	5
);


-- 5 Most traveled to destinations in 2020 Quarter 3
CREATE VIEW top_5_destinations_3_2020 AS (
SELECT 
	destinations_2020.Destination_Airport,
	COUNT(destinations_2020.Destination_Airport) 
FROM 
	destinations_2020
WHERE
	destinations_2020.Quarter = '3'
GROUP BY
	destinations_2020.Destination_Airport
ORDER BY 
	COUNT(destinations_2020.Destination_Airport) DESC
LIMIT 
	5
);

-- 5 Most traveled to destinations in 2020 Quarter 2
CREATE VIEW top_5_destinations_2_2020 AS (
SELECT 
	destinations_2020.Destination_Airport,
	COUNT(destinations_2020.Destination_Airport) 
FROM 
	destinations_2020
WHERE
	destinations_2020.Quarter = '2'
GROUP BY
	destinations_2020.Destination_Airport
ORDER BY 
	COUNT(destinations_2020.Destination_Airport) DESC
LIMIT 
	5
);

-- 5 Most traveled to destinations in 2020 Quarter 1
CREATE VIEW top_5_destinations_1_2020 AS (
SELECT 
	destinations_2020.Destination_Airport,
	COUNT(destinations_2020.Destination_Airport) 
FROM 
	destinations_2020
WHERE
	destinations_2020.Quarter = '1'
GROUP BY
	destinations_2020.Destination_Airport
ORDER BY 
	COUNT(destinations_2020.Destination_Airport) DESC
LIMIT 
	5
);


-- Number of flights in both 2019-2020
CREATE VIEW num_flights_yearly AS (
with flights_2020 as (
	SELECT 
		COUNT(destinations_2020.Destination_Airport) as num_flights_2020
	FROM 
		destinations_2020
), flights_2019 as (
	SELECT
		COUNT(destinations_2019.Destination_Airport) as num_flights_2019
	FROM
		destinations_2019
)
SELECT 
	*
FROM 
	flights_2019, flights_2020
)