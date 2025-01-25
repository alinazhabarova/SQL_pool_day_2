SELECT name, rating
FROM pizzeria p LEFT OUTER JOIN person_visits a ON p.id = a.pizzeria_id
WHERE a.pizzeria_id IS NULL;