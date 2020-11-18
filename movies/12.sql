SELECT title FROM movies
JOIN stars ON movies.id = stars.movie_id
JOIN people on stars.person_id = people.id
WHERE people.name = 'Johnny Depp' AND
movies.id IN ( SELECT stars.movie_id
FROM stars JOIN people ON stars.person_id =
people.id WHERE people.name = 'Helena Bonham Carter');