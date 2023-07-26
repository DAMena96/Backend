/* 1. Selecciona las columnas film_id y title de la tabla film.
SELECT film_id,title
FROM film;
*/

/* 2. Selecciona 5 filas de la tabla film, obteniendo todas las columnas.
SELECT *
FROM film
LIMIT 5;
*/

/* 3. Selecciona filas de la tabla film donde film_id sea menor que 4.
SELECT *
FROM film
WHERE film_id < 4;
*/

/* 4. Selecciona filas de la tabla film donde el rating sea PG o G.
SELECT *
FROM film
WHERE rating = 'PG' OR rating = 'G';
*/

/* 5.  Selecciona filas de la tabla actor donde el nombre sea Angela, Angelina o Audrey usando IN.
SELECT *
FROM actor
WHERE first_name IN ('Angela', 'Angelina', 'Audrey');
*/

/* 6. Obtenga una lista de actores con el nombre de Julia.
SELECT * FROM actor
WHERE first_name = 'Julia';
*/

/* 7. Obtenga una lista de actores con el nombre Chris, Cameron o Cuba.
SELECT first_name
FROM actor
WHERE first_name IN ('Chris', 'Cameron', 'Cuba');
*/

/* 8. Seleccione la fila del cliente para el cliente llamado Jamie Rice

SELECT *
FROM customer
WHERE first_name = 'Jamie' AND last_name = 'Rice';
*/

/* 9. Seleccione el monto y la fecha de pago del pago fue inferior a $ 1.

SELECT amount, payment_date
FROM payment
WHERE amount < 1;
*/

/* 11. Ordena las filas en la tabla city por country_id y luego por city.
SELECT *
FROM city
ORDER BY country_id, city;
*/

/* 12. ¿Cuáles son los ID de los últimos 3 clientes para devolver un alquiler?

SELECT customer_id
FROM rental
ORDER BY rental_id DESC LIMIT 3;
*/

/* 13. ¿Cuántas películas tienen la clasificación NC-17? ¿Cuántos están
clasificados como PG o PG-13?

SELECT 
    (SELECT COUNT(*) FROM film WHERE rating = 'NC-17') AS cantidad_nc17,
    (SELECT COUNT(*) FROM film WHERE rating = 'PG' OR rating = 'PG-13') AS cantidad_pg_pg13;
*/

/* 14. ¿Cuántos clientes diferentes tienen registros en la tabla rental?
SELECT COUNT(DISTINCT customer_id) AS total_clients
FROM rental;
*/

/* 15. ¿Hay algún cliente con el mismo apellido?
SELECT last_name, COUNT(*) AS count
FROM customer
GROUP BY last_name
HAVING COUNT(*) > 1;
*/

/* 16. ¿Qué película (id) tiene la mayor cantidad de actores?
SELECT film_id, COUNT(*) AS actor_count
FROM film_actor
GROUP BY film_id
ORDER BY actor_count DESC
LIMIT 1;
*/

/* 17. ¿Qué actor (id) aparece en la mayor cantidad de películas?
SELECT actor_id, COUNT(*) AS movie_count
FROM film_actor
GROUP BY actor_id
ORDER BY movie_count DESC
LIMIT 1;
*/

/* 18. Cuenta el número de ciudades para cada country_id en la tabla city. Ordena los resultados por count(*).

SELECT country_id, COUNT(*) AS city_count
FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC;
*/

/* 19. ¿Cuál es la tarifa de alquiler promedio de las películas? ¿Puedes redondear el resultado a 2 decimales?

SELECT ROUND(AVG(rental_rate), 2) AS tarifa_promedio
FROM film;
*/

/* 20. Selecciona los 10 actores que tienen los nombres más largos (nombre y apellido combinados).

SELECT actor_id, CONCAT(first_name, ' ', last_name) AS Nombrecombinado
FROM actor
ORDER BY LENGTH(CONCAT(first_name, last_name)) DESC
LIMIT 10;
*/