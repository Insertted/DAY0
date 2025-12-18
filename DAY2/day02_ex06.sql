SELECT 
    m.pizza_name,
    pz.name AS pizzeria_name
FROM menu m
JOIN pizzeria pz ON pz.id = m.pizzeria_id
WHERE m.id IN (
    SELECT menu_id
    FROM person_order
    WHERE person_id IN (
        SELECT id
        FROM person
        WHERE name IN ('Denis', 'Anna')
    )
)
ORDER BY pizza_name, pizzeria_name;