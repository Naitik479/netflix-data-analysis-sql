

DROP TABLE IF EXISTS netflix;
CREATE TABLE netflix
(
    show_id      VARCHAR(10),
    type         VARCHAR(10),
    title        VARCHAR(250),
    director     VARCHAR(550),
    casts        VARCHAR(1050),
    country      VARCHAR(550),
    date_added   VARCHAR(55),
    release_year INT,
    rating       VARCHAR(15),
    duration     VARCHAR(15),
    listed_in    VARCHAR(250),
    description  VARCHAR(800)
);

SELECT * FROM netflix;

SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'netflix';

-- 1. Count the Number of Movies vs TV Shows

SELECT type, 
COUNT(*) 
FROM netflix
GROUP BY type;

SELECT TYPE, 
COUNT(TYPE) FROM netflix
GROUP BY TYPE;

-- Find the Most Common Rating for Movies and TV Shows

SELECT rating, 
COUNT(rating) AS counts
FROM netflix
GROUP BY rating
ORDER BY counts DESC
LIMIT 1;

-- 3. List All Movies Released in a Specific Year (e.g., 2020)

SELECT title AS namess
FROM netflix 
WHERE release_year = 2020;


-- 4. NUMBER OF MOVIES RELEASED (TOP 10)

SELECT release_year AS year_released,
COUNT(title) AS counts
FROM netflix
GROUP BY year_released
ORDER BY COUNTS DESC
LIMIT 10;

-- 5. Find the Top 5 Countries with the Most Content on Netflix

SELECT DISTINCT country FROM netflix;


-- 6. Identify the Longest Movie

SELECT title, duration
FROM netflix
WHERE type = 'Movie'
AND duration IS NOT NULL
ORDER BY duration DESC;


-- 7. Find Content Added in the Last 10 Years

SELECT release_year AS year_released,
COUNT(title) AS counts
FROM netflix
GROUP BY year_released
ORDER BY year_released DESC
LIMIT 10;

-- 8. Top 10 long Duration of movies 

SELECT duration AS durr,
COUNT(*) AS total
FROM netflix
WHERE type = 'Movie'
GROUP BY duration
ORDER BY total DESC
limit 10;

-- 9. Top 10 directers( by number of content released)

SELECT director,
COUNT(title) AS cou
FROM netflix
GROUP BY director
ORDER BY cou DESC
LIMIT 11
;

-- 10. Order of TV season based on number of season.

SELECT duration as number_of_season,
count(title) as cou
from netflix
where type = 'TV Show'
group by number_of_season
order by cou DESC;


-- 11. List All Movies that are Documentaries
SELECT * 
FROM netflix
WHERE listed_in LIKE 'Documentaries';

-- 12. Find How Many Movies Actor 'Salman Khan' Appeared in the Last 10 Years

SELECT * 
FROM netflix
WHERE casts LIKE '%Salman Khan%'
AND release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10;

-- 13. Categorize Content Based on the Presence of 'Kill' and 'Violence' Keywords

SELECT 
category,
COUNT(*) AS content_count
FROM (
SELECT 
CASE 
WHEN description ILIKE '%kill%' OR description ILIKE '%violence%' THEN 'VOILENCE'
ELSE 'NON-VOILENCE'
END AS category
FROM netflix
) 
AS categorized_content
GROUP BY category;



