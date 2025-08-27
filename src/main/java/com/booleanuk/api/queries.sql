--Show the title and director name for all films
SELECT f.title AS movie_title, d.name AS directors_name
FROM films f
JOIN directors d On f.directorsId = d.id

--Show the title, director and star name for all films
SELECT f.title AS movie_title, d.name AS directors_name, s.name AS star_name
FROM films f
LEFT JOIN directors d ON d.id = f.directorsId
LEFT JOIN stars s ON f.starsId = s.id

--Show the title of films where the director is from the USA
SELECT f.title
FROM films f
JOIN directors d ON d.id = f.directorsId
WHERE d.country = 'USA'

--Show only those films where the writer and the director are the same person
SELECT f.title, w.name, d.name
FROM films f
join writers w on w.id = f.writersId
JOIN directors d ON d.id = f.directorsId
WHERE d.name = w.name

--Show directors and film titles for films with a score of 8 or higher
SELECT f.title, d.name, f.rating
FROM films f
JOIN directors d ON d.id = f.directorsId
WHERE f.rating >= 8

--Make at least 5 more queries to demonstrate your understanding of joins, and other relationships between tables.

--directors and how many films they have directed
SELECT d.name as Name, COUNT(f.id) as Movies
from directors d
Join films f on d.id = f.directorsId
GROUP BY d.name

-- stars in the 1990s
SELECT s.name as Name, f.release_year as Year
from stars s
Join films f on s.id = f.starsId
where f.release_year <2000 and f.release_year >=1990

-- calculate age of stars
select name, EXTRACT(YEAR FROM AGE(date_of_birth)) as age
from stars

-- countries with their rating ordered desc
SELECT d.country as Country, AVG(f.rating) as Average_rating
from directors d
Join films f on f.directorsId = d.id
GROUP BY d.country
ORDER BY Average_rating DESC

-- showing the the directors as well as the titles of their movies if they also wrote the movie they directed
SELECT
  CASE WHEN d.name = w.name THEN f.title ELSE '' END AS title,
  d.name AS director_name
FROM directors d
LEFT JOIN films f ON d.id = f.directorsId
LEFT JOIN writers w ON w.id = f.writersId;




