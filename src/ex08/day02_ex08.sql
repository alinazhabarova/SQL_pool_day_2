SELECT DISTINCT name
FROM person
CROSS JOIN person_order 
CROSS JOIN menu 
WHERE ((pizza_name = 'pepperoni pizza') OR (pizza_name = 'mushroom pizza')) AND 
((address = 'Moscow') OR (address = 'Samara')) AND 
(gender = 'male') 
ORDER BY name DESC;