SELECT m.pizza_name, c.name AS pizzeria_name
FROM person_order 
JOIN menu m ON menu_id = m.id
JOIN pizzeria c ON m.pizzeria_id = c.id
WHERE (person_id = '1') OR (person_id = '4')
ORDER BY pizza_name, pizzeria_name;