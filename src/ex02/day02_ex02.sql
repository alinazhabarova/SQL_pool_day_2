SELECT
	 (CASE 
	 	WHEN a.name IS NULL THEN '-'
	 	ELSE a.name
	 END) AS person_name,
	visit_date,
	(CASE
		WHEN p.name IS NULL THEN '-'
		ELSE p.name
	END) AS pizzeria_name 
FROM (SELECT * FROM person_visits c WHERE visit_date BETWEEN ('2022-01-01') AND ('2022-01-03')) AS visit_date
FULL JOIN person a 
ON a.id = person_id
FULL JOIN pizzeria p 
ON p.id = pizzeria_id
ORDER BY person_name, visit_date, pizzeria_name;
