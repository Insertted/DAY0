SELECT 
    name,
    rating
FROM pizzeria
WHERE id NOT IN (
    SELECT DISTINCT pizzeria_id
    FROM person_visits
    WHERE pizzeria_id IS NOT NULL
)
ORDER BY name;