/*
 * Write a SQL query SELECT query that:
 * List the first and last names of all actors who have appeared in movies in the "Children" category,
 * but that have never appeared in movies in the "Horror" category.
 *
 * HINT:
 * This requires joining from the category table down to the actor table.
 */

SELECT
    a."Actor Name"
    FROM (
        SELECT DISTINCT
            first_name || ' ' || last_name AS "Actor Name",
            a1.actor_id
            FROM category ca1
            JOIN film_category fc1 ON ca1.category_id = fc1.category_id
            JOIN film_actor fa1 ON fc1.film_id = fa1.film_id
            JOIN actor a1 ON fa1.actor_id = a1.actor_id
            WHERE
                ca1.category_id = 3
            ) AS a
    LEFT JOIN (
        SELECT DISTINCT
            first_name || ' ' || last_name AS "Actor Name",
            a1.actor_id
            FROM category ca1
            JOIN film_category fc1 ON ca1.category_id = fc1.category_id
            JOIN film_actor fa1 ON fc1.film_id = fa1.film_id
            JOIN actor a1 ON fa1.actor_id = a1.actor_id
            WHERE
                ca1.category_id = 11
            ) AS b ON a.actor_id = b.actor_id
     WHERE
        b.actor_id IS NULL
     ORDER BY a."Actor Name";
