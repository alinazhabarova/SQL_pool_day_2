WITH cheese AS (
    SELECT DISTINCT name
    FROM person
    JOIN person_order ON person_order.person_id = person.id
    JOIN menu m ON person_order.menu_id = m.id
    WHERE gender = 'female' AND pizza_name = 'cheese pizza'
),
pepperoni AS (
    SELECT DISTINCT name
    FROM person
    JOIN person_order ON person_order.person_id = person.id
    JOIN menu m ON person_order.menu_id = m.id
    WHERE gender = 'female' AND pizza_name = 'pepperoni pizza'
)

SELECT c.name
FROM cheese c
JOIN pepperoni p ON c.name = p.name;
