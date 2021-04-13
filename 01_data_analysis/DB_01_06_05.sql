SELECT 
	i.id, i.name, i.gender
FROM item AS i LEFT OUTER JOIN review AS r
ON i.id = r.item_id
GROUP BY i.id
HAVING COUNT(*) >= 3;

# solve with subQuery

SELECT * FROM item
WHERE id IN
(
SELECT item_id
FROM review
GROUP BY item_id HAVING COUNT(*) >= 3
);