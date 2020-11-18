SELECT people.name FROM movies
JOIN stars ON movies.id = stars.movie_id
JOIN people on stars.person_id = people.id
WHERE movies.id IN (SELECT stars.movie_id
FROM stars JOIN people ON stars.person_id =
people.id WHERE people.name = 'Kevin Bacon'
AND people.birth = 1958) AND people.id NOT IN
(SELECT id FROM people
WHERE name = 'Kevin Bacon' AND birth = 1958)
GROUP BY people.id;