SELECT c.name AS cheap_pizzeria
FROM person_visits 
JOIN pizzeria c ON c.id = pizzeria_id
JOIN menu m ON m.pizzeria_id = c.id
WHERE (person_id = '9') AND (price <= '800') AND (visit_date = '2022-01-08');