CREATE VIEW top_5_destinations AS (
with top_5_2020 as (
	SELECT 
		destinations_2020.Destination_Airport as destination_airport_2020,
		COUNT(destinations_2020.Destination_Airport) as count_2020
	FROM 
		destinations_2020
	GROUP BY
		destinations_2020.Destination_Airport
	ORDER BY 
		COUNT(destinations_2020.Destination_Airport) DESC
	LIMIT
		5
), top_5_2019 as (
	SELECT 
		destinations_2019.Destination_Airport destination_airport_2019,
		COUNT(destinations_2019.Destination_Airport) as count_2019
	FROM 
		destinations_2019
	GROUP BY
		destinations_2019.Destination_Airport
	ORDER BY 
		COUNT(destinations_2019.Destination_Airport) DESC
	LIMIT
		5
), top_5_2020_ranked as (
	SELECT 
		*,
		ROW_NUMBER() OVER(ORDER BY count_2020 DESC) as ranked_2020
	FROM 
		top_5_2020
), top_5_2019_ranked as (
	SELECT 
		*,
		ROW_NUMBER() OVER(ORDER BY count_2019 DESC) as ranked_2019
	FROM 
		top_5_2019
)
	
SELECT 
	*
FROM 
	top_5_2019_ranked 
	LEFT JOIN top_5_2020_ranked ON
		top_5_2020_ranked.ranked_2020 = top_5_2019_ranked.ranked_2019	
)