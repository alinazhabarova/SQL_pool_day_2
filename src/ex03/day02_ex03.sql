WITH missing (missing_date) AS 
(SELECT DATE(generate_series('2022-01-01', '2022-01-10', interval '1 day')))
SELECT missing_date FROM missing
LEFT JOIN 
(SELECT visit_date FROM person_visits
 WHERE  visit_date BETWEEN ('2022-01-01') AND ('2022-02-10') AND
 ( (person_id = '1') OR (person_id = '2') ) )
 AS visit_day
 ON missing_date = visit_date
WHERE visit_date IS NULL;
