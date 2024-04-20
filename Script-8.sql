CREATE OR REPLACE PROCEDURE insert_film(
    title VARCHAR(255),
    description TEXT,
    release_year INT,
    language_id INT,
    rental_duration INT,
    rental_rate NUMERIC(4,2),
    length INT,
    replace_cost NUMERIC(5,2),
    rating VARCHAR 
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating)
    VALUES (title, description, release_year, language_id, rental_duration, rental_rate, length, replace_cost, rating::mpaa_rating);
END;
$$;


SELECT *
FROM film f 







CREATE OR REPLACE FUNCTION count_films_in_category(p_category_id INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
	DECLARE film_count INT;
BEGIN
    SELECT COUNT(*)
    INTO film_count
    FROM film_category
    WHERE category_id = p_category_id;
	RETURN film_count;
END;
$$;