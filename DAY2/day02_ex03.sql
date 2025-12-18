WITH all_pizzerias AS (
    SELECT id, name, rating FROM pizzeria
),
visited AS (
    SELECT DISTINCT pizzeria_id FROM person_visits
)
SELECT 
    ap.name,
    ap.rating
FROM all_pizzerias ap
LEFT JOIN visited v ON v.pizzeria_id = ap.id
WHERE v.pizzeria_id IS NULL
ORDER BY ap.name;