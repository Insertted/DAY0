SELECT 
    COALESCE(p.name, '-') AS person_name,
    pv.visit_date,
    COALESCE(pz.name, '-') AS pizzeria_name
FROM person p
CROSS JOIN pizzeria pz
FULL JOIN person_visits pv 
    ON pv.person_id = p.id 
    AND pv.pizzeria_id = pz.id
    AND pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
ORDER BY person_name, pizzeria_name, visit_date;