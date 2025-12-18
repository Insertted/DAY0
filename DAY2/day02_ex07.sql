SELECT pz.name AS pizzeria_name
FROM pizzeria pz
WHERE pz.id IN (
    SELECT pv.pizzeria_id
    FROM person_visits pv
    JOIN person p ON p.id = pv.person_id
    WHERE p.name = 'Dmitriy'
      AND pv.visit_date = '2022-01-08'
)
AND EXISTS (
    SELECT 1
    FROM menu m
    WHERE m.pizzeria_id = pz.id
      AND m.price < 800
);