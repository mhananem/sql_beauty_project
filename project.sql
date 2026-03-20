
CREATE TABLE IF NOT EXISTS beautyproject_world (
product_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
product_name VARCHAR (50),
price_usd DECIMAL (10,2),
rating DECIMAL (3,2),
number_of_reviews INT,
gender_target VARCHAR (10),
cruelty_free VARCHAR (10),
country_of_origin VARCHAR (15),
gender_id INT,
country_id INT,
FOREIGN KEY (country_id) REFERENCES country (country_id),
FOREIGN KEY (gender_id) REFERENCES gender (gender_id)
);

SELECT 
    c.eu,
    COUNT(*) AS total_cruelty_free_products
FROM beautyproject_world bw
JOIN country c 
    ON bw.country_id = c.country_id
WHERE bw.cruelty_free = '1'
GROUP BY c. eu
;

SELECT * FROM beautyproject_world
;

SELECT c.eu, COUNT(*) AS total_cruelty_free_products
FROM beautyproject_world bw
JOIN country c ON bw.country_id = c.country_id
WHERE bw.cruelty_free = 'true'
GROUP BY c. eu
;