/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */

SELECT DISTINCT 
    country,
    count(*)
    from customer c1
    JOIN address a1 ON c1.address_id = a1.address_id
    JOIN city city1 ON a1.city_id = city1.city_id
    JOIN country cy1 ON city1.country_id = cy1.country_id
    GROUP BY country
    ORDER BY count(*) DESC
    LIMIT 1
    ;
