/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */

SELECT country
FROM country
JOIN city  USING (country_id)
JOIN address USING (city_id)
JOIN customer USING (address_id)
GROUP BY country_id
ORDER BY COUNT(DISTINCT country_id) DESC
LIMIT 1;
