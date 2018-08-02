
SELECT movies.*, stars.*, castings.fee FROM movies
INNER JOIN castings
ON movies.id = castings.movie_id
INNER JOIN stars
ON stars.id =  castings.star_id;
