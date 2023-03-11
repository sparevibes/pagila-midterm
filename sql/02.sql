/*
 * Write a SQL query SELECT query that:
 * computes the country with the most customers in it. 
 */

SELECT DISTINCT country, COUNT(country_id) as number_customers
FROM customer
JOIN address USING (address_id)
JOIN city USING (city_id)
JOIN country USING (country_id)
GROUP BY country_id
ORDER BY number_customers DESC
LIMIT 1;
