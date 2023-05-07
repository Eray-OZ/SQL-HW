-- İsminde en az 4 tane e veya E bulunan kaç film vardır?
SELECT COUNT(*) FROM film
WHERE title ILIKE '%e%e%e%e%'







-- Kategori isimlerini ve kategori başına düşen film sayısını yazınız.
SELECT name, COUNT(*) FROM category
INNER JOIN film_category ON category.category_id = film_category.category_id
INNER JOIN film ON film_category.film_id = film.film_id
GROUP BY name







-- En çok film bulunan rating kategorisi hangisidir?
SELECT rating, COUNT(*) FROM film
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 1;







-- Film tablosunda 'K' karakteri ile başlayan en uzun ve replacement_cost en az olan 3 filmi sıralayınız?
SELECT title, length, replacement_cost FROM film
WHERE title LIKE 'K%'
ORDER BY length DESC, replacement_cost ASC
LIMIT 3;







-- En çok alışveriş yapan müşterinin adı nedir?
SELECT CONCAT(customer.first_name,' ',customer.last_name) AS Name, SUM(amount) FROM payment
JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY Name
ORDER BY SUM(amount) DESC
LIMIT 1;
