SELECT DISTINCT p.name
FROM person_order po
JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
WHERE p.gender = 'male'
  AND p.address IN ('Moscow', 'Samara')
  AND m.pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY p.name DESC;