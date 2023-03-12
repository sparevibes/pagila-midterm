/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query SELECT query that:
 * Lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 * (You may choose to either include or exclude the movie 'AMERICAN CIRCUS' in the results.)
 */


SELECT
   film.title
FROM film
JOIN film_actor fa ON film.film_id = fa.film_id
JOIN film_actor fa2 ON fa2.actor_id = fa.actor_id
JOIN film film2 ON film2.film_id = fa2.film_id
WHERE film2.title = 'AMERICAN CIRCUS'
 AND film.title != 'AMERICAN CIRCUS'
GROUP BY film.title
HAVING
   count(*)>2
ORDER BY film.title
